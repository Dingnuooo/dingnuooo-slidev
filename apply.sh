#!/bin/bash

# Usage: ./apply.sh cv/chapter1
# This will build the slide from slides/cv/chapter1.md and output to dist/cv/chapter1/

# 获取第一个参数作为路径 (例如: cv/chapter1)
SLIDE_PATH=$1

# 检查参数是否为空
if [ -z "$SLIDE_PATH" ]; then
  echo "Error: Slide path parameter is required"
  echo "Usage: ./apply.sh <path> (e.g., ./apply.sh cv/chapter1)"
  exit 1
fi

# 检查源文件是否存在
SOURCE_FILE="./slides/$SLIDE_PATH.md"
if [ ! -f "$SOURCE_FILE" ]; then
  echo "Error: Source file $SOURCE_FILE does not exist"
  exit 1
fi

echo "Building slide: $SLIDE_PATH"

# 复制 md 文件到根目录作为临时的 slides.md
cp "$SOURCE_FILE" ./slides.md

# 运行 slidev build 命令，设置 base 路径
npx slidev build --base /$SLIDE_PATH/

# 创建目标目录
TARGET_DIR="./dist_tmp/$SLIDE_PATH"
mkdir -p "$TARGET_DIR"

# 复制 dist 目录内容到目标目录
cp -r dist/* "$TARGET_DIR/"

echo "Build completed: $SLIDE_PATH -> $TARGET_DIR"

# 清理临时文件
rm -rf dist
