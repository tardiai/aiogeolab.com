---
title: Agent越来越聪明，但翻车率并没有减少丨Harness Engineering
date: 2026-04-17
draft: false
coverKeyword: " Agent执行环境设计"
description: 聚焦Harness Engineering这一2026年正在成为Agent生产实践核心的新兴工程纪律。从凌晨三点的Agent失控场景出发，完整介绍Harness的定义、前馈与反馈两个核心机制、计算型与推理型两类实现方式，并给出从已有失控点开始迭代构建Harness的实践路径。适合已经在真实场景中使用Agent、正在从Demo走向生产的实践者。
tldr: |-
  Agent够聪明了，但在生产环境里还是会翻车——重试循环、格式不符、任务跑偏、无人察觉的错误积累。排查之后发现Prompt没问题、模型没问题、工具调用也没问题。出问题的是执行环境。

  Harness Engineering是继Prompt Engineering和Context Engineering之后的第三层：不改变Agent本身，改变它跑在什么样的环境里。核心是两个机制——Guide在行动前把约束装进环境，提高第一次就做对的概率；Sensor在行动后观察结果，让Agent能够自我纠正。两者缺一不可，只有反馈而没有前馈，Agent每次都从错误开始，靠事后补救维持质量。

  实现上，计算型处理能明确定义的问题，推理型处理需要语义判断的边界情况。OpenAI用这套思路让Codex在无人工写代码的约束下交付了超过100万行的产品——关键不是模型多强，是Harness设计得多完整。

  起点不需要从头设计。找出你的Agent最常在哪里失控，先加一个Sensor，确认有效后往前加Guide，循环迭代。每一次迭代都是在把隐性工作经验转化成显性环境设计，这些积累比任何一次Prompt优化都更持久。
tags:
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
  image: /images/cover/AioGeoLab-cover-tgje-91-harness-engineering-the-missing-layer.png
  alt: tgje-91-harness-engineering-the-missing-layer
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-91-harness-engineering-the-missing-layer c i w b
publish:
  slug: tgje-91-harness-engineering-the-missing-layer
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1776320240-infographic-tgje-91-harness-engineering-the-missing-layer_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-91-harness-engineering-the-missing-layer_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao37IAknww5nPGelDUAouJlMIrQixDlHjnLBAb48MMr8In
    video_vid: wxv_4474947542999891973
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXVTibIdbY6vzdXyLJo3FGaYEuzxa5M2AbHk7FlqR4LiayFxiawysXmoZw0rTrMc4YibzSvd7PBXiaK8x01hib1AkkMyx4DOlpOCfSiao/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXibX948xAqetJcfAvDHOGEfqHwJTWE6ic66sTh7XM6td2Pv7lo3soUEE0mbgqRMon8VUK9Miavc4icaFOkmtdM8zsU2ojvHlbvs3k/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3273E8I-fu0cdbUG5U9J8KwKGvxR-awJeEUyhuU4pFcy
    draft_created_at: 2026-04-16 14:18
    video_media_id: lEmH66TSP501Rw-1R2Ao33Mkr72FDPCTJYd9M2vSVXJ_r8WE9DYmcoEMqL19enfk
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-04-16 14:18
---
# Agent越来越聪明，但翻车率并没有减少丨Harness Engineering
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1776320240-infographic-tgje-91-harness-engineering-the-missing-layer_1280_714.jpg)
<!-- infographic-end -->


凌晨三点，没有人在盯着屏幕。

Agent已经独立跑了四个小时。任务是爬取一批竞品数据，整理成报告。Prompt写得很细，模型用的是最新的，工具调用逻辑也测试过。

然后它撞上了一个接口限流报错。

它重试了。又报错。又重试。就这样循环了两个小时，直到你早上起来看到账单通知，才发现它还在原地转圈。数据没有，报告没有，Token烧了一大笔。

你去排查，Prompt没有问题，模型没有问题，工具调用逻辑也没有问题。

出问题的是没有人提前设计：遇到这种情况，它该怎么办。

这就是Harness Engineering要解决的事。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmo12w22q036p01ud9v5rbkmj" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## Harness在哪一层

在聊Harness之前，需要先说清楚它在哪里。

做过Agent实践的人，大概都经历过这样的演化路径。

最开始是Prompt Engineering。你发现怎么说话决定了模型给你什么，于是开始认真设计指令——语气、格式、例子、约束。这一层解决的是"单次对话质量"的问题。

然后你发现光靠Prompt不够。模型没有记忆，不知道你的背景，不了解你的工作方式。于是你开始认真管理Context——把相关文档、历史记录、用户偏好喂给它，让它在正确的信息环境里工作。这是Context Engineering，解决的是"模型看到什么"的问题。

但当Agent开始真正自主运行——不是一问一答，而是连续执行几十步、跑几个小时、调用几十个工具——你会遇到一类新问题：它够聪明，但不够可靠。它能做对，但你不知道它什么时候会做错，也不知道做错了能不能自己发现。

这是Prompt Engineering和Context Engineering都解决不了的问题。

Harness Engineering是第三层。它解决的不是"模型怎么想"，也不是"模型看到什么"，而是**Agent跑在什么样的环境里**。

三层不是替代关系，是叠加关系。Harness建在Prompt和Context的基础上，处理的是更长时间、更高自主度下的可靠性问题。

* * *

## Harness是什么

一个简洁的定义：**Harness = Agent之外的一切执行环境设计。**

模型是Agent的大脑。Harness是大脑工作的整个环境——约束、工具、反馈机制、纠错路径。你不改变大脑本身，你改变它跑在什么样的条件下。

Harness有两个核心机制，方向相反，缺一不可。

**第一个是Guide，前馈控制。**

Guide的逻辑是：在Agent行动之前，就把约束和规范装进环境，让它第一次就做对的概率更高。

一个具体的例子。你的Agent在写代码时总是引入某个被禁止使用的库。你可以每次等它写完再纠正，也可以在规范文档里提前写清楚"这个库禁止使用，原因是X，替代方案是Y"——Agent读到这份文档，在动手之前就知道边界在哪里。这就是Guide在起作用。

Guide是防患于未然的机制。它不等错误发生，它把"怎么做对"的信息提前放在Agent能看到的地方。

**第二个是Sensor，反馈控制。**

Sensor的逻辑是：Agent行动之后，观察结果，发现问题，触发自我纠正。

还是那个例子。就算有了Guide，Agent在某些边界情况下还是可能引入了不该用的库。Sensor——比如一个lint检查脚本——发现了这个问题，把错误信息以Agent能理解的方式返回给它，触发自我纠正。这次任务的问题被发现并修复了，不需要人工介入。

Sensor是兜底机制。它处理Guide没有覆盖到的漏网之鱼。

**两者为什么缺一不可？**

只有Sensor、没有Guide：Agent每次都从错误开始，靠发现再纠正。这次改对了，下次遇到同样情况还是会先出错——因为"该怎么做"从来没有被提前装进环境里。等于每次都在重走同一段弯路，靠事后补救维持质量。

只有Guide、没有Sensor：约束装进去了，但没有观察机制验证它是否真的在起作用。Agent可能在某些情况下绕过了Guide，或者Guide本身有盲区，但你无从察觉——错误在无人知情的情况下积累。

两者配合，才能形成一个完整的执行环境：Guide提高第一次做对的概率，Sensor兜底处理剩余的偏差。

* * *

## 两类实现方式：计算型和推理型

Guide和Sensor各自有两种实现方式，混合使用才能覆盖真实场景的复杂度。

**计算型**：确定性的，由CPU执行，速度快，结果可预期。静态分析、lint规则、单元测试、pre-commit hooks、CI脚本——这些都是计算型的Sensor和Guide。它们处理能够被明确定义的问题：这段代码有没有语法错误、这个函数有没有被正确调用、这个格式是否符合规范。

**推理型**：用模型来判断，慢但灵活。原则性的规范文档、架构约束说明、review agent——这些是推理型的Guide和Sensor。它们处理需要判断的边界情况：这个设计决策是否符合我们的架构方向、这段逻辑在语义上是否正确、这个方案是否有潜在的安全风险。

实践中，计算型和推理型需要配合使用。能明确定义的问题交给计算型，快速、确定、零额外Token消耗；需要判断的问题交给推理型，灵活但成本更高。用计算型处理高频的明确问题，把推理型的资源留给真正需要语义判断的地方——这是Harness设计里最重要的资源分配原则之一。

* * *

## 一个值得认真看的案例

2026年初，OpenAI用Codex agent在一个严格约束下完成了一次内部实验：整个项目超过100万行代码，期间没有工程师手工写一行。

这个案例常被引用来说明模型有多强。但真正值得关注的不是模型，是他们建了什么样的Harness。

测试执行、CI验证、风格检查、文档更新，全部自动化，构成了一套完整的计算型Sensor网络。Agent在这个环境里跑，每一步的输出都会被验证，发现问题立即触发自我纠正，不需要人工介入。工程师的工作从写代码变成了设计这套环境，以及审查最终结果。

这个案例说明的不是"Agent能写代码"。说明的是：**一个足够好的Harness，可以让Agent在无人监督的情况下可靠地完成极其复杂的任务。**

反过来说也成立：没有Harness，再强的Agent在生产环境里也是不可预测的。

* * *

## 从哪里开始

Harness Engineering听起来是一个需要从头设计的大工程，但实践里不需要这样。

最有效的起点，是从你已经踩过的坑开始。

**第一步：找出你的Agent最常在哪里失控。**

不需要理论分析，看你的使用记录。重试循环、格式不符合要求、调用了不该调用的接口、生成了需要大幅返工的内容——这些高频失控点，就是你的Harness最需要覆盖的地方。

**第二步：针对那个失控点，先加一个Sensor。**

让Agent能够观察到自己的输出是否符合预期。Sensor不需要复杂，一个能返回有意义错误信息的检查脚本，就足以让Agent开始自我纠正，而不是把问题留给你。

**第三步：确认Sensor有效之后，往前加对应的Guide。**

把"该怎么做"的信息提前装进环境。规范文档、约束说明、示例——任何能让Agent在第一次就做对的东西，都是有效的Guide。

**第四步：循环迭代。**

Harness不是一次性建完的。每次Agent出现新的失控模式，就是Harness需要升级的信号。随着使用时间增长，你的Harness会越来越能覆盖真实场景的边界情况，Agent的可靠性也会随之提升。

这个过程有一个副产品：你对自己工作流的理解会越来越深。每一次给Harness加一个Guide或Sensor，都是在把隐性的工作经验转化成显性的环境设计。这些积累，比任何一次Prompt优化都更持久。

* * *

## 写在最后

Harness Engineering的本质，是一次视角转换。

从"怎么让Agent更聪明"，到"怎么让Agent跑在更好的环境里"。

模型会继续变强，这是确定的。但一个没有Harness的强模型，在生产环境里依然是不可预测的——因为它的聪明解决不了环境给它出的题：遇到报错该怎么办、边界情况怎么处理、做错了怎么发现、失控了怎么停下来。

这些问题的答案，不在模型里，在Harness里。

Agent从Demo走向生产，Harness是最后一公里。也是最容易被跳过的一公里。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。