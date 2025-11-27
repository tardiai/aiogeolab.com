#!/bin/bash

# 文章封面图生成脚本,同步更新draft状态，如果时间到了，draft状态改为false
# 使用方法: ./coverdraft.sh

cd /Users/wyh/baidusync/OneAILtd/aiogeolab.com
python /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/generate_cover/generate_cover.py --batch