#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo "======================================"
echo "  M4A + PNG → MP4 + 压缩音频"
echo "======================================"
echo ""

converted=0
skipped=0
failed=0

cd /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio

for audio in *.m4a; do
    # 跳过已经压缩过的文件
    if [[ "$audio" == *"-compressed.m4a" ]]; then
        continue
    fi
    
    if [ ! -f "$audio" ]; then
        echo -e "${YELLOW}⚠️  当前目录没有 m4a 文件${NC}"
        exit 1
    fi
    
    filename="${audio%.m4a}"
    #png_file="${filename}.png"
    png_file="/Users/wyh/baidusync/OneAILtd/aiogeolab.com/assets/images/cover/AioGeoLab-cover-${filename}.png"
    mp4_file="${filename}.mp4"
    compressed_audio="${filename}-compressed.m4a"
    
    if [ ! -f "$png_file" ]; then
        echo -e "${YELLOW}⚠️  跳过: ${filename} (未找到 ${png_file})${NC}"
        ((skipped++))
        continue
    fi
    
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${GREEN}📁 处理: ${filename}${NC}"
    echo ""
    
    # 1. 生成压缩音频
    if [ ! -f "$compressed_audio" ]; then
        echo -e "${GREEN}🎵 压缩音频中...${NC}"
        if ffmpeg -hide_banner -loglevel error \
            -i "$audio" \
            -c:a aac \
            -b:a 128k \
            -movflags +faststart \
            "$compressed_audio"; then
            
            audio_size=$(du -h "$audio" | cut -f1)
            compressed_size=$(du -h "$compressed_audio" | cut -f1)
            echo -e "${GREEN}   ✅ 音频压缩完成: ${audio_size} → ${compressed_size}${NC}"
        else
            echo -e "${RED}   ❌ 音频压缩失败${NC}"
        fi
    else
        echo -e "${YELLOW}   ⏭️  压缩音频已存在，跳过${NC}"
    fi
    
    echo ""
    
    # 2. 生成视频
    if [ ! -f "$mp4_file" ]; then
        echo -e "${GREEN}🎬 生成视频中...${NC}"
        if ffmpeg -hide_banner -loglevel error \
            -loop 1 -framerate 1 -i "$png_file" \
            -i "$audio" \
            -c:v h264_videotoolbox \
            -b:v 100k \
            -profile:v baseline \
            -c:a aac \
            -b:a 128k \
            -movflags +faststart \
            -pix_fmt yuv420p \
            -shortest \
            "$mp4_file"; then
            
            video_size=$(du -h "$mp4_file" | cut -f1)
            echo -e "${GREEN}   ✅ 视频生成完成: ${video_size}${NC}"
            ((converted++))
        else
            echo -e "${RED}   ❌ 视频生成失败${NC}"
            ((failed++))
        fi
    else
        echo -e "${YELLOW}   ⏭️  视频已存在，跳过${NC}"
        ((skipped++))
    fi
    
    echo ""
done

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo "======================================"
echo -e "${GREEN}✅ 成功: ${converted}${NC}"
echo -e "${YELLOW}⚠️  跳过: ${skipped}${NC}"
echo -e "${RED}❌ 失败: ${failed}${NC}"
echo "======================================"