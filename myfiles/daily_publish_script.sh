#!/bin/bash

# GEO博客日常发布脚本
# 使用方法: ./publish.sh "文章标题" [category]

set -e

# 颜色输出
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 获取参数
TITLE="$1"
CATEGORY="${2:-技术研究}"

if [ -z "$TITLE" ]; then
    echo -e "${YELLOW}使用方法: ./publish.sh \"文章标题\" [分类]${NC}"
    echo "示例: ./publish.sh \"ChatGPT搜索优化指南\" \"实战案例\""
    exit 1
fi

# 生成文件名（转换为 URL 友好格式）
FILENAME=$(echo "$TITLE" | iconv -t ascii//TRANSLIT | sed -E 's/[^a-zA-Z0-9]+/-/g' | tr '[:upper:]' '[:lower:]' | sed 's/^-//;s/-$//')
DATE=$(date +%Y-%m-%d)
FILEPATH="content/posts/${DATE}-${FILENAME}.md"

# 检查文件是否已存在
if [ -f "$FILEPATH" ]; then
    echo -e "${YELLOW}⚠️  文件已存在: $FILEPATH${NC}"
    read -p "是否覆盖? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# 创建文章模板
echo -e "${BLUE}📝 创建文章: $TITLE${NC}"
cat > "$FILEPATH" << EOF
---
title: "$TITLE"
date: $(date +%Y-%m-%dT%H:%M:%S+08:00)
draft: false
description: "在此填写文章简介（150-160字符最佳，用于SEO）"
tags: ["标签1", "标签2", "标签3"]
categories: ["$CATEGORY"]
author: "GEO Lab"

# 封面图片（可选）
cover:
  image: "/images/${DATE}-${FILENAME}.jpg"
  alt: "$TITLE"
  caption: "图片说明"
  relative: false

# 文章设置
ShowToc: true
TocOpen: true
weight: 1
---

## 引言

在此开始你的文章内容...

## 第一部分

### 小节标题

内容...

## 第二部分

内容...

## 总结

总结要点...

---

**相关阅读:**
- [相关文章标题](/posts/related-article/)

**参考资料:**
1. [资料来源](https://example.com)
EOF

echo -e "${GREEN}✅ 文章创建成功: $FILEPATH${NC}"

# 在默认编辑器中打开
if [ -n "$EDITOR" ]; then
    echo -e "${BLUE}📖 正在打开编辑器...${NC}"
    $EDITOR "$FILEPATH"
elif command -v code &> /dev/null; then
    code "$FILEPATH"
elif command -v vim &> /dev/null; then
    vim "$FILEPATH"
else
    echo -e "${YELLOW}请手动编辑: $FILEPATH${NC}"
fi

echo ""
echo -e "${YELLOW}编辑完成后，执行以下命令发布:${NC}"
echo -e "${BLUE}  ./deploy.sh \"$TITLE\"${NC}"
echo ""
echo -e "${YELLOW}或者预览草稿:${NC}"
echo -e "${BLUE}  hugo server -D${NC}"