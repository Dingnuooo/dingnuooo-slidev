---
theme: academic
layout: cover
class: text-center
highlighter: shiki
lineNumbers: false
info: |
  ## AI 辅助学术工作流
  Learning, Production, Ideation
drawings:
  presenterOnly: true
transition: fade-out
title: CV presentation
mdc: true
fonts:
  sans: 'Maple Mono, Noto Sans SC'
---
 
# 大模型赋能学习 个人实践 {.font-bold.text-sky}
### CV presentation - Powered by Slidev

<div class="abs-br m-15 flex gap-2">
  <span class="text-base"></span>
</div>


---
layout: two-cols
class: text-left
---

# 工具栈

<v-clicks depth="1">

- Website AI
  - Google AI Studio
  - Deepseek
  - ChatGPT
  - Immersive Translate

</v-clicks>

<p></p>

<v-clicks depth="2">

- AI Development
  - VSCode + GitHub Copilot
  - Warp Terminal command

</v-clicks>

::right::

<div v-click class="flex items-center justify-center h-full p-4 -ml-35">
  <img 
    src="/color.png" 
    class="rounded-xl shadow-lg object-contain w-240 h-auto" 
  />                                                              
</div>


---
layout: default
---

# 三个场景

AI 的参与度递减

<div class="grid grid-cols-3 gap-4 mt-10">
  <div v-click="1" class="bg-blue-50 dark:bg-blue-900/20 p-4 rounded-lg border-l-4 border-blue-500">
    <h3 class="text-5xl font-bold text-blue-600 mb-2">1. AI 学习</h3>
    <p class="opacity-80 text-bg">知识获取</p>
    <div class="mt-2 text-xs opacity-60">替代搜索引擎 / 文档</div>
    <div class="mt-6 text-2xl text-right opacity-20">learning</div>
  </div>

  <div v-click="2" class="bg-teal-50 dark:bg-teal-900/20 p-4 rounded-lg border-l-4 border-teal-500">
    <h3 class="text-5xl font-bold text-teal-600 mb-2">2. AI 生产</h3>
    <p class="opacity-80 text-bg">内容创作</p>
    <div class="mt-2 text-xs opacity-60">文字内容 / 代码生成 / 图像生成</div>
    <div class="mt-6 text-2xl text-right opacity-20">generating</div>
  </div>

  <div v-click="3" class="bg-purple-50 dark:bg-purple-900/20 p-4 rounded-lg border-l-4 border-purple-500">
    <h3 class="text-5xl font-bold text-purple-600 mb-2">3. AI 构思</h3>
    <p class="opacity-80 text-bg">逻辑串联</p>
    <div class="mt-2 text-xs opacity-60">提取线索 / 认知构建</div>
    <div class="mt-6 text-2xl text-right opacity-20">weaving</div>
  </div>
</div>

---
layout: default
---

# 1. AI 学习

<p></p>

### 利用 AI 进行知识检索与理解

<v-clicks>

- 替代 搜索引擎 / 文档 / 论坛
- AI 做题

</v-clicks>

<!-- 布局容器：使用 Grid 分为两列，gap-4 设置间距 -->
<div v-click class="mt-8 grid grid-cols-2 gap-4 items-start">

  <!-- 左侧：代码/对话窗口 -->
  <!-- 注意：样式类移到了这个内部 div 上 -->
  <div class="bg-gray-100 dark:bg-gray-800 p-4 rounded-lg shadow-md text-xs">
    <div class="flex items-center gap-2 mb-2 border-b pb-2">
      <div class="w-3 h-3 rounded-full bg-red-500"></div>
      <div class="w-3 h-3 rounded-full bg-yellow-500"></div>
      <div class="w-3 h-3 rounded-full bg-green-500"></div>
      <span class="text-xs opacity-50 ml-2">Context Window</span>
    </div>
    <div class="font-mono leading-relaxed">
      <span class="text-blue-500">User:</span> 上传附件 [OS.pdf]<br/>
      请基于银行家算法，解释这道应用题的解题步骤。<br/><br/>
      <span class="text-green-600">AI:</span> 好的。核心在于安全性检查。<br/>
      1. 初始化 Available 向量...<br/>
      2. 计算 Need 矩阵...<br/>
      3. 寻找安全序列...
    </div>
  </div>

  <!-- 右侧：图片区域 -->
  <!-- 请将 /your-image.png 替换为你实际的图片路径 (放在 public 文件夹下) -->
  <div class="h-full flex items-center justify-center">
    <img 
      src="/ai_learning.png" 
      class="rounded-lg shadow-md object-cover max-h-60 w-full" 
      alt="AI 交互示意图"
    />
  </div>

</div>


---
layout: default
---

# 2. AI 生产

<div class="text-3xl mb-8">

- AI 文字内容
- AI 代码内容
- AI 图像内容

</div>

---
layout: default
---

# AI 生产：文字内容
### 去 AI 味 + 结构化

<p></p>

<div class="grid grid-cols-2 gap-8">
<div>

<h3 v-click class="text-lg font-bold text-red-500 mb-2">🚫 AI 味</h3>
<v-clicks>

- 大量使用括号解释
- 滥用无序/有序列表
- 莫名其妙的加粗
- 堆砌高级词汇

</v-clicks>

</div>
<div>

<h3 v-click class="text-lg font-bold text-green-500 mb-2">✅ 实践</h3>
<v-clicks>

- 提示词中让大模型写成整段文字，不要使用列表
- 删除所有粗体，重新审视重点并标注
- 翻译任务：先用中英混写，再过一遍AI+人工调整
- 格式转换任务：Markdown 为中心

</v-clicks>

<div v-click class="w-fit mt-8 p-4 border border-gray-200 rounded bg-gray-50 dark:bg-gray-800 text-sm">
  PPT：将讲稿发送给 AI，生成 Slidev 文档
</div>

</div>


</div>



---
layout: default
---

# AI 生产：代码内容

<div class="flex gap-4 text-lg">
  <div class="w-1/1">
    <!-- 修复方案：使用原生 HTML 列表，配合 Tailwind 类模拟 Markdown 样式 -->
    <v-clicks>
      <ul class="list-disc pl-4 space-y-2">
        <li>
          <strong>Vibe Coding</strong>:
          <ul class="list-circle pl-5 mt-1 text-lg opacity-80">
            <li>涉及破坏性变化之前必须物理备份 (不轻信插件的 Undo)</li>
            <li>每次交互最好都备份</li>
          </ul>
        </li>
        <li>
          <strong>上下文投喂</strong>:
          <ul class="list-circle pl-5 mt-1 text-lg opacity-80">
            <li>陌生项目：喂 <code>README.md</code></li>
            <li>无文档项目：喂文档网址</li>
            <li>自定义：给出预期功能的描述</li>
          </ul>
        </li>
        <li>
          <strong>代码审查与 70/30 Law</strong>:
          <ul class="list-circle pl-5 mt-1 text-lg opacity-80">
            <li>AI 完成 70% (界面、流程、类结构)</li>
            <li><strong>人类承担最难的 30%</strong> (逻辑、边界、隐蔽 Bug 等)</li>
            <li>“知道原理的生产”和“无知状态下的生产”</li>
          </ul>
        </li>
      </ul>
    </v-clicks>
  </div>
  
  <div class="w-1/3">
    <div v-click class="bg-red-100 dark:bg-red-900/30 p-4 mt-40 rounded border border-red-400 text-red-700 dark:text-red-300 text-base">
      如果不亲自准备好修改代码库，代码迟早变成<b>无法维护的黑箱</b>。
      <br/><br/>
      看起来能用，但其内部结构经不起推敲。
    </div>
  </div>
</div>

---
layout: default
---

# AI 生产：图像内容

<div class="grid grid-cols-2 gap-4 mt-4">

  <div v-click class="border p-3 rounded hover:shadow-lg transition">
    <div class="font-bold mb-1">代码绘图 (Python/Matplotlib)</div>
    <div class="text-bg opacity-80">
      - 使用模板库 (matplotlib-gallery)<br/>
      - AI 生成基础代码，手动微调 Customization
    </div>
  </div>

  <div v-click class="border p-3 rounded hover:shadow-lg transition">
    <div class="font-bold mb-1">生成式配图</div>
    <div class="text-bg opacity-80">
      - 封面图 / 复杂流程图<br/>
      - 流程: 笔记内容+参考图+几何描述->裁剪<br/>
    </div>
  </div>

  <div v-click class="border p-3 rounded hover:shadow-lg transition">
    <div class="font-bold mb-1">流程框图</div>
    <div class="text-bg opacity-80">
      - 简单: <b>Mermaid</b><br/>
      - 复杂: Draw.io
    </div>
  </div>

  <div v-click class="border p-3 rounded hover:shadow-lg transition">
    <div class="font-bold mb-1">矢量绘图 (SVG/TikZ)</div>
  </div>

</div>

<div v-click class="grid grid-cols-2 gap-8">
  <div class="h-full flex items-center justify-center">
    <img 
      src="/parameter-estimation.png" 
      class="rounded-lg shadow-md object-cover max-h-60 w-full" 
      alt="AI 交互示意图"
    />
  </div>
  <div class="h-full flex items-center justify-center">
    <img 
      src="/flipflop.png" 
      class="rounded-lg shadow-md object-cover max-h-60 w-full" 
      alt="AI 交互示意图"
    />
  </div>
</div>

---
layout: two-cols
layoutClass: gap-1
---

# 3. AI 构思
### 进阶的学习：构建认知线索

<v-clicks>

- 从知识点中提取符合个人认知顺序的线索
- 寻找 A 到 B 的 动机
- 过程:
  1. 追问 AI 直到逻辑足够丝滑
  2. 发散多数知识点，时常回顾这些知识
  3. 人负责画连接线，构建思路
- 判别式 / 生成式的选择

</v-clicks>

::right::

<div v-click class="h-full flex items-center justify-center -ml-18">
  <img 
    src="/lastp.png" 
    class="rounded-lg shadow-md object-cover max-h-60 w-full" 
    alt="AI 交互示意图"
  />
</div>



---
layout: end
---

# Thanks