---
title: Skills还是脚本：什么时候用AI，什么时候用代码
date: 2026-03-24
draft: false
coverKeyword: Skills还是脚本
description: 有了AI之后很多人停止写脚本，但该自动化的事还是没自动化——问题不是该用哪个，而是什么时候用哪个。本文提出三种方案的选择框架：纯脚本（确定性，规则可穷举）、Skills/Agent（概率性，语义理解）、脚本调用API（两层组合，保留确定性框架同时获得AI理解能力）。一个判断问题收口：输入变了，需要重新理解还是只需要重新计算？
tldr: |-
  有了AI之后很多人停止写脚本，但该自动化的事还是没自动化。问题不是该用哪个，是什么时候用哪个。

  脚本是确定性机器：规则清晰，一万次输入一万次一样。但遇到规则之外的输入就崩——你和语言的无限可能性死磕，规则越写越多，维护成本越来越高。

  Skills是概率性理解：处理的是意图，不是模式，天然应对模糊输入。但不保证每次输出一致，执行逻辑无法审计。

  还有第三条路：脚本调用API。外层是确定性的脚本控制触发和流程，内层是AI处理规则穷举不完的理解任务。保留了可审计的框架，又获得了AI的理解能力——工程实践里最常用的方案。

  判断用哪个，只需要问一个问题：输入内容变了，处理逻辑需要重新理解，还是只需要重新计算？
tags:
  - Skills
  - Shell
  - 判断工程
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
categories:
  - AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-68-scripts-vs-skills-deterministic-vs-probabilistic.png
  alt: tgje-68-scripts-vs-skills-deterministic-vs-probabilistic
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
publish:
  slug: tgje-68-scripts-vs-skills-deterministic-vs-probabilistic
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774062631-infographic-tgje-68-scripts-vs-skills-deterministic-vs-probabilistic_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-68-scripts-vs-skills-deterministic-vs-probabilistic_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3yqt7wFqV3t59h8pP78Or6PjMu9oXqGdgLQmnC6OmKH7
    video_vid: wxv_4437051086314733570
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXMsuibSxJAws63rmbT5d4J6ISKtvxUM1jFia65C3NJ1cSZClQnAdF5VUBoogLn0Co5x6ia14iawLyStZEEAxod71ODlbslYqtJibfE/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWEibUGSXN1XzaFMeXkdkmib1MRvux6psibwRYPZCZb2QmWqMqqsibuey6VbNQWK1iajCAFRkre06vLVibyubKA2UP23XfIjcneugdKE/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao39GS9exTx9qTxJIKjw_9e5IH1ojjOnNu7WJA0OtkQuED
    draft_created_at: 2026-03-21 11:26
    video_media_id: lEmH66TSP501Rw-1R2Ao34Y0MfZX-cE00bPzHTscUkWwR481-HEmq6cFsv9T9wPB
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-03-21 11:59
---
# Skills还是脚本：什么时候用AI，什么时候用代码
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774062631-infographic-tgje-68-scripts-vs-skills-deterministic-vs-probabilistic_1280_714.jpg)
<!-- infographic-end -->


有了AI之后，尤其是Skills之后，以前通过脚本实现的自动化任务，很多都可以通过Skills来轻松实现了。

很多人从脚本转向Skills，但发现Skills确实强大并且易用，但是有些任务执行不稳定，好的时候非常完美，但是有些时候又差强人意，好像突然就智商掉线了。

所以很多人就很纠结，到底该如何选？继续脚本还是Skills。

实际上问题不在一刀切，而是**什么时候该用哪个**。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmmzq2i530bcu01ymgplwc8i3" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<br>
<!-- audiovideo-end -->

* * *

## 脚本的本质：确定性机器

脚本（或者说代码、程序）的核心特征是确定性：输入固定，输出可预测，执行逻辑完全透明。

它最擅长的事：重复性操作、格式转换、数据处理、定时触发。你告诉它规则，它严格按规则执行，一万次都一样。

但脚本有一个致命弱点：**遇到规则之外的输入，它不知道怎么办。**

你写了一个脚本，把客户反馈按关键词分类——"退款"归投诉，"满意"归好评。然后客户写了"这次体验还行吧"。脚本懵了。你加新规则，客户又写了"说实话有点失望但不至于投诉"。规则越写越多，维护成本越来越高，最后你发现在和语言的无限可能性死磕。

**脚本适合的场景：你能提前把所有情况穷举清楚的任务。**

* * *

## Skills的本质：概率性理解

Skills（以及更广义的AI能力）的核心特征是理解：输入可以模糊，输出依赖语义理解，处理意外情况是它的强项。

你把同样的客户反馈交给AI，它不需要关键词规则，它理解"还行吧"是中性评价，理解"有点失望但不至于投诉"是负面偏中性。它处理的是意图，不是模式。

但Skills也有致命弱点：**不保证每次输出完全一致，执行逻辑无法审计。**

对于需要精确可重复结果的任务，这是不可接受的。你不能用AI来做财务报表的数字汇总，因为你需要的是每次结果完全一致、逻辑完全透明、出了问题能追溯。

**Skills适合的场景：你无法提前穷举所有输入形式的任务。**

* * *

## 真正的分界线：规则能不能穷举

用具体例子来说，这条线在哪里：

**用脚本：**   
把一批文件按日期重命名——规则清晰，输入固定，不需要理解。   
每天早上8点发送日报邮件——定时触发，格式固定，确定性任务。   
检查代码里有没有硬编码的密钥——模式匹配，规则明确，可以穷举。

**用Skills：**   
把一堆客户反馈分类成正面、负面、中性——语义理解，规则穷举不完。   
把会议录音整理成结构化纪要——内容理解，每次都不一样。   
审查这段代码的架构是否合理——需要理解上下文和设计意图。

**判断的核心问题只有一个**：  
如果输入内容变了，你的处理逻辑需要重新理解，还是只需要重新计算？

**需要重新理解——用Skills。  
只需要重新计算——用脚本。**

* * *

## 第三条路：脚本调用API

第三种是融合方案：**用脚本来调用AI的API**。

这种方案在工程实践里很常见。

脚本调用AI API，本质上是两层的组合：

**外层是确定性的脚本**：负责触发条件、数据获取、参数传递、结果接收、后续处理。这一层逻辑透明、可审计、行为可预测。

**内层是概率性的AI**：负责处理那个规则无法穷举的理解任务。这一层输出依赖模型能力，但被包裹在确定性的框架里。

举个例子：你写一个脚本，每天抓取最新的客户工单，调用Claude API判断每条工单的紧急程度和情绪倾向，把结果写入数据库，再触发对应的处理流程。

整个链路是确定性的——脚本控制什么时候运行、调用哪个API、结果怎么处理。但判断"这条工单是否紧急"这件事，被外包给了AI的理解能力。

**这种方案的优势：**   
保留脚本的确定性框架，触发时机精确，数据流向清晰，出了问题知道在哪里查。  
同时获得AI的理解能力，规则穷举不完的部分交给模型处理。

**适用场景：**   
需要把AI能力集成进现有系统，或者需要精确控制执行流程，但中间有一个环节需要语义理解。  
Skills更适合在Agent生态内部工作，脚本调用API更适合跨系统集成。

* * *

## 三种方案，一个选择框架

把三种方案放在一起，选择逻辑就清晰了：

**纯脚本：** 任务规则清晰，输入可穷举，需要结果完全一致且可审计。

**Skills/Agent：** 任务需要语义理解，在Agent生态内工作，不需要精确控制每一步的执行流程。

**脚本调用API：** 任务需要语义理解，但需要集成进现有系统，或者需要精确控制触发时机和数据流向。

三者不是进化关系，不存在哪个更先进。是适用场景不同的三种方式，各自有不可替代的位置。

* * *

## 一句话总结

脚本和Skills不是新旧之争，而是确定性和概率性之争——脚本适合规则可以穷举的任务，Skills适合语义理解无法用规则覆盖的任务，而脚本调用AI API则是融合之路，用确定性的框架包裹概率性的理解能力，判断的核心问题只有一个：输入内容变了，处理逻辑需要重新理解还是只需要重新计算。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
