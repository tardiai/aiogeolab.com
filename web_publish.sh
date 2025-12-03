# ============================================
# web_publish.sh - 一键启动脚本（Mac）
# ============================================
#!/bin/bash

echo "commit and push to github for deployment 2 netlify "
echo "==================================================="
echo ""



 cd /Users/wyh/baidusync/OneAILtd/aiogeolab.com
 
 echo "git commit"
git add .
git commit -m "article publish" 
 echo "push to github"
git push 
 

