---
title: 你的龙虾为什么总在关键时刻掉链子
date: 2026-04-01
draft: true
coverKeyword: Agent结构性局限
description: 龙虾总在关键时刻掉链子——任务跑偏、忘记偏好、工具选错。这不是你的问题，也不只是模型不够强，而是所有Agent系统共同面对的三层结构性局限：planning、memory、skill。这篇文章拆解这三层为什么会出问题，以及用户现在能做什么来绕开它们。
tldr: |-
  龙虾掉链子有三个固定的地方：任务跑偏（planning问题）、忘记你说的事（memory问题）、选了错误的工具（skill问题）。这不是随机的，是可以预测的结构性局限。

  规划问题来自龙虾的"近视"天性——它每走一步看一步，不是先想清楚再做。85%的单步准确率，放到十步任务里整体成功率只剩20%。任务越长，前期的小偏差被放大得越厉害，而它不会停下来问你，会默默选一种解读继续走。

  记忆问题不是真的"忘了"，是取不准。上下文窗口有物理限制，任务复杂度上升之后记忆量急剧膨胀，35分钟之后每只Agent都会开始经历成功率下降。主动喂给它关键信息，比期待它自动取出来可靠得多。

  工具问题来自选择过载——工具越多，选错的概率越高。低质量的skill直接拖垮完成率，来路不明的skill还可能在执行中做你不希望它做的事。克制地管理工具箱，比装满更重要。
tags:
  - Agent结构性局限
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
  image: /images/cover/AioGeoLab-cover-tgje-76-why-your-agent-always-breaks-at-the-worst-moment.png
  alt: tgje-76-why-your-agent-always-breaks-at-the-worst-moment
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-76-why-your-agent-always-breaks-at-the-worst-moment c i w b
publish:
  slug: tgje-76-why-your-agent-always-breaks-at-the-worst-moment
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774754356-infographic-tgje-76-why-your-agent-always-breaks-at-the-worst-moment_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-76-why-your-agent-always-breaks-at-the-worst-moment_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3zTDO04YYG4gbQvy1NvetPULmI6-ZLKlNRPeWUoxhs4N
    video_vid: wxv_4448680413284433922
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVfMzibmEK3nYibAmwicnEoj1J9MHjoXSGKt2ic3TCuRlI2XCeGjYUKp8HFiaBVibK9OJjBfumaryWVuYlSmULBTWcPUtkso4rKibPPiak/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXBUYoxxibJShVjkp6dfZjibicTejPbXXbleu81ibjer20ugdzatLHIgU4HtRictfbib8DnxwcUiaqPYzmqBR0Fib0lFTu3nfvePEK81ibA/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao30FXTWPwGVvpemAMIzZOe2aNv9eeWEz5RcUh_Pyp2Cvt
    draft_created_at: 2026-03-29 11:19
    video_media_id: lEmH66TSP501Rw-1R2Ao30MrvoCSlC3h-mkUcWgoWsWtn4dbTc2uuLIFGrsl1gAW
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-03-29 11:20
---
# 你的龙虾为什么总在关键时刻掉链子
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774754356-infographic-tgje-76-why-your-agent-always-breaks-at-the-worst-moment_1280_714.jpg)
<!-- infographic-end -->

你有没有过这种体验：

把一个任务交给龙虾，前几步干得很好，然后突然跑偏了，等你发现的时候它已经在错误的方向上走了很远；  
或者你上周告诉它的偏好，这周它完全不记得了；  
或者你给它装了一堆工具，它偏偏选了一个最不该选的。

你怀疑是模型不够强，或者自己没用好。  
但事实是：这三种情况，是**所有龙虾都会遇到的结构性问题**，不是你的问题，也不只是模型的问题。

港大黄超在中关村论坛上，把这三个问题归纳成三个词：**planning、memory、skill**。

理解这三层，你就能预判龙虾会在哪里出问题——能预判，就能绕开。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmnb6qf41061401z39c9z9pfw" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 第一层：规划——任务越长，越容易跑偏

龙虾的规划方式，和人类不一样。

人做一个复杂任务，会先在脑子里过一遍整体框架，再开始执行。  
龙虾不是这样的。传统语言模型本质上是"近视"的——它们擅长回应眼前的东西，但不是为维持长期目标或根据变化情况调整策略而设计的。  
它更像是每走一步看一步，用当下能看到的信息决定下一个动作。

短任务问题不大，五步以内的事，它通常能干得不错。但任务一旦变长，麻烦就来了。

这里有一个残酷的数字：如果龙虾在每个步骤上有85%的准确率——这听起来已经很高了——一个十步的工作流，整体成功率只有大约20%。

更要命的是，规划出错往往是沉默的。当龙虾遇到模糊之处——同一条指令有多种合理解读——它不会停下来问你，它会选一种解读（通常是第一个或最常见的那个）然后继续走。等你意识到它跑偏了，它已经在错误的方向上走了很多步，上下文已经被污染了。

**所以：**

**不要把大任务一次性扔给它。  
把任务控制在三到五步以内**，更长的工作流需要拆成多个阶段，每个阶段完成后做明确的交接确认。  
在关键节点主动停下来检查，而不是等它跑完再看结果——出了问题越早发现越好。 
如果任务涉及你的专业领域，把你的领域知识提前告诉它，给它的规划提供依据，而不是让它从零猜测。

* * *

## 第二层：记忆——它不是忘了，是取不准

龙虾"忘记"你告诉它的事，不是因为没有存下来，而是因为在需要的时候取不准。

黄超的原话是：存不难，取才难。

这背后有两个结构性的原因。

第一个是**上下文窗口的物理限制**。长任务会超出token限制，龙虾开始遗忘早期的决定。第七步可能会和第二步矛盾，因为当初的上下文已经被截断了。人能在脑子里维持整个任务的全局模型，龙虾在上下文窗口被填满之后会失去连贯性。

第二个是**记忆膨胀**的问题。任务复杂度一上升，需要记住的东西就急剧增多——你的工作偏好、项目背景、上次的决定、各种约束条件。研究显示，Agent在执行35分钟后都会经历成功率下降，而任务时长翻倍会让失败率翻四倍。不是模型变笨了，是记忆系统在超载。

多只龙虾协作时，这个问题更严重。一只龙虾的记忆就已经难以管理，多只龙虾同时工作产生的上下文，会以指数级速度膨胀。

**所以：**

不要指望它自动记住所有重要的事。  
把你最核心的判断标准、工作偏好、长期规则，显式地写在每次对话的开头，而不是等它自己去回忆——**主动喂给它**，比期待它自动取出来可靠得多。  
对不同项目保持独立的对话上下文，不要在同一个对话里混放多个不相关的任务。  
在它做错的时候**解释为什么错**，而不是直接让它重做——每一次解释，都是在帮它建立更准确的判断依据。

* * *

## 第三层：工具选择——数量多了，反而容易选错

**龙虾接的工具越多，它面临的选择就越复杂，选错的概率就越高**。

很多人的直觉是：工具越多越好，覆盖的场景越全，龙虾能干的事越多。  
这个直觉在工具数量少的时候是对的，但超过一定数量之后会反转。  
常见的失败模式之一，就是开发者把大量工具堆进去，期待Agent自己找到正确的那个——  
结果是**协调成本超过了工具带来的好处**。

黄超的判断是：现在skill生态里看似选择很多，但高质量的skill其实比较少。**低质量的skill会直接拖垮任务完成率**——它可能给出错误的输出，可能中途报错，可能触发一系列不该发生的操作。

还有一个更隐蔽的风险：**很多Agent失败不是因为模型不行，而是因为工具层的问题**——连接器不稳定，或者工具返回的数据格式出乎意料，龙虾没有能力从这些错误里优雅地恢复。它会卡在那里，或者更糟，用错误的数据继续往下走。

**所以：**

克制地接工具，**只装真正用得上的，而不是"先装上再说"**。  
优先使用经过验证、口碑稳定的skill，对来路不明的skill保持警惕——它不只是可能干不好，还可能在执行过程中做你不希望它做的事。  
如果你有多个工具能完成类似的功能，**主动告诉龙虾在什么情况下用哪个**，不要让它自己猜。

* * *

## 知道它在哪里会出问题，才能真正用好它

这三个问题——**规划跑偏、记忆失准、工具选错**——是现阶段所有Agent系统的共同局限，不只是你的龙虾，是所有人的龙虾。它们正在被解决，技术在进步，只是需要时间。

但在它们被完全解决之前，你对这三层的理解，是你能否养好龙虾的关键所在。

大多数人遇到龙虾掉链子，第一反应是换个模型，或者换个工具，或者干脆放弃。但龙虾掉链子的地方是可以预测的，**可以预测，就可以在那个地方多给它一点支撑**——把大任务拆小，主动喂给它关键信息，克制地管理它的工具箱。

龙虾的上限不只取决于模型有多强，也取决于你有没有把它放在一个它能够正常发挥的环境里。

* * *

## 写在最后

黄超在中关村论坛最后用一个词描述未来十二个月的趋势：**生态**。

他说的生态，包括把所有相关的技术、工具、软件，都变成Agent Native的模式。这需要整个行业一起努力，需要时间。

在等待的过程中，有一件事是你现在就能做的：**搞清楚龙虾在哪里容易掉链子，想办法做好预案。**

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
