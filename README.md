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