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
# 如果 dist 中有 cv/ 或 nlp/ 目录，说明是之前构建留下的，需要删除
for dir in dist/cv dist/nlp dist/slides
do
  if [ -d "$dir" ]; then
    rm -rf "$dir"
    echo "Cleaned up: $dir"
  fi
done

echo "Main index page built successfully!"
