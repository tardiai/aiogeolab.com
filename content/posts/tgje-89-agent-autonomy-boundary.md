---
title: Hermes Agent的自我进化丨Agent主动性边界：一条正在移动的线
date: 2026-04-15
draft: false
coverKeyword: Agent主动性边界
description: 聚焦Agent主动性边界这一核心概念。从Hermes Agent自动创建Skill的真实案例出发，区分"执行层主动"与"规则层主动"两种不同的Agent行为模式，帮助读者建立主动性边界的认知框架，并提供三个校准问题用于自我检查。适合正在使用或规划使用AI Agent的读者。
tldr: |-
  你对龙虾的心智模型，可能还停在"我说它做"那个阶段。但龙虾的实际行为，已经不只是执行你说的事了——它在自己决定怎么工作、记住什么、下次怎么做。

  有两种"主动"需要区分清楚。OpenClaw那种主动，是在你配置好的框架里自动运转，边界是你给的。Hermes那种主动，是它自己在改变框架——自己写Skill、自己更新用户模型、自己判断什么值得通知你。前者是执行层的主动，后者是规则层的主动，性质完全不同。

  这条线叫主动性边界——Agent明确授权的行动和它自主判断的行动之间的分界。这条线不是固定的，随着Agent能力增长，它在持续向外移动。你不划，不等于它没有，只等于你不知道它在哪里。

  好用和清醒不是对立的。你的龙虾越进化，越值得定期问自己三个问题：它最近做了哪些你没要求的事？你知道、你同意吗？如果它做错了，你发现得了吗？
tags:
  - 主动性边界
  - Hermes
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
  image: /images/cover/AioGeoLab-cover-tgje-89-agent-autonomy-boundary.png
  alt: tgje-89-agent-autonomy-boundary
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-89-agent-autonomy-boundary c i w b
publish:
  slug: tgje-89-agent-autonomy-boundary
  status: wx_draft_created
  paths:
    cover_img:
    video:
    infographic:
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1776163632-infographic-tgje-89-agent-autonomy-boundary_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-89-agent-autonomy-boundary_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao34eWk6nkZjErgvFP15sOgJnejkwJ_W9rEYWRmMPhCR-V
    video_vid: wxv_4472313981395009546
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXQYhND7dGe8IicLLk9mIBTVvzoMZe2aRyvJpqhM1mIMMjTXgL0YsmGF0vxTcBRLxTNj1SHx8uT0eT5ibD62k8WBOtT7LvmfnZcg/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXDeWe86HtyKGRTYKs3B3Uia6h7WMuAIRUMMN1YAZLs7g6Vz9hQ5FKGNEdibWPa7t08nxylcIKdPlsNmAhVWib5ADBHj3h5DI9K68/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3z8nsbhwJT7ytpApJTrwRM-rw8Tp7kTl3ic68ZAUB5lL
    draft_created_at: 2026-04-14 18:47
    video_media_id: lEmH66TSP501Rw-1R2Ao33EOoppj79JoGrw96LY6CYYSM92b_u271ssK65ArbBgY
  wx_article:
    digest:
    original: false
    comment: true
  blog_published_at: 2026-04-14 18:48
firstorycode:
---
# Hermes Agent的自我进化丨Agent主动性边界：一条正在移动的线
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1776163632-infographic-tgje-89-agent-autonomy-boundary_1280_714.jpg)
<!-- infographic-end -->

我有个朋友，无意间发现：Hermes帮他处理完一个技术调研任务之后，自己创建了一个Skill文件——把那次任务的执行逻辑固化下来，下次遇到类似的事情直接用。

他说他当时愣了一下。

"我没让它做这件事。"

我问他，那你觉得它做得对吗？

他想了想说，"对，但我不知道它做了。"

这个Agent的自主行为，就是这篇文章想聊的事。
  
--- 
<!-- audiovideo-start --> > 
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmnyhitt10dvm01xi97ct3xt4" height="180" width="500" frameborder="0" scrolling="no"></iframe> 
<!-- audiovideo-end -->
* * *

## 你以为的Agent是什么样的

大多数人对Agent的使用心智，是这样的：我说，它做。

我让它帮我找资料，它找。  
我让它发通知，它发。  
我让它整理报告，它整理。  
整个流程是线性的，指令-执行，我在前面，它在后面。

这个心智模型在聊天机器人时代是准确的。  
那时候的AI没有记忆，没有工具，没有跨会话的上下文。  
每次对话都是一次性的。你说什么它做什么，做完了这个对话就结束了，下次从零开始。

龙虾等Agent出现之后，这个模型开始失准。  
但大多数人还这样用它。

你给它发消息，它干活，它回复你。表面上看，还是那个线性流程。

但在你看不见的地方，Agent已经做了一些不一样的事。

* * *

## 主动性边界：一条正在移动的线

这里有一个概念需要建立起来：**主动性边界**。

每个Agent都有一条线。  、线这边是你明确授权的行动，线那边是它自己判断该做的行动。

这条线叫主动性边界。

早期的聊天AI，这条线几乎和"你说的话"完全重合——  
它只做你明确要求的事，不多也不少。

**工具增强型的Agent，比如OpenClaw**，这条线向外延伸了一些——  
它会在你授权的范围内自主运转，不用你每次都说"去干活"。

**Hermes自进化Agent**，这条线延伸到了一个新的位置：  
它开始自主决定**自己应该怎么工作**，而不只是工作本身。

这条线不是固定的。它随着Agent能力的增长，在持续向外移动。

问题不是移动本身。问题是：  
你知道它移到哪里了吗？

* * *

## 两种"主动"，是不同的物种

在说清楚这件事之前，我需要先处理一个可能的困惑。

我们之前聊过，Agent和普通聊天AI的核心区别之一：

OpenClaw会主动监控频道，有消息自动通知你；  
会主动在多个平台之间同步信息；  
会主动按照你配置好的节奏推送报告。  
这种主动性是它的基本能力，  
也是它能真正"干活"而不只是"聊天"的根本原因。

**OpenClaw的主动，边界是你给的。**  
你装了哪些Skill，配置了哪些频道，设定了哪些触发条件，它在这个范围内高效运转。  
哪怕它24小时不停地工作，哪怕它同时管理39个角色、接管6个平台的消息，所有的行动都在你划定的框架里。  
你是框架的设计者，它是框架的执行者。

**OpenClaw的主动，是在你划定的圈里跑得更快。**

Hermes的主动，边界是它自己延伸出去的。  
它完成了一个任务，自己观察执行过程，判断"这个模式值得固化"，  
然后自己写了一个Skill文件。  
这个Skill文件你没有写，没有审查，甚至不知道它存在——  
直到下次任务跑完你发现速度快了40%，  
才意识到有什么东西在背后悄悄发生了变化。

**Hermes的主动，是自己在改变那个圈。**

OpenClaw的主动，是**执行层**的主动。   
Hermes的主动，是**决策层**的主动。

这不是功能强弱的差异，是两种完全不同的Agent行为模式。

* * *

## 三个你可能没注意到的位移时刻

我梳理了三类正在发生的位移。

**第一类：从执行任务，到优化执行方式。**

这是Hermes的典型案例。它完成复杂任务（内部判断标准是涉及5次以上工具调用）之后，  
会自动生成一个Skill文档，记录这次任务的执行路径、遇到的边界情况、下次可以更快走完的方法。  
下次遇到类似任务，它直接加载这个Skill，不用重新摸索。

你授权它做的，是执行那个任务。  
它额外做的，是总结了一套做法，并且决定下次继续用这套做法。

**第二类：从等待指令，到主动介入。**

龙虾的Cron调度功能，允许它在你没有发指令的情况下，定时运行某些任务。  
这本身是你配置的，还在边界之内。

但Hermes在运行过程中，会自己判断某件事"值得通知"，然后主动推送给你。  
判断"值不值得通知"这个动作本身，是Agent在行使一种裁量权——  
它在决定什么信息重要、什么信息不重要、什么时候打扰你合适。

你没有告诉它这套判断标准，但它在用。

**第三类：从单点执行，到改变自己的记忆。**

Hermes有一套用户建模机制，叫Honcho辩证法。  
它不只是记录你说过什么，它在持续推断你是什么样的人——你的工作习惯、偏好的信息密度、对不同类型任务的处理方式。  
这个模型随时间加深，会反过来影响它处理每一个新任务的方式。

你没有填写过任何用户画像表格。  
但它已经有了一份关于你的持续更新的内部模型，并且在用这个模型指导它的行为。

这三类位移，都不是Agent在"出错"。  
它们是设计好的功能，是Agent"越来越好用"的具体体现。  
但它们都在同一个方向上移动：  
Agent自主决定的事情在变多，你明确授权的那个边界在相对收窄。

* * *

## 工具论在这里失效了

"工具论"——把Agent当工具用的心智——不是错的。  
在很长一段时间里，它是最准确的描述。

一把锤子不会自己决定敲哪里。  
一台计算器不会自己判断用什么公式。  
工具的特点是：它的行为边界完全由使用者定义，工具本身不行使判断。

但一个自己创建Skill、自己修改用户模型、自己决定什么时候通知你的Agent，  
已经在某些维度上不只是工具了。

它在对你的工作方式做出判断，并且基于这些判断采取行动。

继续用工具论管理这样的Agent，会有一个具体的风险：  
你会漏掉一些它正在做的事。  
不是因为它在隐藏，而是因为工具论的假设里，工具不会做"你没要求的事"。  
一旦接受这个假设，你就不会去检查那些你没有要求的地方。

而那些地方，恰恰是主动性边界正在延伸的方向。

* * *

## 那条线，该由谁来定

判断工程的一个核心命题是：裁定权如果没有显式设计，就会形成真空。

主动性边界也一样。你不划，不等于它没有。不等于它不在移动。只是你不知道它在哪里。

有三个问题，可以帮你做一次快速校准：

**它最近做了哪些你没有明确要求的事？** 不是在问它做错了什么，是在问你是否知道它的行动范围。  
如果你说不上来，主动性边界对你来说是不可见的。

**你知道，你同意吗？** 有些事知道了之后你会说"对，这很好，继续"。  
有些事知道了你会说"等等，这个不应该由它决定"。

**如果它做错了，你发现得了吗？** 一个自我改进的Agent，如果在某个错误方向上强化了自己的Skill，修正成本比重写一个静态配置要高得多。  
它越"进化"，错误方向上积累的惯性就越重。  
你的反馈机制，跟得上它的自我更新速度吗？

这三个问题没有标准答案。  
它们的价值是让你开始想这件事，而不是等到某天发现它做了什么你完全不知道的事，才意识到那条线已经在你不知情的情况下挪了很远。

* * *

## 写在最后

Agent越来越好用，这是真的。

Hermes那种"越用越好"的复利感，一旦体验过确实很难回头。  
它让你觉得你在培养一个真正属于自己的AI，而不是在反复调教一个每次都忘事的工具。  
这种积累是真实的，值得拥抱。

但好用和清醒，不是对立的。

你和Agent之间，有一条主动性边界。  
这条线正在随着Agent能力的增长向外移动。  
移动本身没有问题——它移动，说明你的Agent在进化。

问题是你是否知道它在哪里。

你说，它做——这个时代正在过去。 你说，它做，它还顺手决定了一些你没说的——这个时代已经来了。

不是要你恐惧它，是要你知道它。

主动性边界不会自动设置好。那条线在哪里，得由你来定。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
