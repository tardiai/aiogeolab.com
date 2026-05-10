---
title: 厂商拼命扩大Context窗口——但窗口大小不是关键
date: 2026-05-11
draft: true
coverKeyword: 容量不是问题，注意力才是
description: Context窗口的真实工作机制：Context不是存储而是工作台，模型对不同位置信息的注意力分配不均匀（Lost in the Middle效应），以及Context满了之后OpenClaw和Hermes两种截然不同的处理哲学——截断优先vs压缩优先。读完你会知道为什么窗口大小不是关键，以及三条从底层机理推出来的操作原则。
tldr: Context窗口不是存储，是工作台——模型只能处理当前窗口里的信息，窗口之外什么都不知道。窗口越大不等于越好，因为模型对头尾信息最敏感、对中间信息注意力最弱，关键信息放错位置，窗口再大也没用。Context满了之后，OpenClaw默认截断最老的消息（简单但信息损失硬），Hermes做智能压缩（保留更多但成本更高），两种方案各有代价，没有无损选项。Agent场景里Context压力远大于聊天场景，工具调用结果大量注入，长任务很容易在失真的上下文里跑偏。操作原则三条：关键信息放头尾不要埋中间、工具返回结果精炼再注入、长任务主动设检查点定期整理Context。
tags:
  - 上下文窗口
  - 判断工程
  - Context
  - Agent
  - 智能体
  - 生成式引擎
  - AI
  - GEO
  - AEO
  - SEO
  - AIO
  - AIAgent
  - LLM
  - 大语言模型
  - 优化
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-115-context-window-size-isnt-the-point.png
  alt: tgje-115-context-window-size-isnt-the-point
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-115-context-window-size-isnt-the-point c i w b
publish:
  slug: tgje-115-context-window-size-isnt-the-point
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/05/1778376445-infographic-tgje-115-context-window-size-isnt-the-point_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-115-context-window-size-isnt-the-point_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3_H5LlNZ5yIgHNjp64HI0Z9CgzITHoMj_dngK5hE4iMS
    video_vid: wxv_4509447804997894149
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXmddtlJ25IZibialObM1dwRMQAsVptHvulX2QgYmLjeRbJFE5c4AaydmtL6ZuNmBQuw9a5w7udpg1t4Ok3JFial2zGwxt0p1tBFg/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWFvnvZFibF5Sy5iclTuCjUK2yUuia3IJpev2QKGRVFNF6ujFSiatz7ic6FusaF5Xv5pky9zAL5cUsKib5KEf3rF7icjUcbPPE2VI908U/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao302C2tY_cQmw76IHGZZFkaaAspvvxZ8VFrDAflCSHwse
    draft_created_at: 2026-05-10 09:28
    video_media_id: lEmH66TSP501Rw-1R2Ao38oYq-qt4Ud_VAVjCVZBIyyqGtHR6zE3H7sSaTCXE2O8
  wx_article:
    digest: null
    original: false
    comment: true
---
# 厂商拼命扩大Context窗口——但窗口大小不是关键
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/05/1778376445-infographic-tgje-115-context-window-size-isnt-the-point_1280_714.jpg)
<!-- infographic-end -->


模型厂商这两年一直在拼一个数字：Context窗口有多大。从最早的8K，到128K，再到现在动辄百万Token的超长上下文。每次发布，这个数字都是第一个被拿出来说的。

但如果你用过AI Agent跑复杂任务，你可能注意到一件奇怪的事：窗口明明很大，Agent该忘的还是忘，该跑偏的还是跑偏。

Context窗口的大小，不是问题所在。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmoz3bjek034f01wd7flz38ie" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## Context是什么，它真正在做什么

先把基础说清楚。

Context窗口不只是"对话历史"，它是模型在生成每一个输出时，能"看到"的全部信息。系统提示、任务目标、工具定义、工具调用结果、检索回来的文档、你的新输入——全都在这里。模型没有任何其他信息来源，它能做的一切判断，全部建立在这个窗口里的内容上。

**Context不是存储，是工作台。装进去的东西，模型才能用。没装进去的，它不知道。**

这个区分很重要。很多人以为Context是某种"记忆空间"，只要窗口够大，Agent就能记住所有发生过的事。实际上，每次模型生成输出，它都是在重新"看"整个窗口——窗口里有什么，它就基于什么思考，不多也不少。  

**Context 本质是推理时的计算资源**，而不是存储。

* * *

## 容量不是问题，注意力才是

模型对Context里不同位置的信息，处理能力并不均匀。研究发现，模型对窗口头部和尾部的信息最敏感，对中间部分的信息注意力最弱——这个现象有一个专门的名字，叫"迷失在中间"（Lost in the Middle）。

换句话说：你把一段关键指令塞在一个超长Context的正中间，模型可能实际上没有充分处理它。它不是没看到，是"看到了但没真正留意"。

**这就是为什么窗口扩大了，问题并没有消失。** 容量是上限，注意力分配才是日常表现的决定因素。窗口从128K扩到1M，你能装进去的东西多了，但模型对中间内容的注意力弱化这个结构性问题，并没有因此消失。

所以不是窗口不够大，很多时候是关键信息放错了位置。

* * *

## Context满了，会发生什么

容量有上限，长任务必然面对一个问题：装满了怎么办。

不同产品的处理方式不同，但代价都真实存在。

**OpenClaw的方案：截断优先，可选压缩。**

OpenClaw默认的处理方式是截断——直接丢弃最老的消息，保留最近的N条。操作很简单，也很粗暴。你在任务最开始交代的目标、约束条件、背景信息，往往是最先被丢掉的那批。

丢了就是丢了，找不回来。

OpenClaw也提供一个可配置的压缩模式：当Context使用率达到80%时，自动把老的历史发给模型做摘要，摘要以system message的形式插回头部，替代原来的历史记录。代价是每次压缩需要额外的API调用，有成本，信息也从"精确"变成了"大意"。

**Hermes的方案：不截断，只压缩。**

Hermes走了完全不同的路。它的`ContextCompressor`模块会对内容按重要性分层处理：系统指令、最近的消息、被标记为重要的记忆优先保留；中间的老内容做压缩而不是直接丢弃。设计哲学是"信息不消失，只变形"。

代价是每次压缩需要额外的模型调用，长会话下来成本比截断策略高。用更多钱，换更完整的上下文保留。

**两种方案背后是同一个矛盾：** 截断省钱但信息损失硬，压缩保信息但成本上升。没有哪个方案是无损的，只有适合你场景的选择。

* * *

## Agent场景里，Context面临的压力和聊天完全不同

聊天场景里，Context装的主要是对话文本——你说一段，它说一段，内容密度有限。

Agent执行场景里，Context要装的东西多得多。系统提示、任务目标、工具定义、每次工具调用返回的结果、中间推理过程、对话历史……每一次工具调用，返回内容直接注入Context，一次网页搜索的结果可能就是几千Token，一次代码执行的输出可能更多。

更关键的是，这些内容的增长速度比聊天快得多。聊天进行十轮，Context大概用掉一小部分；Agent跑十个工具调用，Context可能已经消耗了大半。

**这就是为什么Agent在长任务里比短任务更容易跑偏。** 不只是规划问题，Context压力也是原因之一。任务跑着跑着，最开始设定的目标和约束已经因为截断或压缩而变形，Agent实际上是在一个失真的上下文里继续执行。

* * *

## 知道了这些，你能做什么

三条操作原则，从底层机理推出来，不是技巧清单。

**关键信息放头部或尾部，不要埋在中间。**

系统提示和任务目标放最前面，最新的关键指令放最后一条。注意力模型对这两个位置最敏感，放在中间的重要内容，可能实际上没有被充分处理。如果某个约束条件特别重要，头尾各放一遍，不是重复，是保险。

**工具返回结果要精炼再注入，不要原样塞进Context。**

搜索结果、文档内容、代码执行输出——这些原始返回往往比实际需要的信息量大得多。先提取关键部分再注入Context，减少噪音占用空间，也降低重要信息被淹没在大量工具输出里的风险。

**长任务主动设检查点，定期做Context整理。**

不要一口气跑到底。每隔几个关键步骤，让Agent把当前状态、已完成的部分、待处理的问题整理成一份精炼摘要，用这份摘要替代冗长的历史记录，给后续步骤腾出干净的空间。这个动作不只是节省Token，更重要的是把最核心的信息重新放到模型最能"看见"的位置。

* * *

## 写在最后

Context窗口的军备竞赛还在继续，百万Token的上下文已经是现实。但对用Agent跑实际任务的人来说，真正重要的不是窗口有多大，而是你把什么放进去、放在哪里、满了之后怎么处理。

模型厂商在比拼容量，但容量不是你的瓶颈。注意力分配和信息放置，才是决定Agent表现的关键变量。

Context是你和Agent之间最重要的界面。管好它，是管好Agent的起点。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
