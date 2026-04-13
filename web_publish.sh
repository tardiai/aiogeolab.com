# ============================================
# web_publish.sh - 一键启动脚本（Mac）
# ============================================
#!/bin/bash

echo "commit and push to github for deployment 2 netlify "
echo "==================================================="
echo ""



 c d/Users/wyh/baidusync/OneAILtd/aiogeolab.com

export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897
 
 echo "git commit"
git add .
git commit -m "article publish" 
 echo "push to github"
git push 
 

