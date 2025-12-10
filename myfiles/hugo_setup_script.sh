#!/bin/bash

# GEO博客 Hugo + Netlify 一键部署脚本
# 使用方法: chmod +x setup.sh && ./setup.sh

echo "🚀 开始创建 GEO 博客..."

# 检查 Hugo 是否已安装
if ! command -v hugo &> /dev/null; then
    echo "⚠️  Hugo 未安装，正在安装..."
    
    # macOS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install hugo
    # Linux
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo snap install hugo
    # Windows (需要先安装 Chocolatey)
    elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
        choco install hugo-extended -y
    fi
fi

# 创建项目
SITE_NAME="aiogeolab.com"
echo "📁 创建项目: $SITE_NAME"
hugo new site $SITE_NAME
cd $SITE_NAME

# 初始化 Git
git init

# 添加主题 (PaperMod - SEO 优化极好)
echo "🎨 安装 PaperMod 主题..."
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive

# 创建配置文件
echo "⚙️  生成配置文件..."
cat > hugo.toml << 'EOF'
baseURL = "https://aiogeolab.com/"
languageCode = "zh-CN"
title = "GEO优化实验室"
theme = "PaperMod"
copyright = "© 2025 GEO优化实验室"

# 启用 Emoji 和 Git 信息
enableEmoji = true
enableGitInfo = true
enableRobotsTXT = true

# 分页
paginate = 10

# 代码高亮
[markup]
  [markup.highlight]
    style = "monokai"
    lineNos = true

[params]
  env = "production"
  description = "专注生成式引擎优化(GEO)技术研究,探索 ChatGPT、Perplexity、Claude 等 AI 搜索引擎的优化策略"
  author = "GEO Lab"
  
  # 显示阅读时间
  ShowReadingTime = true
  ShowShareButtons = true
  ShowPostNavLinks = true
  ShowBreadCrumbs = true
  ShowCodeCopyButtons = true
  ShowWordCount = true
  
  # SEO
  images = ["/images/og-default.jpg"]
  
  # 首页信息
  [params.homeInfoParams]
    Title = "欢迎来到 GEO 优化实验室 👋"
    Content = "探索 AI 时代的内容优化策略，让你的内容被 ChatGPT、Perplexity 等生成式 AI 发现和引用"
  
  # 社交链接
  [[params.socialIcons]]
    name = "twitter"
    url = "https://twitter.com/yourusername"
  
  [[params.socialIcons]]
    name = "github"
    url = "https://github.com/yourusername"
  
  [[params.socialIcons]]
    name = "rss"
    url = "/index.xml"

# 菜单
[menu]
  [[menu.main]]
    identifier = "posts"
    name = "文章"
    url = "/posts/"
    weight = 10
  
  [[menu.main]]
    identifier = "tags"
    name = "标签"
    url = "/tags/"
    weight = 20
  
  [[menu.main]]
    identifier = "categories"
    name = "分类"
    url = "/categories/"
    weight = 30
  
  [[menu.main]]
    identifier = "archives"
    name = "归档"
    url = "/archives/"
    weight = 40
  
  [[menu.main]]
    identifier = "search"
    name = "搜索"
    url = "/search/"
    weight = 50

# 输出格式
[outputs]
  home = ["HTML", "RSS", "JSON"]

# Sitemap 配置
[sitemap]
  changefreq = "weekly"
  filename = "sitemap.xml"
  priority = 0.5

# 隐私设置
[privacy]
  [privacy.googleAnalytics]
    anonymizeIP = true
    respectDoNotTrack = true
EOF

# 创建 Netlify 配置
echo "☁️  创建 Netlify 配置..."
cat > netlify.toml << 'EOF'
[build]
  command = "hugo --gc --minify"
  publish = "public"

[build.environment]
  HUGO_VERSION = "0.139.0"
  HUGO_ENV = "production"
  HUGO_ENABLEGITINFO = "true"

# 301 重定向示例
[[redirects]]
  from = "/old-url/*"
  to = "/posts/:splat"
  status = 301
  force = true

# 404 页面
[[redirects]]
  from = "/*"
  to = "/404.html"
  status = 404

# HTTP 头设置
[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"

[[headers]]
  for = "/static/*"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

# 图片优化
[build.processing]
  skip_processing = false

[build.processing.images]
  compress = true
EOF

# 创建第一篇示例文章
echo "📝 创建示例文章..."
mkdir -p content/posts
cat > content/posts/welcome-to-geo-lab.md << 'EOF'
---
title: "欢迎来到 GEO 优化实验室"
date: 2025-01-15T10:00:00+08:00
draft: false
description: "介绍什么是生成式引擎优化(GEO)，以及为什么它在 AI 时代如此重要"
tags: ["GEO", "介绍", "AI搜索"]
categories: ["基础知识"]
author: "GEO Lab"

cover:
  image: "/images/welcome.jpg"
  alt: "GEO优化实验室"
  caption: "探索 AI 时代的内容优化"
  relative: false

ShowToc: true
TocOpen: true
---

## 什么是 GEO？

**GEO (Generative Engine Optimization)** - 生成式引擎优化，是针对 ChatGPT、Perplexity、Claude、Gemini 等 AI 搜索引擎的内容优化策略。

与传统 SEO 不同，GEO 关注：
- 如何让 AI 理解和引用你的内容
- 如何在 AI 生成的回答中获得可见性
- 如何优化结构化数据以便 AI 提取

## 为什么需要 GEO？

2025年，超过 30% 的搜索已经转向 AI 助手：
- ChatGPT 搜索功能上线
- Perplexity 用户突破 1000万
- Google Gemini 集成到搜索结果

如果你的内容无法被 AI 理解和引用，你将失去大量潜在读者。

## 本站内容方向

我们将深入探讨：
1. **AI 搜索引擎工作原理** - 理解检索增强生成(RAG)技术
2. **内容结构优化** - 让 AI 更容易提取关键信息
3. **引用率提升策略** - 增加被 AI 引用的概率
4. **案例分析** - 真实的 GEO 优化案例

## 开始探索

点击顶部菜单的「文章」开始你的 GEO 学习之旅！

---

💡 **提示**: 订阅我们的 RSS，第一时间获取最新 GEO 研究成果。
EOF

# 创建搜索页面
echo "🔍 创建搜索页面..."
mkdir -p content/search
cat > content/search/_index.md << 'EOF'
---
title: "搜索"
layout: "search"
---
EOF

# 创建归档页面
mkdir -p content/archives
cat > content/archives/_index.md << 'EOF'
---
title: "文章归档"
layout: "archives"
---
EOF

# 创建 .gitignore
cat > .gitignore << 'EOF'
# Hugo
public/
resources/
.hugo_build.lock

# OS
.DS_Store
Thumbs.db

# Editor
.vscode/
.idea/
*.swp
*.swo
*~
EOF

# 创建 README
cat > README.md << 'EOF'
# GEO 优化实验室

专注生成式引擎优化(GEO)技术研究的博客网站。

## 本地开发

```bash
# 安装依赖（首次）
git submodule update --init --recursive

# 启动开发服务器
hugo server -D

# 构建生产版本
hugo --gc --minify
```

## 创建新文章

```bash
hugo new posts/your-article-title.md
```

## 部署

推送到 GitHub 后，Netlify 将自动构建和部署。

## 目录结构

```
.
├── content/          # Markdown 文章
│   ├── posts/       # 博客文章
│   └── search/      # 搜索页面
├── static/          # 静态资源（图片、CSS、JS）
├── themes/          # 主题文件
├── hugo.toml        # Hugo 配置
└── netlify.toml     # Netlify 配置
```

## 自定义配置

编辑 `hugo.toml` 修改网站标题、描述、社交链接等。
EOF

# 创建静态资源目录
mkdir -p static/images
mkdir -p static/css
mkdir -p static/js

# 提交到 Git
echo "💾 初始化 Git 仓库..."
git add .
git commit -m "Initial commit: Hugo + PaperMod theme setup"

echo ""
echo "✅ 项目创建完成！"
echo ""
echo "📋 下一步操作："
echo "1. 本地预览: cd $SITE_NAME && hugo server -D"
echo "2. 访问: http://localhost:1313"
echo "3. 创建 GitHub 仓库并推送:"
echo "   git remote add origin https://github.com/yourusername/aiogeo-blog.git"
echo "   git push -u origin main"
echo "4. 在 Netlify 导入该仓库即可自动部署"
echo ""
echo "🎉 开始你的 GEO 优化之旅吧！"