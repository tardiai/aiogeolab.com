---
title: 你说「让Agent自己判断」，但判断的边界在哪里？丨裁定机制落地，需要回答这三个问题
date: 2026-04-20
draft: false
coverKeyword: 裁定机制的三层结构
description: 从读者最常见的困惑出发，先厘清判断工程与Harness Engineering的关系——一个管执行环境，一个管决策边界，两者是公路与红绿灯的关系。在此基础上，提出裁定机制的三层结构：自主执行层、确认层、拒绝层，并重点讨论谁来定边界、确认层如何校准、以及落地的真正起点在哪里。
tldr: |-
  判断工程和Harness Engineering解决的不是同一个问题。Harness是执行环境，裁定机制是决策边界——一个管Agent怎么跑，一个管跑到哪里该停。公路和红绿灯，缺一不可。

  裁定机制的核心是三层结构：可逆低风险的情况进自主层，不可逆或超权限的情况进确认层，绝对禁止的情况硬编码在拒绝层——不经过Agent判断，直接挡在外面。

  三层边界不是技术团队能独立设计的。"什么对我们来说是不可逆的"这个问题，只有业务侧能回答。落地的起点是一次认真的对齐会议，把在乎什么、容忍什么、绝对不接受什么说清楚。

  确认层的边界会漂移，漂移是静默的，没有人刻意为之。防止漂移需要定期校准机制——不是依赖人的自觉，而是把检查变成例行动作。没有校准机制的裁定层，是一个会慢慢失忆的系统。
tags:
  - 裁定机制
  - HarnessEngineering
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
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-95-judgment-engineering-adjudication-in-practice.png
  alt: tgje-95-judgment-engineering-adjudication-in-practice
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-95-judgment-engineering-adjudication-in-practice c i w b
publish:
  slug: tgje-95-judgment-engineering-adjudication-in-practice
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1776590409-infographic-tgje-95-judgment-engineering-adjudication-in-practice_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-95-judgment-engineering-adjudication-in-practice_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao34_jtsCd7PZOGpJyfuDApjBqnOEzWCm_8_IAegCgaqoa
    video_vid: wxv_4479474387511033869
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUZZA0CoKxCoIqn1JxFsDVVlP5ffsTXhnbtZ1vD8BicoZB1SgibP6qNJ4DNo93ibR22K5EThBPEDE5U8ndIdnibBjwF76wib4OWCk5Q/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNU8O9ydDyGtcnhnOKZ85icxuoV29HjxnhlDLmlLicJiayyZ79aja4AiawQVicbNyuSbkeEypY3CqfeQbAgLv2B4pRmBW7icw78drPKqQ/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3wLCE_j0cLDq-2XOHY4x35oBKzIoV1iuH9MbDPn7ddSm
    draft_created_at: 2026-04-19 17:20
    video_media_id: lEmH66TSP501Rw-1R2Ao36RUat0nz-7MjbHiBTFQADlZyxcMhTtvCnRXIjV73xsn
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-04-19 17:21
---
# 你说「让Agent自己判断」，但判断的边界在哪里？丨裁定机制落地，需要回答这三个问题
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1776590409-infographic-tgje-95-judgment-engineering-adjudication-in-practice_1280_714.jpg)
<!-- infographic-end -->

一些读者反馈：判断工程的逻辑我懂了，规则覆盖不了边界情况，需要裁定层。Harness Engineering我也看了，执行环境要搭好，不能只靠调教模型。但看完之后，我还是不知道下一步该做什么。

这个困惑是真实的，也是合理的。前面的文章解决的是"为什么"，这篇解决"怎么做"。

不过在进入裁定机制的具体形态之前，有一个问题值得先说清楚——判断工程和Harness Engineering，到底是什么关系？很多读者把两者混在一起理解，这会让后面的实践更难落地。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmo5jp3fo0gpl01udcsaw9yjc" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 一个容易混淆的问题先说清楚

Harness Engineering解决的是**执行环境**的问题。

它的核心逻辑是：与其反复调教Agent的判断力，不如优化它工作的环境。工具怎么接入、状态怎么外部化、失败怎么回滚——这些是环境层面的工程决策。一个好的Harness，让Agent在一个结构良好的容器里运行，行为更可预测，出了问题更容易定位。

判断工程·裁定机制解决的是**决策边界**的问题。

它的核心逻辑是：执行环境搭好之后，Agent在里面跑，遇到不同情况该怎么决策——哪些情况可以自主完成，哪些情况需要暂停等人确认，哪些情况应该直接拒绝，这条线由谁来划、怎么划。

两者的关系是：**Harness是公路，裁定机制是红绿灯。**

公路修得再好，没有红绿灯，还是会出事。红绿灯设计得再精密，路面坑坑洼洼，也跑不起来。两者解决的是不同层面的问题，缺一不可，但不能互相替代。

理解了这个区别，再来谈裁定机制的落地，会清晰很多。

* * *

## 裁定机制不是一个开关

很多人对"裁定机制"的第一反应是：给Agent设一个审批节点，重要的事情让人来确认。

这个方向没错，但太粗糙。

如果你把所有不确定的情况都推进审批队列，Agent就变成了一个不停弹窗的系统，你忙着确认，它忙着等待，最后谁都没有效率。如果你把审批环节设得太少，Agent自主跑，出了问题你才发现边界早就被突破了。

裁定机制要解决的，不是"要不要审批"这个二元问题，而是**如何把所有可能遇到的情况，分配到正确的决策层里**。

这需要一个三层结构。

* * *

## 三层结构：自主、确认、拒绝

**第一层：自主执行层**

这一层里的情况，Agent可以直接跑，不需要问任何人。

判断标准有两个：**可逆，且失败成本低。** 操作可以撤销，或者即便做错了，损失在可接受范围内。比如起草一封邮件草稿、整理一份文档摘要、查询一条数据库记录——这类任务就算结果不理想，重来一次代价不大。

自主层的设计原则是：**宁可范围小，不要边界模糊。** 你明确知道哪些情况属于这一层，比你觉得大部分情况都能自主、但心里没底要安全得多。

**第二层：确认层**

这一层里的情况，Agent做完之前要停下来，把结果或计划给人看一眼，确认之后再继续。

触发确认层的信号通常是三类：**不可逆操作**（发出去的邮件收不回来、删除的文件找不回来）；**涉及外部系统**（调用了你控制范围之外的接口、影响到第三方）；**超出常规授权范围**（这个任务比平时的规模大一个量级，或者涉及的权限明显高于日常）。

确认层是整个裁定机制里最难设计的部分。进来的情况太多，人成了瓶颈；进来的情况太少，失控风险上升。这条线没有标准答案，只有一个校准原则，后面会说。

**第三层：拒绝层**

这一层里的情况，无论结果看起来多合理，Agent都不应该执行。

拒绝层的设计逻辑和前两层不同——它**不经过Agent的判断**，而是硬编码在执行环境的外层。不是"Agent想了想，觉得不该做"，而是"这件事根本不会到Agent面前"。

为什么要这样设计？因为如果你把某些绝对禁止的事情留在Agent的判断范围内，你就是在赌模型在极端情况下仍然判断正确。这个赌注太大。拒绝层的东西，应该在架构层面就挡在外面。

* * *

## 谁来定这三层的边界

这是落地过程中最常被忽略的问题。

很多团队把裁定机制的设计交给技术团队，然后发现做出来的东西"感觉不对"，但说不清楚哪里不对。原因通常是：技术团队能实现任何你描述清楚的边界，但他们没有办法替你回答"什么对我们来说是不可逆的"这个问题。

这个问题只有业务侧能回答。

在动手设计裁定机制之前，需要先开一次认真的会议，把三个问题搞清楚：

**你们在乎什么？** 这个Agent部署在什么场景里，它的核心任务是什么，哪些结果是你们真正想要的。

**你们容忍什么？** 什么样的错误是可以接受的，什么样的偏差你们有能力处理，失败成本的上限在哪里。

**你们绝对不接受什么？** 哪些操作一旦发生就是不可挽回的，哪些情况触碰到的是法律、合规或者核心业务的红线。

这三个问题的答案，直接决定了三层边界在哪里。技术团队拿到这些答案，才能做出有意义的实现。没有这些答案，做出来的只是一个形式上的裁定机制，不是一个真正工作的裁定机制。

* * *

## 确认层的校准：最难也最重要

回到确认层。

确认层的边界不是设计一次就完事的。它会随着两件事的变化而失效：**Agent的行为在积累中变化，业务场景也在变化。**

一个常见的失效路径是：确认层刚上线时设得比较谨慎，很多情况都要人确认。随着时间推移，大家发现大部分确认都是"没问题，继续"，于是开始觉得确认层太烦，逐渐放宽标准。边界慢慢外扩，直到某一天，一个本来应该进确认层的情况自主执行了，出了问题，才发现边界早就不是当初设计的那条线了。

这个漂移过程是静默的，没有人刻意为之，但它会发生。

防止漂移的方法是**定期校准**，而不是依赖人的自觉。校准机制的最简单形式是：每隔一段时间，把Agent最近的行为记录拿出来，对照三层边界检查——有没有本来应该在确认层的情况悄悄滑入了自主层？有没有拒绝层的边界被某些特殊情况绕过去了？

校准不需要很复杂，但必须存在。没有校准机制的裁定层，是一个会慢慢失忆的系统。

* * *

## 落地的起点不是写代码

说了这么多，裁定机制落地的第一步是什么？

不是打开代码编辑器，不是找一个现成的框架套进去。

是开那次会议。

把业务侧和技术侧的人放在一个房间里，花两个小时，认真回答那三个问题：你们在乎什么，容忍什么，绝对不接受什么。把答案写下来，让所有人对齐。

这件事大多数团队没有做，不是因为不重要，而是因为它没有技术门槛，反而容易被推迟——总觉得可以边做边想清楚。

但边界问题如果没有在部署之前想清楚，就会在出了问题之后被迫想清楚。两种情况都会消耗时间和精力，区别在于，前者是主动设计，后者是被动救火。

Harness搭好了执行环境，裁定机制划定了决策边界。两者合在一起，才构成一个真正可以放心交给Agent运行的系统。

**公路和红绿灯都到位了，才能谈放开油门。**

* * *

## 写在最后

裁定机制的设计，本质上是一次关于信任边界的对话。

你信任Agent到什么程度，在什么情况下信任，在什么情况下收回这份信任——这些判断，没有人能替你做。但有了清晰的三层结构和校准机制，至少你知道自己在做什么决定，也知道这个决定是否还在按你的意图工作。

这是判断工程落地最核心的一步：**不是让Agent更聪明，而是让你自己更清楚。**

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。