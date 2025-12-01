#!/bin/bash

# Build all slides in the slides directory
# This script automatically scans all .md files in slides/ directory

# 确保脚本有执行权限
chmod +x apply.sh update.sh 2>/dev/null || true

echo "Starting batch build for all slides..."
echo "Scanning slides directory..."

# 自动扫描 slides 目录下的所有 .md 文件
# 排除 slides 根目录的文件，只构建子目录中的文件
SLIDE_FILES=$(find slides -mindepth 2 -name "*.md" -type f | sed 's|^slides/||' | sed 's|\.md$||')

if [ -z "$SLIDE_FILES" ]; then
  echo "Warning: No .md files found in slides/ directory"
else
  echo "Found slides:"
  echo "$SLIDE_FILES" | while read -r slide; do
    echo "  - $slide"
  done
  echo ""
  
  # 构建每个 slide
  echo "$SLIDE_FILES" | while read -r slide; do
    echo "Building: $slide"
    ./apply.sh "$slide"
  done
fi

# Build main index page
echo ""
echo "Building main index page..."
./update.sh

# Move all built files to final dist directory
echo ""
echo "Moving files to dist..."
mkdir -p dist/
if [ -d "dist_tmp" ]; then
  mv dist_tmp/* dist/ 2>/dev/null || true
  rm -rf dist_tmp
fi

echo ""
echo "✓ Build completed! All slides are in dist/"
echo ""
echo "Generated structure:"
tree -L 3 dist/ 2>/dev/null || find dist/ -type f -name "index.html" | head -20
