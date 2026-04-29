---
title: 裁定权不会消失，只会转移｜判断工程
date: 2026-05-01
draft: true
coverKeyword: 判断工程三层结构
description: 系统梳理判断工程三层结构（推理层、判断层、裁定层），重申裁定层在四种必要条件下从可选变必选的判断标准，并通过权限漂移、信任链被利用、责任真空三种已发生的失效模式说明裁定层缺失的结构性代价。面向已读系列的读者提供完整框架回顾，同时对新读者保持友好。给出三个立刻可执行的行动出口：画出权限边界、给Agent发工牌、建立定期校准机制。
tldr: |-
  大多数团队部署Agent时，把90%的时间花在"让它能干"上，几乎没有时间回答"它在什么情况下不应该继续"。这个问题不会报错，直到出了事。判断工程解决的正是这个问题——不是让AI更聪明，而是让人在AI越来越能干的时候，不失去对关键决策的掌控。

  判断工程的核心是三层结构：推理层生成路径，判断层选择路径，裁定层决定这条路径是否被允许继续。大多数系统有前两层，裁定层普遍缺失。缺失不代表它不存在——裁定权不会消失，只会以"Agent默认继续走"或"没有人能叫停它"的方式转移出去。

  四种情况下裁定层从可选变必选：不可逆后果、责任归属要求、组织级复用、执行触发。裁定层缺失的代价已经以三种固定模式反复出现：权限漂移、信任链被利用、责任真空。这不是假设性风险，是已经发生的结构性问题。

  现在可以做三件事：画出Agent的权限边界、给它发一张工牌、建立定期校准机制。这三件事不需要很大的工程投入，需要的是在部署之前认真回答那个从来不会自动报错的问题。
tags:
  - 三层结构
  - 判断工程
  - 裁定权
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
  image: /images/cover/AioGeoLab-cover-tgje-105-judgment-engineering-closure-authority-transfer.png
  alt: tgje-105-judgment-engineering-closure-authority-transfer
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-105-judgment-engineering-closure-authority-transfer c i w b
publish:
  slug: tgje-105-judgment-engineering-closure-authority-transfer
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1777504554-infographic-tgje-105-judgment-engineering-closure-authority-transfer_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-105-judgment-engineering-closure-authority-transfer_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3wSUocPS-MgmOERmbAyLw4HSj6XnQTkpMsTuCd8o7vLD
    video_vid: wxv_4494803489453457412
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNW38NJpCSrMIibrZC6agZZS7r3FvmsGhkjmqoZqjYN7CkBI8TFScnBhjcNVMnrHDQAUicA4icGKmuaZskjwNjlLaOUzKwqhByvL18/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUYJiaBPm9SotLQEWwUtKhSUkyLhktnn79tTUVobqzYb80vexFfiazCnzJSZIkXx7rGN1z40n7icKicMvtwug1VcxIDsEs8bJpv6XA/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3ycZneddzqcSKn6AyGZCp8spvUc6P6qWubAAoZPISzC-
    draft_created_at: 2026-04-30 07:16
    video_media_id: lEmH66TSP501Rw-1R2Ao3w-Klhl72MTpen3o4NbmFnF-BRVy2IjoRYJrJ_NjFsYQ
  wx_article:
    digest: null
    original: false
    comment: true
---
# 裁定权不会消失，只会转移｜判断工程
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1777504554-infographic-tgje-105-judgment-engineering-closure-authority-transfer_1280_714.jpg)
<!-- infographic-end -->


部署Agent这件事，有一个很常见的分配方式。

工程师花了大量时间让Agent能干——调参数、接工具、优化提示词、跑测试、处理边界情况。产品侧花时间想怎么用它——哪些场景交给它，怎么设计交互流程。

然后上线了。

很少有人在这个过程里认真回答过一个问题：**这个Agent在什么情况下，不应该继续往下走？**

不是因为大家不关心，是因为这个问题从来不会报错。Agent能不能完成任务，测试阶段就会暴露。但Agent是不是应该完成这个任务、在什么条件下应该停下来等人确认——这类问题不会触发任何警告，直到出了事。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmoko86bv03vt01vv5pui6kck" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 判断工程在解决哪个问题

先说清楚一件事：判断工程不是让AI变得更聪明，也不是替代AI的判断，更不是保证AI每次都做对。

它解决的是另一个问题：**AI做到之后，谁来说算数。**

这里有一个三层结构，是理解判断工程的基础：

**推理层**，AI在概率空间里生成路径。给它一个问题，它能列出很多种可能的走法。这一层主要由预训练决定，是AI的"先天"能力。

**判断层**，从所有路径里选一条继续走。选的不是最快的那条，而是更慢、更严谨的那条。这一层主要由后训练塑造，是AI的"后天"判断力。

**裁定层**，决定这个判断流是否被允许继续——是继续执行，还是暂停等待人的确认，还是直接拒绝。

大多数AI系统有前两层。第三层，裁定层，普遍缺失。

缺失不代表它不存在。裁定层不会因为没有被设计就消失——它只会以另一种方式出现：要么是Agent默认继续走，要么是没有人能在关键时刻叫停它。

**裁定权不会消失，只会转移。** 你不主动设计它，它就悄悄流走了。

* * *

## 四种必须有裁定层的情况

判断工程有一个判断标准：满足以下四种条件之一，裁定层就从"可选"变成"必选"。

**不可逆后果。** Agent执行的动作，如果做完了就无法撤回，就必须有裁定层介入。删除文件、发出邮件、提交订单、触发支付——这些操作的共同特征是，错了之后没有"撤销"按钮。Agent在这类操作前，必须有一个明确的确认机制，而不是默认继续。

**责任归属要求。** 当一个决策需要有人能够事后说清楚"这是谁批准的"，裁定层就是必须的。不只是法律层面的追责，也包括组织内部的问责——如果出了问题，谁都说不清楚是人决定的还是Agent自己决定的，这个系统的设计就有问题。

**组织级复用。** 当一个Agent的行为模式被复用到整个组织或大量用户，单次判断错误的影响会被放大成系统性风险。这时候，裁定层不只是保护单次执行，而是保护整个组织不因为一个错误的决策模式而系统性出错。

**执行触发。** 当Agent的输出不只是生成内容，而是直接触发外部系统的动作——调用API、操作数据库、控制硬件——裁定层必须在执行触发之前介入，而不是之后。之后已经来不及了。

这四个条件，不需要同时满足，满足任意一个就够了。

* * *

## 裁定层缺失的代价

裁定层缺失不是假设性的风险，它已经以几种固定的模式反复出现。

最常见的一种，叫**权限漂移**。Agent最初被授权做一件有限的事，但随着使用场景扩展，它接入的系统越来越多，能做的事越来越多，而没有人回头重新审视这条边界有没有悄悄移动。移动本身没有仪式感，没有任何警告，直到有一天你发现它在做一件你从来没有授权过的事。

第二种模式，叫**信任链被利用**。今年发生的几起安全事件，包括Vercel权限继承攻击和ClawHub的恶意Skills植入，结构上都是同一件事：攻击者没有直接攻击目标，而是攻击目标信任的中间人——一个被授权的AI工具、一个被信任的Skills来源。Agent忠实地执行了来自被污染的信任链的指令，用的是用户的授权，走的是Agent自己规划的路径。没有裁定层，就没有任何东西在这条链条的某个节点上叫停它。

第三种模式，是最日常也最容易被忽视的一种：**责任真空**。Agent出了问题，没有人说得清楚这个决定是谁做的。是模型做的？是工作流设计的？是调用了某个数据源导致的？是授权时的边界没划清楚？因为裁定层从来没有被设计，所以责任链从来没有被建立，出了事只能从头倒查。

这三种模式有一个共同的前置条件：**部署之前没有人认真回答过"这个Agent在什么情况下不应该继续"这个问题。**

* * *

## 你现在可以做的三件事

理解框架之后，有三个具体的行动出口。

**第一，画出你的Agent的权限边界。**

不是技术文档，是一张可以被非技术人员看懂的清单：这个Agent被授权做什么，明确不能做什么，在什么情况下必须停下来等人确认。

这张清单不需要很长，但必须存在。它的价值不只是约束Agent，还在于让所有相关的人——产品、工程、业务、管理层——对同一张边界图有共同的认知。边界如果只存在于某个工程师的脑子里，它就不是真正存在的边界。

**第二，给你的Agent发一张工牌。**

工牌的概念来自于一个简单的类比：一个没有工牌的员工出了问题，你不知道他的权限是什么，也不知道他代表谁在行动。Agent也一样。

工牌包含三个要素：这个Agent的授权范围（能做什么）、行为边界（不能做什么）、上报条件（什么情况下必须等人点头）。这三个要素形成文档，不只给工程师看，也给业务侧的人看，给未来可能接手这个系统的人看。

没有工牌的Agent，出了问题是无法追溯的。

**第三，建立定期校准机制。**

权限边界会漂移，这不是比喻，是已经反复被证实的规律。Agent使用场景扩展，接入的系统增加，原来的边界就不再准确了。但因为漂移是渐进的、没有仪式感的，没有人会主动注意到它发生了。

定期校准不是一次性的安全审计，是一个持续的治理动作。频率取决于你的Agent使用场景变化的速度——变化快的，至少每季度重新看一遍边界；变化慢的，每半年。校准的核心问题只有一个：这个Agent今天实际在做的事，还在我们当初划定的边界里吗？

* * *

## 写在最后

判断工程这个系列写了很多篇，从裁定权的定义，到Harness Engineering，到六阶段授权地图，到裁定机制落地，到安全事件拆解，到监管动态。

但核心始终是同一件事：**Agent越来越能干，人对关键决策的掌控不能因此变少。**

这不是对AI能力的不信任，是对系统设计的基本要求。一个没有裁定层的Agent系统，不是在信任AI，是在放弃对系统的治理。

裁定权不会消失，只会转移。

主动设计它，还是让它悄悄流走——这个选择，每个在部署Agent的人都在做，不管他们意不意识到。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
