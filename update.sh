#!/bin/bash

# Build the main index page (init.md)

echo "Building main index page..."

# 使用 init.md 作为主页
if [ -f "./init.md" ]; then
  echo "Using init.md as main page"
  cp ./init.md ./slides.md
elif [ -f "./slides.md" ]; then
  echo "Using existing slides.md as main page"
else
  echo "Warning: Neither init.md nor slides.md found in root directory"
  exit 1
fi

# 构建主页（不使用 --base 参数，直接输出到根路径）
npx slidev build

# 清理可能存在的子目录（避免污染主页输出）

# 只删除 dist 目录下 slides 目录中已存在的分类名对应的目录
for category in $(ls slides); do
  # 只处理目录（排除 md 文件）
  if [ -d "slides/$category" ]; then
    target_dir="dist/$category"
    if [ -d "$target_dir" ]; then
      rm -rf "$target_dir"
      echo "Cleaned up: $target_dir"
    fi
  fi
done

echo "Main index page built successfully!"
