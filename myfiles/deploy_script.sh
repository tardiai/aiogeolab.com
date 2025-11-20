#!/bin/bash

# GEO博客一键部署脚本
# 使用方法: ./deploy.sh "提交信息"

set -e

# 颜色输出
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

COMMIT_MSG="${1:-更新文章}"

echo -e "${BLUE}🚀 开始部署流程...${NC}"
echo ""

# 检查是否有未提交的更改
if [[ -n $(git status -s) ]]; then
    echo -e "${YELLOW}📋 检测到以下更改:${NC}"
    git status -s
    echo ""
    
    # 运行本地构建测试
    echo -e "${BLUE}🔨 运行本地构建测试...${NC}"
    if hugo --gc --minify > /dev/null 2>&1; then
        echo -e "${GREEN}✅ 本地构建成功${NC}"
    else
        echo -e "${RED}❌ 本地构建失败，请检查错误${NC}"
        hugo --gc --minify
        exit 1
    fi
    
    echo ""
    read -p "是否继续部署? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${YELLOW}⏸️  部署已取消${NC}"
        exit 0
    fi
    
    # 添加所有更改
    echo -e "${BLUE}📦 添加文件到 Git...${NC}"
    git add .
    
    # 提交
    echo -e "${BLUE}💾 提交更改...${NC}"
    git commit -m "$COMMIT_MSG"
    
    # 推送到 GitHub
    echo -e "${BLUE}☁️  推送到 GitHub...${NC}"
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    git push origin $BRANCH
    
    echo ""
    echo -e "${GREEN}✅ 部署完成！${NC}"
    echo ""
    echo -e "${YELLOW}📊 Netlify 构建状态:${NC}"
    echo "   访问 https://app.netlify.com 查看实时构建进度"
    echo ""
    echo -e "${YELLOW}⏱️  预计等待时间: 30-60秒${NC}"
    echo -e "${YELLOW}🌐 网站地址: https://aiogeolab.com${NC}"
    
    # 显示最近提交
    echo ""
    echo -e "${BLUE}📝 最近 5 次提交:${NC}"
    git log --oneline -5
    
else
    echo -e "${YELLOW}ℹ️  没有检测到更改，无需部署${NC}"
fi

echo ""
echo -e "${GREEN}🎉 完成！${NC}"