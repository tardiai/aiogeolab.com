---
title: Agent做完了，但它不知道自己做对了没有丨反馈环：执行链里那个被默认跳过的环节
date: 2026-05-17
draft: true
coverKeyword: Agent"回头看"机制
description: Agent执行完任务，不代表任务做对了——它没有内置的"回头看"机制，不会自己发现错误。本文拆解反馈环（Reflection）的底层逻辑，呈现从自检型、双Agent型到迭代循环型的三种设计形态，并以OpenClaw与Hermes的真实实现为例，说明反馈环不是固定的解，而是需要根据目标做出的设计选择。
tldr: |-
  Agent执行完任务就停下来，不会自己检查结果对不对——它没有预期，没有校对本能，只有线性向前的执行逻辑。"做完"和"做对"之间的那段距离，默认由人在下游承担。

  反馈环（Reflection）就是在执行结构里显式设计一个"回头看"的节点。三种形态从轻到重：自检型（同一个Agent自审）、双Agent型（专门的评估Agent独立审核）、迭代循环型（不通过就修正，直到达标或触发终止条件）。

  OpenClaw和Hermes给出了两种不同的答案：OpenClaw的反思是任务结束后把经验沉淀为Skill，Hermes的nudge机制在会话中实时触发自检，GEPA引擎跨任务分析失败原因并进化。一个重经验积累，一个重持续验证。

  反馈环不是越复杂越好，是风险越高代价越大的任务越值得设计。把它建进执行结构，错误就在内部消化；跳过它，错误就在下游爆发。
tags:
  - Re
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
  image: /images/cover/AioGeoLab-cover-tgje-121-reflection-loop-how-agents-check-their-own-work.png
  alt: tgje-121-reflection-loop-how-agents-check-their-own-work
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-121-reflection-loop-how-agents-check-their-own-work c i w b
publish:
  slug: tgje-121-reflection-loop-how-agents-check-their-own-work
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/05/1778894832-infographic-tgje-121-reflection-loop-how-agents-check-their-own-work_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-121-reflection-loop-how-agents-check-their-own-work_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3yqaDA27mx94dkHpHM9XL2-2wgke2C7p5sDHEqV-ojTr
    video_vid: wxv_4518145225021980687
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXLJZLWmdGDQ0O8lrf0RIp61er6PKkym4RBEjASvW1gmYbSARYFVTPvgDMX1H46kkTPnKokyiahInrH0ZcZAIKEicfPtgCxiaiaKic4/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWBuDJic6V0bMbyecYGkKhxJSF9LhLdEoMUZXMtQGHZgicKY8CVeUMd9zJ7e0ia2icktjbygYy8edLFASNoVjvTnicxtjmDwAiaQawoA/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao30sCzQbXRSxvs-Ylp7xMhtmp6Oa2hKAvp5Uir9JlVMq9
    draft_created_at: 2026-05-16 09:27
    video_media_id: lEmH66TSP501Rw-1R2Ao3ztzvvGK_Ei1aC3L4p6KQ-5lcrEeATHsrT027jLnHHVY
  wx_article:
    digest: null
    original: false
    comment: true
---
# Agent做完了，但它不知道自己做对了没有丨反馈环：执行链里那个被默认跳过的环节
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/05/1778894832-infographic-tgje-121-reflection-loop-how-agents-check-their-own-work_1280_714.jpg)
<!-- infographic-end -->

你做完一件事，会不会回头看一眼？

大多数人会。不是因为有人要求，是因为人有一种内置的校对本能——结果和预期对不上，会有一种微微不对劲的感觉，驱动你再看一遍。这个机制太自然了，自然到你甚至不会注意到它的存在。

Agent没有这个感觉。

它做完了就做完了。执行链跑到终点，输出交付，任务关闭。没有"不对劲"，没有回头看，没有"等一下，这里好像有点问题"。除非你在结构里显式设计一个检查节点，否则这一步永远不会发生。

**这不是Agent不够聪明，是执行结构里默认缺少一个环节：反馈环。**

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmp7nyw2n02z001uec3yoeyv7" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 为什么Agent默认不会"回头看"

人的校对本能，背后是一套复杂的机制：你有对目标的记忆，有对"这件事做成什么样算对"的预期，有当结果和预期不符时产生的认知张力。这种张力驱动你停下来检查。

Agent没有这套机制的任何一层。

它没有独立于任务之外的"预期"，只有指令。它没有完成之后仍然运作的目标感，只有下一个Token。它的执行逻辑是前向推进的：当前步骤产出，传入下一步骤，直到链条跑完。跑完就停，不回头。

这和前面讲的"沉默失败"直接相关。**沉默失败之所以沉默，正是因为Agent没有内置机制去发现自己失败了。** 它做完了，它"成功"了，然后结果是错的，没有任何报警。

要改变这件事，不能靠换一个更聪明的模型。要靠在执行结构里主动设计一个"回头看"的节点——这就是反馈环（Reflection）。

* * *

## 反馈环是什么：给执行链装一面镜子

Reflection，直译是"反思"，在Agent执行结构里的含义更具体：在执行流程中插入一个自检节点，让Agent评估自己的输出是否符合要求，发现问题则修正，然后再交付。

它改变的不是Agent的能力，是执行的结构。

没有反馈环的执行链是一条单向的流水线：输入→执行→输出，结束。有了反馈环，流水线多了一个弯：输入→执行→自检→（发现问题则）修正→输出。

这个弯不是装饰。它的价值在于：**让错误在执行链内部被捕获，而不是流出去由人在下游发现。** 发现得越早，修正的代价越低。

* * *

## 三种形态：从简单到复杂

反馈环没有唯一的实现方式。根据任务复杂度和成本预算，有三种主要形态。

**形态一：自检型**

最简单的做法：Agent完成输出之后，用一个独立的prompt让它回头评估自己的结果。"你刚才的输出有没有遗漏？有没有不符合要求的地方？如果有，修正后重新输出。"

同一个Agent，做完之后换一个角色审查自己。成本最低，上手门槛最低，适合中等复杂度的任务。

局限是真实的：用同一个Agent自检，容易受执行过程中形成的思路影响。它按某个逻辑做完了一件事，再用同样的思路去检查，可能仍然觉得没问题——因为它的"问题标准"已经被执行过程塑造过一遍了。

**形态二：双Agent型**

执行Agent负责做，评估Agent负责审。两者独立，评估Agent没有参与执行过程，视角更干净，更容易发现执行Agent的盲点。

这是目前主流Agent框架处理高质量输出任务的常见做法。代价是双倍的模型调用成本，但换来的是更可靠的错误捕获。适合质量要求高、错误代价大的任务——文件的修改、外部系统的写操作、需要对外交付的内容。

**形态三：迭代循环型**

执行→评估→不通过则修正→再评估→再修正→直到通过或达到重试上限。

这是三种形态里最强的，也是最贵的。Token消耗随迭代次数倍增。**而且必须设终止条件。** 没有终止条件的迭代循环，就是前面（执行链上的五种断裂模式）讲的失控循环——Agent卡在里面，不停重试，时间和Token持续消耗，直到超时。最大迭代次数是硬性要求，不是可选项。

* * *

## 两个产品，两种不同的答案

OpenClaw和Hermes都把Reflection设计进了执行结构，但两者的理解完全不同。放在一起看，能清楚地说明反馈环不是一个固定的解，而是一个需要根据目标做出选择的设计决策。

**OpenClaw：反思是为了下一次**

OpenClaw的执行哲学是"do, learn, improve"——做、学、改进。任务完成之后，Agent进入一个反思阶段，分析这次任务的执行过程，把值得记录的经验自主生成为可复用的Skill文件，供以后的任务调取。

它的反思不是为了验证当次结果的正确性，而是**为了把这次的经验沉淀成下次的能力**。重点在学习和积累，不在当次纠错。

**Hermes：反思是一个持续运行的机制**

Hermes的Reflection更主动，有两个层次同时运作。

第一层是**会话内的定期自检**。Hermes内置一个"nudge"机制（微推机制）——在会话进行过程中，系统在设定的时间间隔主动向Agent发出一个内部提示，要求它回顾最近发生的事情，判断有没有值得写入记忆的内容，以及当前任务是否已经真正完成。这个触发不需要用户发起，Agent自己在做。触发条件具体：五次以上工具调用、从错误中恢复、用户做了纠正、走通了一个非常规流程——任意一条满足，就值得记录。

第二层是**跨任务的系统级进化**。GEPA引擎（Genetic-Pareto Prompt Evolution，来自ICLR 2026 Oral论文）每15次工具调用评估一次近期表现，读取执行轨迹，分析的不只是"失败了"，而是"为什么失败"，然后提出针对性的Skills和Prompt改进方案。这是超出单次任务反思的、系统级的自我进化。

两者的差异用一句话概括：**OpenClaw的反思是任务结束后的经验提炼，Hermes的反思是贯穿执行过程的实时机制。** 前者更轻，后者更持续。选哪种，取决于你更在意当次任务的验证，还是跨任务的长期积累。

* * *

## 什么时候值得设计反馈环

反馈环不是越复杂越好。每一层自检都是真实的Token消耗，迭代循环更是成本倍增。该不该设计，设计多重，取决于任务本身的风险。

**结果难以在外部即时验证**——值得设。如果输出对不对，没有明确的外部信号来告诉你，内部自检是唯一的防线。等到下游出问题再发现，成本已经不同了。

**错误代价高、操作不可逆**——值得设。可逆的操作出错还能改，不可逆的操作出错就是结果。对外部系统的写操作、涉及真实资源的调用，Reflection应该是标配而不是选配。

**任务步骤多、链条长**——值得设，而且要设在中间，不只在结尾。链越长，误差积累的空间越大。等到链条跑完再检查，前面十步的错误已经被后面的步骤继承和放大了。在关键节点设检查点，比在终点设一个大检查更有效。

**Token和时间预算充裕**——可以设更重的形态。反馈环是用资源换可靠性，预算紧张时做好取舍，优先把资源给最高风险的节点。

* * *

## 写在最后

Agent执行链的设计，通常花了很多力气在"怎么让它跑起来"，但"跑完之后怎么知道跑对了"这个问题，经常被默认跳过。

反馈环填的就是这个空缺。它不是让Agent变聪明，是给执行链装一面镜子——让Agent在交付结果之前，有机会看一眼自己做了什么。

**从"跑完交差"到"跑完验收"，中间差的那一步，就是反馈环。**

这一步设计进去，错误在内部消化；没有设计，错误在下游爆发。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。

