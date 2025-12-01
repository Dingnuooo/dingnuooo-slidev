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
# 删除所有匹配字母分类目录的文件夹（这些应该由 apply.sh 单独构建）
if [ -d "dist" ]; then
  for dir in dist/*/
  do
    if [ -d "$dir" ]; then
      dirname=$(basename "$dir")
      # 只删除符合分类命名规则的目录（纯字母、下划线、连字符）
      if [[ "$dirname" =~ ^[a-zA-Z_-]+$ ]]; then
        rm -rf "$dir"
        echo "Cleaned up: $dir"
      fi
    fi
  done
fi

echo "Main index page built successfully!"
