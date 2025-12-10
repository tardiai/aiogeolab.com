#!/usr/bin/env python3
"""
GEO博客批量导入Markdown文章脚本
使用方法: python3 batch_import.py /path/to/markdown/files
"""

import os
import sys
import re
from datetime import datetime
from pathlib import Path
import shutil

# 颜色输出
class Colors:
    GREEN = '\033[0;32m'
    BLUE = '\033[0;34m'
    YELLOW = '\033[1;33m'
    RED = '\033[0;31m'
    NC = '\033[0m'

def print_color(text, color):
    print(f"{color}{text}{Colors.NC}")

def extract_title(content):
    """从Markdown内容中提取标题"""
    # 先检查是否有 YAML front matter 中的 title
    yaml_match = re.search(r'^---\s*\ntitle:\s*["\']?(.+?)["\']?\s*\n', content, re.MULTILINE)
    if yaml_match:
        return yaml_match.group(1)
    
    # 否则查找第一个 # 标题
    h1_match = re.search(r'^#\s+(.+)$', content, re.MULTILINE)
    if h1_match:
        return h1_match.group(1)
    
    return "未命名文章"

def has_front_matter(content):
    """检查文章是否已有 YAML front matter"""
    return content.strip().startswith('---')

def generate_slug(title):
    """生成 URL 友好的文件名"""
    # 移除特殊字符，转小写
    slug = re.sub(r'[^\w\s-]', '', title.lower())
    slug = re.sub(r'[-\s]+', '-', slug)
    return slug.strip('-')

def add_front_matter(content, title, category="技术研究"):
    """为没有 front matter 的文章添加"""
    date = datetime.now().strftime('%Y-%m-%dT%H:%M:%S+08:00')
    
    front_matter = f"""---
title: "{title}"
date: {date}
draft: false
description: "请填写文章简介（150-160字符最佳，用于SEO）"
tags: ["GEO", "优化"]
categories: ["{category}"]
author: "GEO Lab"

ShowToc: true
TocOpen: true
---

"""
    return front_matter + content

def process_file(file_path, output_dir, force_update=False):
    """处理单个Markdown文件"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # 提取标题
        title = extract_title(content)
        
        # 生成文件名
        date_str = datetime.now().strftime('%Y-%m-%d')
        slug = generate_slug(title)
        output_filename = f"{date_str}-{slug}.md"
        output_path = output_dir / output_filename
        
        # 检查文件是否已存在
        if output_path.exists() and not force_update:
            print_color(f"⏭️  跳过（已存在）: {output_filename}", Colors.YELLOW)
            return False
        
        # 添加 front matter（如果没有）
        if not has_front_matter(content):
            content = add_front_matter(content, title)
            print_color(f"✏️  添加 front matter: {title}", Colors.BLUE)
        
        # 写入文件
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print_color(f"✅ 导入成功: {output_filename}", Colors.GREEN)
        return True
        
    except Exception as e:
        print_color(f"❌ 处理失败 {file_path}: {str(e)}", Colors.RED)
        return False

def main():
    if len(sys.argv) < 2:
        print_color("使用方法: python3 batch_import.py <markdown文件目录>", Colors.YELLOW)
        print("示例: python3 batch_import.py ~/Documents/articles")
        sys.exit(1)
    
    source_dir = Path(sys.argv[1])
    
    if not source_dir.exists() or not source_dir.is_dir():
        print_color(f"❌ 目录不存在: {source_dir}", Colors.RED)
        sys.exit(1)
    
    # 获取输出目录
    output_dir = Path("content/posts")
    if not output_dir.exists():
        output_dir.mkdir(parents=True)
        print_color(f"📁 创建输出目录: {output_dir}", Colors.BLUE)
    
    # 查找所有 Markdown 文件
    md_files = list(source_dir.glob("**/*.md")) + list(source_dir.glob("**/*.markdown"))
    
    if not md_files:
        print_color(f"⚠️  在 {source_dir} 中没有找到 Markdown 文件", Colors.YELLOW)
        sys.exit(0)
    
    print_color(f"\n🔍 找到 {len(md_files)} 个 Markdown 文件", Colors.BLUE)
    print()
    
    # 询问是否覆盖已存在的文件
    force_update = False
    if any((output_dir / f"{datetime.now().strftime('%Y-%m-%d')}-{generate_slug(extract_title(open(f, encoding='utf-8').read()))}.md").exists() for f in md_files[:5]):
        response = input("检测到已存在的文件，是否覆盖? (y/n): ").lower()
        force_update = response == 'y'
        print()
    
    # 处理所有文件
    success_count = 0
    for file_path in md_files:
        if process_file(file_path, output_dir, force_update):
            success_count += 1
    
    # 总结
    print()
    print_color("=" * 50, Colors.BLUE)
    print_color(f"✅ 导入完成: {success_count}/{len(md_files)} 个文件", Colors.GREEN)
    print_color(f"📁 输出目录: {output_dir.absolute()}", Colors.BLUE)
    print()
    print_color("下一步操作:", Colors.YELLOW)
    print("  1. 检查导入的文章: ls -la content/posts/")
    print("  2. 本地预览: hugo server -D")
    print("  3. 部署发布: ./deploy.sh \"批量导入文章\"")
    print_color("=" * 50, Colors.BLUE)

if __name__ == "__main__":
    main()