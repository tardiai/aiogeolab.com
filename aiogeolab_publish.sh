# ============================================
# aiogeolab_publish.sh - 一键启动脚本（Mac）
# ============================================
#!/bin/bash

echo "aiogeolab article draft update & sync to posts of web & create cover"
echo "====================================================================="
echo ""



 cd /Users/wyh/baidusync/OneAILtd/aiogeolab.com
 
 echo "frontmatter checker run"
 python /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/frontmatter_checker/md_frontmatter_checker.py /Users/wyh/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/tardyai/20\ -\ Projects/01\ -\ AioGeoLab/05\ -\ Aiogeolab.com --days 3 
 
 echo "articles sync to posts"
 /usr/local/bin/FreeFileSync /Users/wyh/Documents/Obsidian2aiogeolab.com.ffs_batch
 
 
 echo "create cover"
 /Users/wyh/baidusync/OneAILtd/aiogeolab.com/draftcover.sh 

 echo "create audio cover"
 /Users/wyh/baidusync/OneAILtd/aiogeolab.com/audiocover.sh

