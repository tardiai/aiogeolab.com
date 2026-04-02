---
title: 光有裁定权还不够：Harness Engineering丨判断工程的另一半
date: 2026-04-05
draft: true
coverKeyword: 完整的AI治理框架
description: 裁定机制设计好了，Agent在执行中还是会漂移——这是判断工程解决不了的问题。本文介绍Harness Engineering：从三层演化（Prompt→Context→Harness）到三根支柱（Context工程、架构约束、熵管理），再到它与判断工程如何构成完整的AI治理框架。两者合在一起：判断工程划边界，Harness Engineering守边界。缺一个，AI治理都是半成品。
tldr: |-
  裁定权划清楚了，Agent在执行中还是会漂移。这不是权力边界的问题，是执行环境的问题——需要另一套框架来解决。

  Harness Engineering是这套框架的名字。从Prompt到Context到Harness，三层递进，最外层的Harness管的是整个执行系统：架构约束拦截错误、Context工程保证信息环境、熵管理定期清理漂移。没有Harness的Agent速度是虚假的速度。

  Harness和判断工程不是替代关系，是互补：判断工程划边界，Harness Engineering守边界。两套框架合在一起，才是完整的AI治理框架。

  AI治理不靠信任，靠设计。这是两套框架共同的底层逻辑，也是判断工程系列一直在说的那件事。
tags:
  - HarnessEngineering
  - 治理框架
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
  image: /images/cover/AioGeoLab-cover-tgje-80-harness-engineering-the-other-half-of-judgment.png
  alt: tgje-80-harness-engineering-the-other-half-of-judgment
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-80-harness-engineering-the-other-half-of-judgment c i w b
publish:
  slug: tgje-80-harness-engineering-the-other-half-of-judgment
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1775116655-infographic-tgje-80-harness-engineering-the-other-half-of-judgment_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-80-harness-engineering-the-other-half-of-judgment_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao38lJMeDps2s4WNcY4A4eLT71OfkAG7XQnqP11zfxojQ1
    video_vid: wxv_4454747196256927747
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNU7QRyfPc1ITtCVUY5dicbgEN9SaqWgVLCq1x1cDznDicrfEx1Xic6iaQddrricD18wWoI26WokFanKOkibOcEQYolxwzhttqEYGTHcI/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVYHtwN1UQIibvXo5lSZlicUAd1DVDhHN3Tl5O4SSZE7tu1ANUR9jJOD45NsZtLdOjvAHFbSSZMKehAn7dADbJNpTfeMHQCxd90M/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao39z35vTHqzjQl11-A_mEidaf4FqlaurwnFAcGk5FqXtv
    draft_created_at: 2026-04-02 15:58
    video_media_id: lEmH66TSP501Rw-1R2Ao337XZJUO-oto29c9S1XlVNaoPYCaKVhAT3Aeq4fl9T7n
  wx_article:
    digest: null
    original: false
    comment: true
---
# 光有裁定权还不够：Harness Engineering丨判断工程的另一半
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1775116655-infographic-tgje-80-harness-engineering-the-other-half-of-judgment_1280_714.jpg)
<!-- infographic-end -->

Agent能力越强，一个问题就越绕不开：

你把权力边界划清楚了，裁定机制也设计好了，但Agent在实际执行过程中还是会出问题。不是越界的问题，是跑着跑着跑偏了——工具调用出错、上下文膨胀导致遗忘、多个Agent协作时指令漂移、一个环节的小错误被下一个环节放大成大错误。

这些问题，裁定机制解决不了。

Mitchell Hashimoto，Terraform的作者、HashiCorp联合创始人，全球最有影响力的基础设施工程师之一，最近在博客里描述自己现在每天的工作状态：每次发现AI犯错，他不去调教它，而是搭一套系统，让它以后再也犯不了这个错。

他给这件事起了个名字：Harness Engineering。

这个词在2026年初开始在工程师圈子里流传，OpenAI和Anthropic随后都开始正式使用这个术语。它描述的，是判断工程之外的另一半——**不是管权力在哪里，而是管执行环境是什么。**

两者合在一起，才是完整的AI治理框架。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmnh67ws405tm01v214b3ecdx" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 从提示词到系统：三层进化

要理解Harness Engineering是什么，得先把它放在一个演化序列里看。

**第一层是Prompt Engineering**，写好提示词，优化单次交互。这是大多数人接触AI的起点。Jeff Huber，前Google Cloud AI负责人，说得很直接：提示词工程解决的是"一次对话"的问题，本质上是在脚本层面做修补。

**第二层是Context Engineering**，管理模型在执行任务时能看到什么。不只是写好提示词，而是设计整个信息输入的结构——知识库怎么组织、动态上下文怎么注入、模型在不同阶段需要看到什么。我们在Context篇里讲过：没有喂好Context的龙虾，每天都在失忆。这一层解决的是"信息环境"的问题。

**第三层是Harness Engineering**，整个执行系统的设计。工具怎么约束、错误怎么拦截、漂移怎么纠正、多Agent协作怎么保持一致性。这一层解决的是"Agent在复杂任务中长期可靠运行"的问题。

三者是包含关系，不是并列。Prompt在最里层，Harness在最外层，把前两层都包进去。

Philipp Schmid，Hugging Face的机器学习工程师负责人，给了一个很干净的类比：模型是CPU，上下文窗口是有限的工作内存，Harness是操作系统。光有芯片没用，没有操作系统管理资源调度和进程，CPU跑不起来任何有用的东西。

* * *

## Harness的三根支柱

Martin Fowler，软件工程领域最有影响力的思想家之一、《重构》作者，在读完OpenAI的Harness Engineering实践后，把这套东西归纳成三根支柱。

**第一根：Context Engineering**

不是泛泛的"给模型看信息"，而是把执行过程中Agent需要的一切都结构化、版本化、放进它能访问的地方。

OpenAI的Codex团队发现了一个关键规律：从Agent的视角来看，任何它在运行时无法在上下文里访问到的东西，实际上等于不存在。那个在Slack里对齐了架构方向的讨论，那个存在某人脑子里的设计原则——如果没有被写进代码库里，对Agent来说就跟没发生过一样。

这跟一个新员工入职三个月后拿到一堆历史遗留代码的处境完全一样。区别是人会主动去问，Agent不会。

**第二根：Architectural Constraints**

用确定性的规则把错误挡在发生之前。自定义Linter、结构测试、依赖方向约束——违反规则的代码直接报错，Agent自己修正，不需要人介入。

OpenAI的实践里有一条规则的例子：依赖关系只能按固定方向流动，Types → Config → Repo → Service → Runtime → UI，任何违反这个方向的调用，结构测试直接拦截。Agent在这个框架内工作，想犯某类错误都犯不了。

这背后是一个反直觉的洞察：**想让AI可靠，不是给它更多自由，而是给它更窄的解空间。** Fowler说得很准：增加信任和可靠性，需要约束解空间。

**第三根：Entropy Management**

Agent系统跑久了，会产生熵——重复的代码、不一致的模式、AI自己复制的次优实现在整个代码库里蔓延。OpenAI把这个叫"AI slop"。

最初他们用人来清理，每周五专门花20%的时间做这件事。很快发现这不可持续。后来的解决方案是：建一个专门的清理Agent，定期跑一遍，按照预设的"黄金原则"把漂移的部分拉回来。

另一个Agent来清理Agent产生的熵。这个设计本身就是Harness Engineering思维的体现——把维护行为也系统化，而不是留给人来救火。

* * *

## 一组数字说明差距

Anthropic内部做过一个对比测试，用来验证Harness对实际结果的影响。

同一个任务，两种方式跑：

单个Agent独立执行，20分钟，花费9美元，产出看起来完整——打开之后发现核心功能报错，没法用。

加上完整Harness的多Agent系统，6小时，花费200美元，产出可以真正运行，核心功能可用。

时间长了13倍，成本高了20倍，但结果从"看起来完整"变成了"真正可用"。

这个对比揭示了一个重要的认知校正：**没有Harness的Agent速度，是虚假的速度。** 快速产出一个坏结果，不是效率，是浪费。Harness让Agent变慢、变贵，但让结果第一次变得真实可交付。

* * *

## 一个容易被忽视的风险：过度工程化

Harness Engineering有一个还没有被广泛讨论的内在风险。

模型在持续进化。今天需要复杂Harness才能解决的问题，下一个模型版本可能原生就能处理。如果Harness里的控制逻辑过度依赖当前模型的特性，新模型一出来，整套Harness可能反而成了障碍。

工程社区里已经有人在讨论这个问题：Harness要保持轻量、可替换——能撕掉重建，而不是越堆越厚。过度工程化的Harness，会把你锁在某个模型版本的局限里。

这不是反对建Harness，而是提醒Harness的设计哲学：**建约束，不建依赖。**

* * *

## 和判断工程的关系：完整的AI治理框架

现在把两套框架放在一起看。

**判断工程**解决的是权力边界的问题。AI能自主做什么决定，哪条线必须人来裁定，裁定的触发条件是什么，责任归属怎么划。这是组织层面的设计——在AI和人之间，谁说了算，什么时候谁说了算。

**Harness Engineering**解决的是执行环境的问题。Agent在什么约束下运行，犯了错怎么被系统自动拦截，长期执行中的漂移怎么被纠正，多Agent协作怎么保持一致。这是系统层面的设计——Agent在执行过程中，怎么被环境约束在正确的轨道上。

两者的关系不是替代，是互补：

判断工程**划边界**——告诉系统哪里是禁区，哪些决定必须人来做。

Harness Engineering**守边界**——用约束、反馈、熵管理，确保Agent在执行中不会悄悄漂移出去。

边界划好了但没有守护机制，Agent会在你没注意的时候一点点越界，每次越界幅度很小，累积起来是大问题。守护机制建好了但边界没划清，Agent在错误的方向上跑得越来越稳，越稳越难纠正。

**缺一个，AI治理都是半成品。**

* * *

## 写在最后

Hashimoto有一句话值得记下来：

"每次发现Agent犯错，不要急着去修它的输出。而是想清楚：是什么能力缺失了，怎么把这个缺失变成系统里的一条规则。"

这句话背后的思维转变，是从"驯服AI"到"为AI铺路"。不是去调教模型让它别犯错，而是把"不犯这个错"建进环境里，变成一条它无法违反的约束。

判断工程在做同一件事的另一面：不是依赖AI的自觉，而是把权力边界设计成系统结构，让越界在机制上变得困难。

两套框架，一个核心思路：**AI治理不靠信任，靠设计。**

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
