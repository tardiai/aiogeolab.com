---
title: MCP要死了？你被一个真实的缺点误导了
date: 2026-03-25
draft: false
coverKeyword: MCP要死了？
description: AI Agent工具链中关于MCP的流行判断是：上下文问题太严重，Skills才是未来，MCP走向末路。这篇文章拆解这个判断哪里出了问题——不是为MCP辩解，而是还原一个更准确的图景。MCP和Skills解决的是完全不同的问题，把两者放进同一个竞争框架是认知错误。
tldr: |-
  MCP吃上下文是真实问题，有数字为证：三个Server可以吃掉72%的上下文窗口，Perplexity的CTO在2026年3月公开宣布放弃MCP。这些批评有依据，不是谣言。

  但"有缺点"和"会被取代"是两件不同的事。MCP解决连通性问题——Agent能触达哪些系统；Skills解决行为规范问题——Agent面对任务该怎么做。一个是厨具，一个是菜谱，根本不在同一竞争层面。

  MCP的上下文问题已经有了成熟的解法：动态加载方案可以把token消耗降低96%以上。与此同时，OpenAI、Google、Microsoft全部采纳MCP，月下载量9700万次，Anthropic在2025年底把MCP捐给Linux Foundation。这不是末路的样子。

  MCP正在经历的，是从早期demo热情到生产级成熟的必经过程。每一个真正成为基础设施的技术都走过这段路。真正该追问的问题是：当Agent既能连接任何系统、又知道该怎么做之后，谁在决定它应不应该做？
tags:
  - MCP
  - Skills
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
  image: /images/cover/AioGeoLab-cover-tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw.png
  alt: tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw c i w b
publish:
  slug: tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774156166-infographic-tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao368a7fCbmZt5DVvv3RyeC5HdM0YDI35yd9SeYutnxnqH
    video_vid: wxv_4438647080458567686
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXFbUxhzMfZPnE7w98SqGxgWvyEQNCNcHxJACg79vyTWGY9KicEK4Gh6LcXlTwfKV2XRjxm8wRCpd3tNKJ8wYXYJCLtK6iaeqZVk/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNUe5f2zskARE8TwSRqUOBr7jMfEKcbHhLdFf4aTcONZiaIlpQHncfzVEucxbjC7W1PcE0alLreDicbVTOLCibq0Yp4lKKKUR6Yh8Q/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3-dtNuSSppa3Kax0M3xbTzRBy1O19X5S6jdBfe4HTL3m
    draft_created_at: 2026-03-22 13:19
    video_media_id: lEmH66TSP501Rw-1R2Ao38MmmnVOxRGcDi5MEYQfpxZ7FoRokTbK298I-aYErHOy
  wx_article:
    digest: null
    original: false
    comment: true
---
# MCP要死了？你被一个真实的缺点误导了
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774156166-infographic-tgje-69-mcp-isnt-dying-youre-misreading-a-real-flaw_1280_714.jpg)
<!-- infographic-end -->

你使用MCP配过AI工作流吗？

接Notion、接日历、接邮件、接GitHub。每接一个都要去找文档、调试配置、写胶水代码。折腾了一圈，你觉得自己终于把Agent武装起来了。

然后打开上下文使用率一看——还没开口说一句话，200K的窗口已经去掉72%了。

这不是极端案例。这是真实发生过的数字：一个开发者连了7个MCP Server，对话还没开始，上下文就只剩下三分之一。有团队甚至测出三个Server吃掉了143K，整个窗口就剩57K留给真正的工作。

于是"MCP是个坑"的说法开始流行，随着Skills的普及，“MCP会被Skills取代，未来属于Skills”。

这个说法有一半是对的——MCP的上下文问题是真实存在的。但从"有缺点"直接跳到"会被取代"，这个逻辑链是断的。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmn1amylt0xmi01ym4z1ye1ci" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<br>
<!-- audiovideo-end -->

* * *

## 先把问题摆清楚，这不是在辩解

MCP吃上下文，这件事不是谣言，是有具体数字的。

连GitHub、Slack、Sentry三个服务、大约40个工具，Agent还没读到第一条用户消息，55000个token的工具定义就已经坐进了上下文。超过Claude 200K窗口的四分之一，没了。

问题还会叠加。每个MCP工具的名称、描述、JSON schema、参数说明、枚举值、系统指令，加起来要耗掉550到1400个token。接一个真实的SaaS平台，50个以上的接口全部展开，光"告诉Agent能干什么"就把窗口堵死了，根本没地方留给"真正该干什么"。

有开发者在Claude Code跑完/context命令，结果看到：所有MCP工具占据82K token，整个窗口143K已用，而对话内容是0。那是一个空对话的起点。

后果不只是贵。**上下文被工具定义占满之后，Agent会开始变笨**——工具选错，任务线索中途丢失，速度变慢。团队在扩张MCP规模时发现：Agent越来越难可靠地选择正确的工具，上下文被定义塞满，延迟持续叠加。

2026年3月的Ask大会上，Perplexity的CTO公开宣布：公司正在从MCP转向传统API和CLI工具，原因是上下文窗口消耗过高，加上认证流程繁琐。

这些都是事实，拿出来不是为了挑战结论，是为了说明：**批评MCP的那批人，他们所说的问题是真实的。**

* * *

## 但"有缺点"和"会被取代"是两件事

现在来看最流行的那个结论：MCP的问题这么多，Skills才是未来，MCP会逐步走向末路。

这个判断犯了一个经典错误：**把两个根本不在同一层面工作的东西放进了同一个竞争框架。**

MCP和Skills解决的不是同一个问题。

MCP解决的是**连通性问题**——Agent能触达哪些系统？数据库、邮件、代码仓库、日历、外部API。它是一套标准接口，让AI应用不用为每个外部服务单独写一套对接代码。

Skills解决的是**如何做的规范问题**——Agent面对具体任务该怎么做？工作流程是什么、判断标准是什么、哪些步骤需要谨慎、怎样的输出才算合格。

用之前讲过的类比说清楚：**MCP是厨具，Skills是菜谱。**

你接了MCP，Agent就有了锅和刀，能碰到食材。你有了Skills，Agent才知道这道菜该怎么做、火候是什么、最后装盘用什么规格。

光有厨具不知道怎么做菜，做出来的可能是灾难。只有菜谱但没有厨具，根本没法下厨。**你不能用菜谱替代厨具，也不能用厨具替代菜谱。**

"MCP会被Skills取代"这个判断之所以听起来有道理，是因为两者都在"让Agent更能干"这件大事上有贡献。但贡献的方向不同，不构成竞争关系，更不存在谁取代谁的问题。

* * *

## MCP在解决自己的问题

更关键的是，MCP被批评的核心问题——上下文占用——本身就在被解决。

已经有方案把Token消耗降低96%以上，同时在所有工具集规模和任务复杂度下保持100%的成功率。核心思路是**动态加载**：不再一次性把所有工具定义塞进上下文，而是先只加载工具名称和简短描述，真正要用哪个工具才加载完整的schema。

MCP协议本身不消耗token，消耗发生在客户端把工具定义加载进上下文的那一刻，以及工具结果注入回上下文的时候。这意味着问题不在协议本身，在于怎么用这个协议。

这个区别很重要。批评者说"MCP吃上下文"，准确的说法应该是"把所有工具一次性全部加载的用法吃上下文"。这是实现方式的问题，不是协议的原罪。

行业已经形成了多种解法，能把Token使用量减少96%到99%，同时维持可靠性。当初最大的那个"竞争优势论点"——MCP比Skills占更多上下文——在动态加载方案成熟之后，已经基本失效。

* * *

## 一个协议是否健康，看它怎么应对批评

判断一个基础设施技术是否真的在走向末路，有一个简单的标准：**批评有没有推动它改进？**

MCP的批评声音很响，但它的应对轨迹同样清晰。

截至目前，MCP生态中已有超过10000个活跃的公开MCP Server，覆盖从开发者工具到财富500强部署的各类场景；ChatGPT、Cursor、Gemini、Microsoft Copilot都已接入；官方SDK月下载量超过9700万次。

2024年11月Anthropic发布MCP，2025年3月OpenAI正式采纳并整合进ChatGPT桌面应用，Google DeepMind随后跟进，Microsoft通过Azure OpenAI接入。四家顶级AI公司同时跑在同一套协议上，这件事本身就说明了问题。

OpenAPI、OAuth 2.0、HTTP这些我们现在视为基础设施的标准，分别用了大约五年、四年和整个90年代才达到类似的跨厂商采纳程度。MCP在16个月内走完了这段路。

Anthropic在2025年12月把MCP捐给了Linux Foundation旗下的Agentic AI Foundation，由Anthropic、Block和OpenAI共同创立，Google、Microsoft、AWS、Cloudflare提供支持。一个"走向末路"的协议，不会在这个节点上完成这个动作。

这不是MCP在走下坡路，这是它生产级成熟的过程。每一个经历过这个阶段的基础设施技术都有类似的轨迹：Docker、Kubernetes、HTTP本身——都经历过"问题一大堆，要被取代了"的声音，然后在批评中一点点变强。

* * *

## 正确的问题不是"谁会赢"

回到最开始，如果你接了几十个工具但90%的任务只用其中两三个，每次对话都把全部schema塞进窗口，确实是个坏设计。

**工具越多越好是一种直觉，但直觉在这里是错的。** 克制的工具设计——只接真正需要的服务，聚焦的Server，按需加载——才是MCP发挥价值的正确方式。早期那批demo式的兴奋是正常的，现在的生产级冷静才是成熟。

MCP和Skills将长期共存，各自做各自该做的事。MCP负责让Agent能触达世界，Skills负责让Agent知道该怎么做。两者合在一起，Agent才既有手，又知道手该往哪里伸。

* * *

## 写在最后

"MCP要死"这个判断，把一个真实的局限性误读成了结构性的致命伤。这是一个很常见的认知模式：看到缺点，推断出末路，忽略了缺点正在被修复、协议正在成熟这个过程。

MCP现在面临的挑战是真实的。但判断一项技术是否健康，看的不是它有没有批评声，而是批评之后它往哪个方向走。

当Agent能连接任何系统、也知道该怎么做的时候——真正值得追问的问题才浮出水面：**谁在决定它应不应该做？做了之后，责任归谁？**

这是MCP和Skills都无法回答的问题。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。