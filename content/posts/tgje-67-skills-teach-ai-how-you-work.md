---
title: Skills：让AI真正懂你的工作方式
date: 2026-03-23
draft: true
coverKeyword: Skills是菜谱
description: 每次对话从零开始是AI使用中最持久的隐性摩擦，Skills是Anthropic给出的解决方案——一个装着你工作方式的文件夹，自动触发、无需手动调用。本文拆解Skills的核心机制（渐进式三层加载）、和MCP的本质区别（菜谱vs厨具）、开放标准带来的跨平台价值，以及不能忽视的供应链安全风险。
tldr: |-
  每次对话都要重新交代背景，这不是AI不够聪明，是架构限制。Skills把你的工作方式固化成文件，让AI自动调用，不用每次从零开始。

  Skills最聪明的设计是渐进式加载：启动时只加载名称描述（50-100 token），任务匹配才加载完整指令，需要时才加载附件。装几十个Skills，每次对话实际占用的上下文只有用到的那几个——专业知识的广度和上下文效率不再矛盾。

  MCP是厨具，Skills是菜谱。MCP让AI能触达外部服务，Skills告诉AI面对具体任务怎么做。两者不是竞争关系，配合使用才完整。Skills还遵循开放标准，跨平台可用，你沉淀的工作方式不会因换工具而作废。

  只用自己创建或官方提供的Skills——恶意Skills可以在你不知情的情况下让AI做不该做的事，这是和ClawHub供应链攻击同类的风险。
tags:
  - Skills
  - MCP
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
  image: /images/cover/AioGeoLab-cover-tgje-67-skills-teach-ai-how-you-work.png
  alt: tgje-67-skills-teach-ai-how-you-work
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
publish:
  slug: tgje-67-skills-teach-ai-how-you-work
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1773974385-infographic-tgje-67-skills-teach-ai-how-you-work_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-67-skills-teach-ai-how-you-work_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao365KHyvjKbjyXjluyc7dN9dT0bzHBsjrl0RVErUg_eND
    video_vid: wxv_4435599142001672202
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXA5Tic51523e3oiaHgIC7NV9nSEFG7wS80mvWg8WdAM5L3Q8ibcJG99l7QJPWhBeKOXGeTPZZiaicgbFTAu5jhiawm9zgiaa9JURX7Ec/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNU1nRHbPy2wibo9DIvaOIZh45QrF1X0KqL7v0yaUchhib4gM5zBr2Grr8iaWqjKXVFn4XnNoFIFTsicHIYPqiag2kLQvHh2PO4kcfYo/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3584FaGVZERZ129tDBd63nf64Semdd7VQifBDMr9r61n
    draft_created_at: 2026-03-21 00:34
    video_media_id: lEmH66TSP501Rw-1R2Ao3_HBqdQaIApm2oGdMkMEpCKnSmAYmo0bEDspOaQtymSZ
  wx_article:
    digest: null
    original: false
    comment: true
---
# Skills：让AI真正懂你的工作方式
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1773974385-infographic-tgje-67-skills-teach-ai-how-you-work_1280_714.jpg)
<!-- infographic-end -->

用过AI一段时间之后，大多数人都会遇到同一个隐性摩擦：

每次开始新对话，你都要重新交代背景。你的写作风格、团队的命名规范、项目的技术栈、客户沟通的口吻——每次都要解释一遍。AI并不是不够聪明，而是它每次都从一张白纸开始。

这个摩擦大家已经习惯，因为它一直都是这样。如果你算一算，每次对话花在"让AI理解你的工作方式"上的时间，加起来是相当可观的重复，如何解决？

Skills是Anthropic给出的答案。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmmya8srk0d4j01xk4zg97k09" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<br>
<!-- audiovideo-end -->

* * *

## Skills是什么

Skills的本质，是一个文件夹。

文件夹里的核心是一个叫SKILL.md的文件，里面写着：这个技能叫什么、用来做什么、在什么情况下触发、具体怎么执行。  
除了这个核心文件，文件夹里还可以放模板、示例、参考资料——任何AI在执行这个任务时可能需要的东西。

当你安装了一个Skills之后，AI会在对话里自动识别相关场景，主动调用对应的技能。  
不需要你每次手动说"按照我们的品牌规范来"，AI看到相关任务就会自己去找对应的Skills。

举几个具体的例子：

你安装了一个"品牌写作风格"的Skill，里面定义了你们公司的语气、用词偏好、禁用词汇。  
之后每次让AI写对外内容，它会自动按这个规范来，不需要你每次提醒。

你安装了一个"会议记录整理"的Skill，里面规定了输出格式：决议事项、待办清单、责任人、截止日期。  
之后每次扔给它一段会议录音或文字，它直接输出你要的格式。

你安装了一个"JIRA任务创建"的Skill，里面有你们团队的任务模板、标签规范、优先级定义。  
之后每次需要拆解任务，AI知道用什么格式输出。

**Skills本质上是在做一件事：把你的工作方式教给AI，让它不用每次重新学。**

* * *

## 最聪明的设计：渐进式加载

这里有一个显而易见的矛盾：

Skills越多，AI掌握的工作方式越丰富，能做的事越精准。但每个Skill的描述都要占用上下文窗口，Skills装多了，留给真正任务内容的空间就越少。

这个矛盾在Skills的设计里被一个叫"渐进式加载"的机制优雅地解决了。

**第一层：启动时，只加载名称和描述。**

每个Skill在启动时只把自己的名字和一句话描述放进上下文，大约50到100个token。AI知道它有哪些技能可以用，但不知道每个技能的具体指令。

**第二层：任务匹配时，加载完整的SKILL.md。**

当AI判断当前任务和某个Skill相关，才把完整的执行指令加载进来。

**第三层：需要时，加载附加文件。**

如果Skill里还有模板、示例、参考文档，在真正需要用到的时候才调入。

这个设计的效果很直观：你可以安装几十个Skills，但任何一次对话实际占用的上下文，只有当前任务真正需要的那一两个Skill的完整内容。专业知识的广度和上下文的效率，不再互相矛盾。

实际使用数据也印证了这个效果：同样的任务，有了对应的Skill之后，澄清确认的来回从平均15次降到2次，token消耗大幅下降。

* * *

## Skills和MCP：厨具和菜谱

Skills经常被拿来和MCP（Model Context Protocol）比较，很多人分不清两者的区别，或者觉得两者是竞争关系。

它们不是。

**MCP是厨具，Skills是菜谱。**

MCP解决的是"Agent能触达什么"——它是一套标准化协议，让AI可以连接到搜索引擎、数据库、日历、邮件服务、代码仓库等各种外部工具和数据源。有了MCP，AI的手能伸得更远。

Skills解决的是"Agent知道怎么做"——它是知识层，告诉AI面对特定任务时应该按什么步骤、什么格式、什么规范来执行。有了Skills，AI的判断更符合你的预期。

两者各自解决不同层次的问题，配合使用才能发挥最大价值：MCP让AI能触达你的日历数据，Skills告诉AI怎么把会议安排整理成你们团队习惯的格式。缺了任何一个，另一个的价值都会打折。

还有一点值得一提：Skills遵循开放标准。同一个Skill文件，可以在Claude Code、Cursor、Gemini CLI等不同平台上使用。你花时间沉淀下来的工作方式，不会因为换了工具而作废。

* * *

## 一个不能忽视的风险

Skills让AI变得更懂你，代价是你需要对安装的Skills负责。

Skills的本质是给AI注入指令。一个恶意的Skill可以让AI在你不知情的情况下做你不想做的事——泄露你提供的信息、以特定方式处理数据、绕过你原本的工作规范。

这和之前OpenClaw生态里ClawHub的供应链攻击是同一类风险，只是换了个生态重演。ClawHub上曾有超过20%的Skills存在问题，其中有恶意Skills试图窃取用户凭证。

Anthropic的建议很直接：只使用你自己创建的，或者Anthropic官方提供的Skills。

这个建议在实际使用中意味着：与其从网上找别人写好的Skills直接用，不如花时间把自己的工作方式整理成Skills。这个过程本身就有价值——它逼着你把隐性的工作规范显式化，把"我一般是这么做的"变成可以复用的结构化知识。

* * *

## Skills让AI从通用助手变成工作伙伴

没有Skills的AI，像一个聪明但什么都不了解你的新员工——每次都要重新上手，每次都要重新解释背景。

有了Skills的AI，像一个已经深度融入你工作方式的长期搭档——不用解释，直接干，按你期待的方式输出。

这个差距，在单次对话里感觉不明显。在长期使用、高频协作的场景里，差距会越来越大。

Skills不是AI的高级功能，是它真正进入你工作流的入口。

* * *

## 一句话总结

Skills解决的是AI使用中最被忽视的摩擦——每次对话从零开始，它通过把你的工作方式固化成可自动触发的结构化文件，让AI不用每次重新学。  
而渐进式加载机制则优雅地化解了"Skills越多越占上下文"的根本矛盾，配合MCP这个"厨具"使用，Skills这张"菜谱"才能真正把AI从通用助手变成懂你工作方式的长期搭档。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
