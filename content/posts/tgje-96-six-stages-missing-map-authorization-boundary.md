---
title: Agent能走多远是一回事，应该走多远是另一回事丨Agent发展六阶段论
date: 2026-04-22
draft: false
coverKeyword: Agent发展六阶段论
description: OpenManus核心贡献者张佳钇提出的Agent发展六阶段论，叠加判断工程的授权视角，指出六阶段论是一张能力地图，但能力边界和授权边界是两件不同的事。从第一阶段到第六阶段，Agent的自主权在每次升级中悄悄扩张，人的裁定空间在悄悄收窄——这个过程没有仪式感，没有人正式宣布权力转移。判断工程要做的，是让这张隐性的授权地图显性化。适合读过六阶段论相关内容、或正在部署Agent的从业者。
tldr: |-
  张佳钇的六阶段论，是一张Agent能力地图：从调用语言模型，到Agent Network，每升一级，Agent能做的事情范围扩大一圈。这个框架清晰，有现实产品作为坐标，值得认真对待。

  但能力边界和授权边界是两件不同的事。Agent能做到第几阶段，和你决定让它做到第几阶段，不是同一个问题。六阶段论画了油门的行程，没画刹车的设计。

  从第一阶段到第六阶段，人的裁定空间在每次升级里悄悄收窄。这个过程没有仪式感——不是谁正式宣布交出决策权，而是在一次次"这个让Agent来"的习惯里，静默完成的。

  判断工程是另一张图：授权地图。它回答的不是Agent能走多远，而是Agent应该走多远，在哪里停，由谁来决定。两张图都需要。能力跑在前面，授权跟不上，螺旋式上升就会走形。
tags:
  - 六阶段论
  - 授权边界
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
  image: /images/cover/AioGeoLab-cover-tgje-96-six-stages-missing-map-authorization-boundary.png
  alt: tgje-96-six-stages-missing-map-authorization-boundary
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-96-six-stages-missing-map-authorization-boundary c i w b
publish:
  slug: tgje-96-six-stages-missing-map-authorization-boundary
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1776747346-infographic-tgje-96-six-stages-missing-map-authorization-boundary_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-96-six-stages-missing-map-authorization-boundary_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao30mqL8HrItx3-lL9mWQi7ASrwOyd6TF92gqG-xXOITDf
    video_vid: wxv_4482113126028738568
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVV3FPz7NvIAfIU2uHAm0zt40NSd29aEf7UrCOPj2EH56Lw3dfQg0vDEzIcCLSibMFfqh9xWljmTmH48aDcAQYgygsa2whpribHg/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNUgV9j4tZVRmUrd89FHPFTbSiaiaP67HtoorhOuekpbia61UXOT5XpcNQ1KRRI4K56xxfGNll5Z1UuWeH2pxzHsqk2F38ousvZeK8/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3_bk64RKZbnB0pzjetrX9nDTuHWT3lifkQ9UbgQcEwYn
    draft_created_at: 2026-04-21 13:01
    video_media_id: lEmH66TSP501Rw-1R2Ao38kcvxus5RAiH0SxbZA39BdnnHpdihIK1qWaVeFtDtuL
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-04-21 13:01
---
# Agent能走多远是一回事，应该走多远是另一回事丨Agent发展六阶段论
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1776747346-infographic-tgje-96-six-stages-missing-map-authorization-boundary_1280_714.jpg)
<!-- infographic-end -->


最近在读一个关于Agent演进的讨论，里面提到了一个六阶段论，让我觉得值得认真对待。

框架是OpenManus核心贡献者张佳钇提出的。  
**六个阶段依次是**：纯粹调用语言模型、Agent for Flow、跨环境的Financial Agent、Agent for Coding、每个人拥有自己的Agent、最后是Agent Network——Agent之间能够自主定价、协作、完成任务。

这个框架的价值在于，它给了一条清晰的演进轨迹。从单点调用，到工作流编排，到跨环境执行，到代码生成，到个人化，到网络化——每一步都是能力的实质性跃迁，不是概念游戏。

但我读完之后，有一个问题一直在心里悬着，没有被回答。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmo85ap1g04df01ud1363433o" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 六阶段论画了什么

在说那个问题之前，先把六阶段论真正画的东西说清楚。

它画的是一张**能力地图**。

每升一个阶段，Agent能做的事情范围就扩大一圈。第一阶段，它只能回答你的问题。第二阶段，它能按照预设流程执行任务。第三阶段，它能跨越不同的环境和系统去完成目标。第四阶段，它能自己写代码、自己造工具。第五阶段，它成了你的个人化分身，带着你的偏好和上下文去行动。第六阶段，它和其他Agent组成网络，自主协作，自动定价，完成你甚至没有明确描述过的任务。

这是一张描述**Agent能走多远**的地图。画得清晰，演进逻辑自洽，有现实产品作为坐标——Manus、OpenClaw、Claude Code，依次对应了这条路上的不同位置。

这张图有很高的价值。它让从业者知道自己现在在哪里，前面还有哪些台阶要跨。

但它没画另一件事。

* * *

## 这张图的盲区

能力边界，和授权边界，是两件不同的事。

Agent能做到第几阶段，和你决定让它做到第几阶段，不是同一个问题。

这听起来像废话，但在实践中，这两件事经常被当成一件事在处理。Agent能做，所以就让它做。能力到哪里，使用就跟到哪里。没有人停下来问：**等一下，这一步，是我们决定放出去的，还是它自己就跑过去了？**

这就是那个一直悬着的问题。

六阶段论描述的是油门的行程——Agent的油门能踩多深。但一辆车，不能只设计油门，不设计刹车。刹车不是用来阻止车跑的，是用来让司机决定车该在哪里停的。

判断工程关心的，正是那个刹车的设计。

* * *

## 权力转移是怎么悄悄发生的

从第一阶段到第六阶段，有一件事在同步发生，但六阶段论里没有把它单独画出来。

**人的裁定空间，在每一次升级里悄悄收窄。**

第一阶段，Agent只是回答问题。你问，它答，下一步怎么做完全由你决定。裁定权百分之百在你手里。

第二阶段，Agent开始执行流程。它按照预设的步骤走，你不需要在每一步做决定。裁定权开始转移——流程设计的时候你做了决定，但执行过程里你退出去了。

第三阶段，它跨越不同系统去完成目标。它调用的系统你可能根本没有意识到，它走过的路径你事后才能看到。裁定权进一步收窄。

第四阶段，它开始自己写工具。它发现现有工具不够用，就自己造一个。这一步非常微妙——造工具这件事本身，已经不在你原来的授权范围里了。你授权它完成任务，它自主决定用什么手段。

第五阶段，它成了你的个人化分身，带着你的偏好主动行动。它不等你发指令，它预判你的意图，提前做了。这时候，"谁做的决定"这个问题开始变得模糊。

第六阶段，Agent之间自主协作，自动定价，完成任务。这时候，中间发生了什么，你可能根本不在场。

这个收窄过程，没有仪式感。没有人在某个时刻站出来宣布："好，现在我们正式把这部分裁定权交给Agent了。"它就在一次次"这个让Agent来"的习惯里，悄悄完成了。

这正是判断工程最想让人看清楚的那条线。不是要阻止这个过程，而是让它从**隐性变成显性**。

* * *

## 在六阶段里问同一个问题

如果把判断工程的视角叠加进六阶段论，对每个阶段都问同一个问题：**此刻人还握着什么，已经放出去了什么，放出去之前有没有人想清楚过？**

会得到一张和能力地图非常不同的图。

**第一、二阶段**，裁定权的转移相对清晰。流程是人设计的，边界是人划的，Agent在边界内执行。这时候授权关系比较透明，出了问题知道去哪里找原因。

**第三、四阶段**，开始出现模糊地带。跨环境执行意味着Agent进入了你没有完整预见的场景；自主造工具意味着它的行动手段超出了你的原始授权范围。这两个阶段，是裁定权转移最容易被忽视的地方——能力提升带来的兴奋感，往往盖过了对授权边界的检查。

**第五、六阶段**，如果没有预先设计的授权框架，裁定权的转移就会变成一个无法追溯的过程。Agent Network里，任务在Agent之间流转，每一段流转都是一次小小的决策，累积下来，原始的人类意图可能早就在链条中间某个地方失真了。

这不是说第五、六阶段不能去。而是说，**到达那里之前，需要的不只是能力准备，还有授权准备。**

* * *

## 两张图都需要

六阶段论是一张能力地图，回答的是：Agent能走到哪里。

判断工程是一张授权地图，回答的是：Agent应该走到哪里，在哪里停，由谁来决定。

两张图都需要。只看能力地图，你知道Agent能去哪里，但不知道它应该停在哪里。只看授权地图，你知道边界在哪里，但不知道能力能不能支撑你想要的东西。

一辆车，油门和刹车都要设计。

更重要的是：这两个系统的设计，最好在出发之前就同步完成。不是等车跑起来了，才开始想刹车装在哪里。

六阶段的演进，还在继续。但每升一级，值得停下来问一次：**这一步，是我们决定放出去的，还是它自己跑过去了？**

如果你答得上来，就继续走。如果答不上来，那个问题就值得先搞清楚。

* * *

## 写在最后

张佳钇说，Agent的演进不是线性的，而是螺旋式上升的。

这句话我很认同。但螺旋式上升有一个隐含的前提：你得知道自己在哪一圈，往哪个方向转。

能力在升，授权的设计也要跟着升。能力跑在前面，授权跟不上，螺旋就会走形——不是上升，是失控。

这是六阶段论给我留下的那个悬着的问题，也是判断工程想回答的事。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。