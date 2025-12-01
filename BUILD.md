# Multi-Slide Build System

这个项目支持将多个 markdown 文件构建为独立的 slide，每个 slide 拥有独立的 URL。

## 项目结构

```
slides/
  cv/
    chapter1.md
    chapter2.md
    chapter3.md
  nlp/
    chapter1.md
    chapter2.md
slides.md          # 主页
```

## 构建后的 URL 结构

- `https://your-site.com/` → 主页 (slides.md)
- `https://your-site.com/cv/chapter1` → cv/chapter1.md 的 slide
- `https://your-site.com/cv/chapter2` → cv/chapter2.md 的 slide
- `https://your-site.com/nlp/chapter1` → nlp/chapter1.md 的 slide

## 使用方法

### 构建所有 slides

```bash
npm run build
```

这会构建所有 slides 到 `dist/` 目录：

```
dist/
  index.html              # 主页
  cv/
    chapter1/
      index.html          # cv chapter1 slide
    chapter2/
      index.html
    chapter3/
      index.html
  nlp/
    chapter1/
      index.html
    chapter2/
      index.html
```

### 构建单个 slide

```bash
npm run build:single cv/chapter1
```

### 本地开发

```bash
npm run dev
```

这会启动 slidev 开发服务器，编辑 `slides.md` 或任何 slide 文件都会实时更新。

## 工作原理

1. **apply.sh**: 构建单个 slide
   - 复制指定的 md 文件为临时 slides.md
   - 使用 `slidev build --base /<path>/` 构建
   - 输出到 `dist_tmp/<path>/`

2. **apply-all.sh**: 批量构建所有 slides
   - 调用 apply.sh 构建每个 slide
   - 调用 update.sh 构建主页
   - 合并所有输出到 `dist/`

3. **update.sh**: 构建主页
   - 使用根目录的 slides.md 构建主页

## 添加新的 slide

1. 在 `slides/` 下创建新的 md 文件，例如 `slides/cv/chapter4.md`
2. 在 `apply-all.sh` 中添加一行：
   ```bash
   ./apply.sh cv/chapter4
   ```
3. 运行 `npm run build`

## 部署

项目已配置好 Vercel 和 Netlify 的路由规则，直接推送到仓库即可自动部署。
