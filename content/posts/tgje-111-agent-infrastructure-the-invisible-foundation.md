---
title: Agent跑真实业务之前，需要夯实这四层地基
date: 2026-05-07
draft: true
coverKeyword: Agent四层地基
description: Agent在演示环境里跑得很顺，一放进真实业务就开始出问题——做了不该做的事、任务中断无法恢复、出了问题无从追溯。这不是模型的问题，是基础设施的问题。本文拆解Agent运行依赖的四层地基：权限与身份、记忆与上下文、工具调用协议、执行环境隔离，结合OpenClaw、Claude Code、Hermes Agent的真实架构案例，帮你看清这层通常隐形的结构。
tldr: |-
  Agent在演示里跑得顺，放进真实业务就出问题——权限失控、任务中断、无法追溯。这不是能力问题，是基础设施问题。Agent能稳定运行，依赖四层看不见的地基：权限与身份、记忆与上下文、工具调用协议、执行环境隔离。

  权限层缺失：Agent以你的名义做了你没授权的事，出了问题说不清责任。OpenClaw早期因auth:"none"模式导致900+实例公网裸露，后被永久移除，现在用四级访问策略和分级权限控制。记忆层缺失：长任务跑到一半状态丢失，下次从零开始。Hermes Agent用SQLite FTS5实现跨会话持久记忆，真正做到"与你共同成长"。

  工具调用层缺失：没有限速和熔断，一个失控任务可以把账单打爆。Claude Code用MCP协议加分层权限规则，工具调用边界可以被组织层面统一管控。执行环境层缺失：Agent在生产环境直接操作，被劫持后爆炸半径没有上限。Claude Code和OpenClaw都用OS级或Docker级沙箱解决这个问题。

  Agent能力越强，基础设施越重要——不是因为更难管，是因为出了问题的爆炸半径更大。选Agent工具，功能评估和基础设施评估应该同等重要。
tags:
  - Harness
  - 基础设施
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
  image: /images/cover/AioGeoLab-cover-tgje-111-agent-infrastructure-the-invisible-foundation.png
  alt: tgje-111-agent-infrastructure-the-invisible-foundation
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-111-agent-infrastructure-the-invisible-foundation c i w b
publish:
  slug: tgje-111-agent-infrastructure-the-invisible-foundation
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/05/1778022736-infographic-tgje-111-agent-infrastructure-the-invisible-foundation_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-111-agent-infrastructure-the-invisible-foundation_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao39OSCP5qan2FOalMibZIlZuiolN6GOz-x5Im5i7sceaI
    video_vid: wxv_4503513616188358659
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVqecz7xqZS9lg2icvHqOOjID23TDYShInysY3Kw2nZuIdtAKYuiaQE2B2jj50ZxYz15AJGbT2MzOlU2SQC0cadNCgKfA5jgQKLk/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNV4iaKR39iboo8zY3ugXeuxicvjaPhL1BprK6CnPj1zMugOkTwkqsM8qxqIM6yklvOnJOvsnuNic6r5q2cgSLicACicNEbOAMwCsGjKo/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao38nrPsQ5BPbNVb70YszwcaM4nI5LxjZrhR_dP43274eX
    draft_created_at: 2026-05-06 07:12
    video_media_id: lEmH66TSP501Rw-1R2Ao37H0Mf6lSa1ZBKmGlZjmUdj9Y-CQMekeQEIOdbLxGlCh
  wx_article:
    digest: null
    original: false
    comment: true
---
# Agent跑真实业务之前，需要夯实这四层地基
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/05/1778022736-infographic-tgje-111-agent-infrastructure-the-invisible-foundation_1280_714.jpg)
<!-- infographic-end -->


用过Agent的人，大多有过类似的体验。

演示环境任务一个接一个完成，看着顺手极了。但一放到真实业务里，问题就开始出现，比如Agent做了一件你没想到它会做的事；任务跑到一半突然断掉，不知道从哪里恢复；换了一个同事用，数据莫名其妙乱了；出了问题想查日志，发现根本没有。

这不是Agent不够聪明，也不是提示词写得不好。问题在于更底层的地方——Agent下面的那层地基，没有建好。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmot8ql0l0a9k01vm6zgm8xp6" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## Agent地基是什么

大多数人谈Agent，谈的是它能做什么：自动化工作流、跨系统操作、多步骤任务执行。这些是Agent的能力层，是大家看得见的部分。

看不见的部分，是支撑Agent稳定运行的那套结构——权限与身份、记忆与上下文、工具调用协议、执行环境隔离。这四层合在一起，就是Agent地基，它的基础设施。

Agent跑得顺的时候，你感觉不到它的存在。但它一旦缺失，问题就会从各种方向冒出来。

* * *

## 四层地基，缺哪层出哪层的问题

**第一层：权限与身份**

Agent在做事的时候，它以谁的名义在做？它能做什么、不能做什么，边界在哪里？

这一层缺失的后果，最典型的案例是OpenClaw早期的设计问题。OpenClaw的Agent默认继承运行用户的系统权限——能读写文件、执行Shell命令、调用API。早期版本有一个`auth:"none"`模式，允许Gateway在零认证状态下对外暴露。结果是：安全研究人员在2026年初的扫描里发现，有超过900个OpenClaw实例裸露在公网上，API密钥和对话记录都可以被直接读取。

这个模式后来被永久移除了。现在OpenClaw的做法是四级DM访问策略加多Agent分级权限控制——不同的Agent有不同的权限边界，哪个Agent能做什么、能调用哪些工具，都需要显式授权。

权限层的核心问题是：Agent出了问题，说得清责任在哪里吗？如果说不清，这层地基就没建好。

**第二层：记忆与上下文**

Agent能不能记住任务状态？上一个会话做到哪里了，下次打开还在不在？

这一层缺失，表现最明显的是长任务场景。Agent跑到一半，上下文窗口到了上限，或者会话中断了，任务状态全部丢失，下次从头开始。对于简单任务影响不大，但对于需要多步骤、跨时间段执行的任务，这是灾难性的。

Hermes Agent把这一层做成了它的核心卖点。它用SQLite FTS5技术实现跨会话的持久化记忆——你在这次对话里告诉Agent的项目偏好、操作习惯、任务进度，下次启动还在那里。不只是日志，是真正可以被检索和调用的上下文。Hermes官方把这个能力总结为一句话：**The agent that grows with you**——随着使用时间积累，Agent对你的理解在加深，不是每次都从陌生人开始。

**第三层：工具调用协议**

Agent怎么跟外部系统交互？调用API失败了怎么处理？有没有速率限制和熔断机制？

这一层缺失，最容易出现的是失控的账单和连锁故障。Agent调用某个外部服务，没有限速，一个任务里循环触发了几百次API请求；或者某个服务暂时不可用，Agent不断重试，把整个工作流卡死。更严重的是，Agent调用工具的记录如果没有留存，出了问题完全无法追溯。

Claude Code在这一层的设计是MCP协议加分层权限规则：可以精确指定Agent被允许运行哪些命令、不被允许做什么，这些规则可以签入版本控制并分发给整个团队。企业级配置优先级最高，不能被用户或项目级配置覆盖。这意味着工具调用的边界是可以被组织层面统一管控的，不是每个人各自为政。

**第四层：执行环境隔离**

Agent在哪里跑？如果它做了一件不该做的事，影响范围能不能被控制住？

这一层缺失，最直接的风险是：Agent在生产环境里直接操作，没有任何隔离。提示词注入攻击成功之后，被劫持的Agent可以读取SSH密钥、修改系统文件、往外发送数据——而这一切发生的时候，你可能完全不知道。

Claude Code用OS级沙箱解决这个问题：在Linux上用bubblewrap，在macOS上用seatbelt，在内核层强制执行文件系统和网络隔离。沙箱内的Agent只能访问指定目录，只能连接白名单里的网络地址，所有子进程自动继承同样的限制。Anthropic内部测试的结果是：启用沙箱之后，权限提示减少了84%——不是因为放宽了限制，而是因为在安全边界内的操作不再需要逐一确认。

OpenClaw的沙箱实现方式是Docker：只读根文件系统、无网络、非root运行。Hermes Agent则内置了容器隔离加危险命令三模式审批——manual模式每条命令都要确认，smart模式由系统判断风险等级，off模式适合在完全隔离环境里跑全自动任务。

* * *

## 能力越强，地基越重要

有一个常见的误解值得说清楚：Agent越聪明，对基础设施的要求就越低。

现实恰恰相反。

Agent能力越强，意味着它能做的事越多、能触达的系统越广、能执行的操作越复杂。这些能力在正常情况下是效率，在出问题的时候是爆炸半径。一个只能回答问题的AI，出了问题最多给出错误的建议。一个能直接操作文件系统、发送邮件、调用支付接口的Agent，出了问题可能造成不可逆的真实损失。

这就是为什么Agent能力越强，基础设施这一层越不能省。选Agent工具的时候，功能评估和基础设施评估应该同等重要——它有没有权限管理、有没有操作审计、出了问题可不可以查、能不能隔离不同用户的数据。这层东西做得好不好，决定了这个工具能不能真正放进业务流程。

* * *

## 写在最后

地基不显眼，但它决定上限。

Agent的上限不只是模型有多聪明，是下面这层地基建得有多稳。能力决定它能做什么，基础设施决定你敢不敢放手让它做。

一个没有权限边界的Agent，你永远不知道它会做什么。一个没有执行隔离的Agent，出了问题你不知道影响范围在哪里。一个没有记忆层的Agent，每次任务都从陌生人开始，积累不了任何东西。

把Agent放进真实业务之前，先问一个问题：**它下面的地基，够不够稳？**

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
