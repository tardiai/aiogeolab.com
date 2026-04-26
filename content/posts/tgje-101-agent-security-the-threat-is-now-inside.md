---
title: AI安全的威胁变了｜现在最危险的不是黑客，是Agent本身
date: 2026-04-27
draft: true
coverKeyword: Agent特有的三类威胁
description: 本文从C3安全大会的核心判断切入，拆解Agent时代安全威胁的根本性转变：传统安全体系建立在"威胁来自外部、行为可被规则穷举"两个假设上，Agent同时打破了这两个假设。深入分析提示注入、权限集中、随机性三类Agent特有威胁机制，以及从"最小权限"到"最小Agent"的安全原则转变。核心判断：Agent安全不只是技术问题，是治理设计问题。边界在哪里，必须有人来划。
tldr: |-
  C3安全大会上有一句话被反复提到：安全的核心威胁不再只是"坏人攻击"，还多了一层——"AI自己犯错"。这不是在说幻觉和错误率，而是在说：Agent拥有高权限、能自主执行、行为带随机性，这三者叠加让"AI自己犯错"的后果完全不同。

  传统安全建立在两个假设上：威胁来自外部、行为可以被规则穷举。Agent同时打破了这两个假设——它在边界内，防火墙管不了它；它的行为是概率性的，规则穷举不了它。OWASP在全球首个Agent安全框架里把这个变化说得很直接：Agent不是帮你回消息的机器人，而是用你的身份、调你的工具、做你的决定的数字员工。

  Agent特有的三类威胁值得单独理解：提示注入让攻击者不需要入侵系统、只需要给Agent看一段文字；权限集中让单点失陷变成系统性风险；随机性让边界情况永远存在，而且无法被规则预见。

  应对这些威胁，传统的最小权限原则不够用了。OWASP提出最小Agent原则：不只限制Agent能访问什么，还要限制它能做什么、做多深、做到哪里停。但这些技术手段解决不了一个根本问题：边界在哪里，必须有人来划——而这个决定，不是技术团队单独能做的。
tags:
  - Agent安全
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
  image: /images/cover/AioGeoLab-cover-tgje-101-agent-security-the-threat-is-now-inside.png
  alt: tgje-101-agent-security-the-threat-is-now-inside
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-101-agent-security-the-threat-is-now-inside c i w b
publish:
  slug: tgje-101-agent-security-the-threat-is-now-inside
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1777178398-infographic-tgje-101-agent-security-the-threat-is-now-inside_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-101-agent-security-the-threat-is-now-inside_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao30OWpTKwHgpi4tyo0fMuD6YBCTTjE1Cue87vofzxcb1j
    video_vid: wxv_4489346530029617153
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVLpsTHriaDkWtKzDV51a7N58CtyZibqMkaGPyzPoWlZU1Yeaj4BLz2icsNVDvzcLzEzsL6uYZIagPmAyqr0wkicAhHfV41UATic5ME/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUqjPBDicCGA5GelcJky9yRFG0UHoHZgFYviaRYYfZyORY9F5h97vFJDObA3tft0qKuicmnic1cjnFYonDwyEIduZxNOqIQDhUJL34/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao33Io23UOtz99Gq49G68fU3Uy8XCSvTGWu8ebU1wqrj-R
    draft_created_at: 2026-04-26 12:40
    video_media_id: lEmH66TSP501Rw-1R2Ao3ziApoCnwZiPNGwZeCkSMFxXEGRcUJAqz5WXK4ogH1oC
  wx_article:
    digest: null
    original: false
    comment: true
---
# AI安全的威胁变了｜现在最危险的不是黑客，是Agent本身
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1777178398-infographic-tgje-101-agent-security-the-threat-is-now-inside_1280_714.jpg)
<!-- infographic-end -->


这次C3安全大会上，有一句话被反复提到：

安全的核心威胁，不再只是"坏人攻击"，还多了一层——**AI自己犯错**。

第一次听到这句话，你可能觉得这在说幻觉，在说模型的错误率。但它指向的是一个更深的问题：当Agent拥有高权限、能自主执行、行为带有随机性，"AI自己犯错"的后果，和普通软件出bug完全不在一个量级。

这不是在说一个假想的未来风险。智能体"感知-决策-记忆-执行"四层架构里，每一层都有独特的安全风险，而风险在层级间传导放大的特性，让单点失误变成了系统性问题。

Agent时代的安全威胁，和你过去理解的安全，到底哪里不一样了。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmof9yjfq1ean01vqfaksh2dv" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 传统安全的两个假设，Agent同时打破了

过去二十年，企业安全体系建立在两个假设上。

第一个假设：**威胁来自外部**。所以防火墙守边界，严格区分内外网，高风险操作不联网。只要把外部攻击者挡住，内部就是安全的。

第二个假设：**行为可以被规则穷举**。已知的风险写进规则，检测到规则触发就拦截。安全团队的工作，是不断把新出现的威胁编写进规则库。

Agent同时打破了这两个假设。

它在边界内——它是你自己部署的、你授权的、你让它跑的。防火墙在它外面，管不了它。

它的行为是概率性的，不是确定性的——同样的输入，不同的执行，可能走出完全不同的路径。规则可以覆盖已知情况，但覆盖不了一个随机性内核每次执行时走出来的新路径。

OWASP在全球首个Agent安全框架里，把这个变化概括成一句话：AI Agent不再是"帮你回消息的机器人"，而是"用你的身份、调你的工具、做你的决定的数字员工"。

数字员工和工具，是两种完全不同的安全模型。工具出了问题，损失在工具能触达的范围内。数字员工出了问题，损失在它被授权能触达的所有地方。

* * *

## Agent特有的三类威胁，值得单独理解

不做风险清单，只讲三个最值得读者理解的机制。这三个机制是Agent特有的，传统软件安全体系里没有对应的防御逻辑。

**第一个：提示注入——攻击者不需要入侵你的系统**

传统攻击需要找漏洞、绕权限、入侵系统。提示注入不需要这些。

攻击者只需要在Agent会处理的内容里藏一段指令——一封邮件、一个网页、一份文档。Agent在读取这些内容的时候，如果分不清"这是我要处理的数据"和"这是要执行的指令"，就会直接执行攻击者埋进去的命令。

MCP协议实现中，客户端将工具描述及输出内容直接引入AI对话上下文，缺乏对不同工具会话上下文的有效隔离，使得工具投毒、工具覆盖等攻击能够劫持Agent执行非预期操作，引发用户隐私数据泄露。

这是一个根本性的攻击面变化。过去，攻击者的目标是系统漏洞。现在，攻击者的目标可以是Agent会读到的任何一段文字。你的API密钥、你的文件权限、你连接的外部服务——Agent能访问的一切，都可能成为这条攻击链的出口。

**第二个：权限集中带来的连锁风险**

Agent为了完成任务，往往被授予横跨多个系统的权限——能读文件、能发邮件、能调API、能操作数据库。这些权限单独看都有合理性，组合在一起就形成了一个高度集中的权限包。

一旦这个权限包被劫持或误用，单点失陷直接变成系统性风险。不是"这个文件被删了"，而是"所有它能访问的系统都暴露了"。

传统的最小权限原则在这里遇到了一个现实困境：如果把权限限制得太细，Agent就完不成任务；如果权限给得足够让它完成任务，被劫持时的爆炸半径就很大。这个张力，传统安全体系没有处理过。

**第三个：随机性——内部的不确定性**

智能体风险的根源是随机性。传统大模型的对齐问题在三五年内从机制上解决不了，"既然解决不了，做智能体管控这件事就很重要了。"

这是最难处理的一类威胁，因为它不需要外部攻击者，也不需要什么触发条件。Agent在执行过程中，可能在某一步走出预期之外的路径——而这条路径，在它发生之前，没有任何规则能预见。

这不是在说Agent会"叛变"，而是在说概率性系统在真实世界里运行时，边界情况永远存在。当这个概率性系统同时拥有高权限和自主执行能力，每一次边界情况都可能带来真实的业务损失。

* * *

## 从"最小权限"到"最小Agent"

传统安全的黄金原则是**最小权限**——给用户或程序尽可能少的权限，降低被攻击时的损失范围。这个原则用了几十年，逻辑上无懈可击。

但在Agent时代，这个原则不够用了。

最小权限管的是"能访问什么"。但Agent的危险不只在于它能访问什么，还在于它能做什么、做多深、做到哪里停。一个被限制了文件读取权限的Agent，如果被允许无限次调用外部API、无限深度地执行多步任务，照样能造成巨大损失。

OWASP因此提出了"最小Agent原则"：不只是限制Agent能访问什么，而是限制Agent能成为什么——它应该做的任务范围、可以调用的工具数量、能自主执行的步骤深度，都应该被显式约束。

最小权限是一个维度的控制。最小Agent是多个维度的控制：权限、工具、任务范围、执行深度、需要人确认的节点。

这不是在给Agent加枷锁，而是在给它划一个清晰的操作空间。空间内，它可以自主跑；空间边界，它必须停下来等人。

* * *

## 这不是技术团队一个人的事

说到这里，有一个很容易掉进去的误区：把Agent安全当成一个技术问题，扔给安全团队或者技术团队去解决。

技术手段确实能做很多事。提示注入有对应的检测机制，权限集中可以通过架构设计来缓解，随机性可以通过监控和告警来部分捕捉。

但这些技术手段能做到的，是压低概率、缩小爆炸半径。它们回答不了另一组问题：

这个Agent应该被允许处理哪些外部内容？——这是业务决策，不是技术决策。

这个Agent应该横跨几个系统、拥有多大的权限包？——这是组织层面的授权决策。

哪些执行步骤必须有人确认才能继续？——这是治理设计，不是代码配置。

Agentic AI的设计逻辑正在从"能否执行"转向"执行时谁负责"，问责制正在成为Agent产品的核心特性。这个转变说明了一件事：安全边界在哪里，必须有人来划，而且这个人不能只是技术团队。

* * *

## 写在最后

Agent安全不是要把Agent关起来不让用。Agent的价值恰恰来自它的自主性和高权限——把这两样限死，Agent就退化成了一个高级搜索框。

真正的问题，从来不是"Agent能不能用"，而是：

**在给Agent自主性和权限之前，边界有没有被认真想过。**

提示注入可以被监控，权限集中可以被架构，随机性可以被约束——但这些都是技术手段，它们需要建立在一个前提上：有人已经决定了这个Agent该在哪里停下来。

这个决定，不会自动发生。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。