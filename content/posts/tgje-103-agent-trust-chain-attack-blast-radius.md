---
title: 你的Agent越能干，被攻破后的破坏面越大
date: 2026-04-29
draft: false
coverKeyword: Agent结构性安全问题
description: 本文是"判断工程·AI Agent·子系列五"安全事件拆解篇。以近期Vercel权限继承攻击事件和ClawHub恶意Skills植入事件为切入点，拆解Agent时代供应链攻击为何比传统软件供应链攻击危险——不只因为权限更大，更因为Agent会自主把攻击跑完。提出授权边界设计的三个核心动作：最小Agent原则、工牌机制、定期校准。适合正在部署或使用Agent的企业负责人、技术团队、以及关注AI治理的读者。
tldr: |-
  Vercel最近的数据泄露事件结构很奇特：没有系统漏洞，没有员工失误，但数据还是出去了——因为员工用的一个AI工具被黑了，攻击者继承了这个工具的OAuth权限。这不是新型攻击手法，但放在Agent场景里，危险程度完全不同。

  传统软件被感染，攻击者拿到的是这个软件被设计来做的那些操作的权限，边界固定，可以审计。Agent被攻破，攻击者继承的是"帮你完成任务"的能力——权限随任务动态扩展，Agent接入的系统越多，爆炸半径越大。

  更危险的是第二层：传统软件被感染后攻击者还得自己操作，Agent有规划和自主执行能力，攻击者只需污染一个输入，Agent会自己把攻击跑完。ClawHub恶意Skills事件就是这个结构——用户什么都没做错，Agent非常听话，攻击已经在跑了。

  防住这件事的方法不是让Agent变笨，是在部署前把授权边界设计清楚：最小Agent原则限制权限范围，工牌机制明确行为边界，定期校准防止权限漂移。这不是技术问题，是治理设计问题。
tags:
  - Agent安全
  - 判断工程
  - AI治理
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
  image: /images/cover/AioGeoLab-cover-tgje-103-agent-trust-chain-attack-blast-radius.png
  alt: tgje-103-agent-trust-chain-attack-blast-radius
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-103-agent-trust-chain-attack-blast-radius c i w b
publish:
  slug: tgje-103-agent-trust-chain-attack-blast-radius
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1777356246-infographic-tgje-103-agent-trust-chain-attack-blast-radius_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-103-agent-trust-chain-attack-blast-radius_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3w_1icVmBLlBxJHVbIf7--WXAhYJoTLpa--ejJbFC1IB
    video_vid: wxv_4492330666176692244
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNUy9VdtMAMhiaYibM8ZHPCZgZgicpFjy7PibW4f4EQgy4r8fW7NwBIQ2CtU9YGeZPnDhBOvp6JSHpV1RuRqu1g1L1G3EaWzTj0vU4E/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVia8wC3N4yuPgRchdo8gIaMgZFjTRlWjquiaGWcSeOLC3fSfViaqYiaXMrr5SZQh5JV6daRbdzb7he26S0b8iavsU3JYnEV5WKD8Go/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao36T5MWQxpAPYG_2ZlGtz9Hp7SKRPoHxEI1-ohnVBjY62
    draft_created_at: 2026-04-28 14:30
    video_media_id: lEmH66TSP501Rw-1R2Ao33Y0-0kXzzlSKzSgqblqNHncpcGyfacJXoTupcQMs8Am
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-04-28 14:31
---
# 你的Agent越能干，被攻破后的破坏面越大
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1777356246-infographic-tgje-103-agent-trust-chain-attack-blast-radius_1280_714.jpg)
<!-- infographic-end -->


最近发生了一件有点"诡异"的安全事故。

Vercel——一家专门做前端部署的平台——部分客户的凭据泄露了。诡异的地方在于：Vercel的系统没有漏洞，员工没有点钓鱼链接，也没有人直接攻击Vercel的服务器。

泄露的路径是这样的：一名员工在用一个第三方AI工具，那个AI工具被攻击者入侵了。攻击者继承了AI工具通过OAuth授权拿到的Google Workspace权限，进而访问到了该员工账户里的部分Vercel环境变量。

没有人犯错，没有系统出故障，但数据还是出去了。

这件事让我想多说几句，因为它暴露的不是一个具体漏洞，而是Agent时代一个**结构性的安全问题**——而且这个问题会随着Agent能力越来越强，变得越来越严重。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmoi7wrlc0gwl01vg1fdl9tdp" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
---
## 传统软件供应链攻击，你可能已经不陌生

2020年的SolarWinds事件，攻击者把恶意代码植入了一个被广泛使用的IT管理软件的更新包里。全球数万家企业和政府机构在不知情的情况下安装了带毒的更新，攻击者由此进入了这些机构的内网。

这是教科书级别的供应链攻击：不攻击目标本身，攻击目标信任的东西。

Vercel事件的结构和这个类似——攻击者没有直接打Vercel，而是打了Vercel员工信任的AI工具。从攻击逻辑上看，这不是什么新鲜事。

但有一个关键的不同，导致Agent时代的这类攻击**比传统供应链攻击危险得多**。

这个不同，不在于攻击手法，在于被攻击对象的性质。

---
## 传统软件的权限边界是固定的，Agent的不是

一个传统软件被感染之后，攻击者能做的事情是有上限的——这个软件被设计来做什么，攻击者就能借助它做什么。SolarWinds是个网络监控工具，它的权限范围是网络监控相关的操作。边界在设计的时候就定好了，可以事先审计，也可以事后追溯。

Agent不一样。

Agent被授权的不是"执行某个具体操作"，而是"帮你完成任务"。这一个字的差距，在权限结构上是量级的不同。

帮你完成任务意味着什么？意味着它今天帮你发邮件，明天帮你查数据库，后天帮你调用外部API，下周帮你操作你公司的内部系统。它的权限空间不是固定的，**是随着你交给它的任务实时扩展的**。你给它的授权越宽泛，它能触达的系统越多，被攻破之后攻击者能借用的权限空间就越大。

Vercel这个案例里，被攻击的AI工具拿的是Google Workspace的OAuth授权——相对还算有限。但如果被攻击的是一个已经接入公司邮件、日历、文档、代码仓库、财务系统的企业级Agent呢？攻击者继承的就不是一个工具的权限，而是这名员工在公司数字系统里的全部行动能力。

**Agent越能干，被攻破之后的权限空间越大。** 这是第一层危险。

---
## 但还有更危险的一层：Agent会自己把攻击跑完

传统软件被感染，攻击者拿到权限之后还得自己操作——入侵、横向移动、数据外传，每一步都需要攻击者主动驱动。这需要时间，需要人力，也因此留下了被检测到的窗口。

Agent有规划能力和自主执行能力。

这意味着，如果攻击者通过某种方式——比如植入恶意Skills、注入恶意提示词、污染Agent的上下文——给Agent下达了一条恶意指令，Agent会**自主寻找完成这条指令的最优路径**。它会调用它有权调用的所有工具，跨系统传递信息，在无人监督的情况下连续执行，直到任务完成。

攻击者只需要污染一个输入点。后面的事，Agent自己跑完。

2026年2月发生的ClawHub事件，结构上是这个逻辑的完整体现。攻击者在OpenClaw的Skills分发渠道里植入了恶意Skills。用户从ClawHub下载安装之后，表面上看是给自己的Agent增加了新能力，实际上是给它装了一套被污染的行为规则。之后Agent每次执行相关任务，都会按照恶意Skills的逻辑走，用户的授权，忠实地服务于攻击者的目的。

用户什么都没做错。Agent非常听话。但攻击已经在跑了。

**攻击者的人力成本趋近于零，破坏面由Agent的能力上限决定。** 这是第二层危险，也是它和传统供应链攻击最本质的区别。

---
## 这不是技术漏洞问题，是授权设计问题

看完这两个案例，很多人的第一反应是：那该怎么防？打补丁？加检测？

这些当然要做，但它们解决的是已知漏洞。Agent安全更根本的问题，不是某个具体漏洞被利用了，而是**授权边界从一开始就没有设计清楚**。

有三个设计层面的问题值得认真对待：

**第一，Agent拿的权限，是不是真的需要那么大？**

最小Agent原则（OWASP提出的，用来替代传统最小权限原则）讲的是：不只限制Agent能访问什么，还要限制它能做什么、做多深、做到哪里停。一个帮你整理日程的Agent，不应该同时有权限操作你的代码仓库。权限范围越小，被攻破之后的爆炸半径越小。这个边界要在部署前划定，不能等出事了再收。

**第二，Agent有没有"工牌"？**

什么叫工牌？就是一份明确的权限清单——这个Agent被授权做什么、不被授权做什么、在什么情况下必须停下来等人确认。没有工牌的Agent，出了问题你不知道该找谁负责，也不知道它到底做了什么。工牌不是技术文档，是治理设计，要在业务侧定义，不能只交给技术团队。

**第三，这条授权边界，有没有定期校准？**

Agent的权限边界会漂移。你最初给它的授权是有限的，但随着使用场景扩展，它接入的系统越来越多，能做的事越来越多，而没有人回头去重新审视这条边界有没有超出当初的设计意图。定期校准不是一次性的安全审计，是一个持续的治理动作。

---
## 写在最后

Agent安全和传统网络安全的本质差异，不在于攻击手法变了，而在于**被攻破之后，破坏的传导方式变了**。

传统软件被感染，是攻击者借助工具发动攻击。Agent被污染，是攻击者让Agent替它把攻击跑完——用的是你的授权，执行的是你的名义，走的是Agent自己规划出来的路径。

你的Agent越听话，越能干，这件事发生的时候破坏面就越大。

防住它的方法不是让Agent变笨，而是在一开始就把授权边界设计清楚——它能走多远，走到哪里停，什么情况下必须等人点头。

这条边界，不是技术问题，是治理设计问题。而且必须在出事之前就想清楚。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
