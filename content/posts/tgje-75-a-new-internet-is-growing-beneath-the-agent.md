---
title: 龙虾底下，正在长出一层新的互联网
date: 2026-03-31
draft: true
coverKeyword: Agent基础设施
description: 龙虾让AI Agent变得可见，但让Agent真正可用的基础设施还没建好。支付、身份、记忆、协作协议、权限边界——这五层东西，原来的互联网一个都没有为Agent准备好。现在，Visa、Coinbase、Stripe、Mastercard、Sam Altman的World正在以极快的速度重建这一切。这篇文章梳理这层正在被建造的新基础设施，以及为什么它比应用层更值得关注。
tldr: |-
  龙虾能写日报、整理文件，但当你让它替你完成一笔采购、签一封合同邮件、以你的名义做决定——它拿什么证明它是你授权的？用什么钱包付款？出了问题算谁的责？这些问题，现在没有答案。不是龙虾不够强，是它底下的基础设施还没长出来。

  原来的互联网是为人设计的：支付要填卡号做人脸识别，身份要绑手机号实名认证，权限管理假设操作者是人。Agent来了，这套东西全部不适配。AI Agent没有脸，没有手机号，没有可以去柜台签字的身体。

  但有一层东西正在被快速重建：Agent专属钱包（Coinbase Agentic Wallets已处理5000万笔交易）、可验证身份（Sam Altman的World推出AgentKit，Skyfire建立KYA问责框架）、Agent间协作协议（MCP之上的新一代协议）、以及硬性权限边界。Visa、Mastercard、Stripe、Coinbase都在这一周密集发布基础设施。

  AI Agent已经完成了1.4亿笔交易，结算金额4300万美元。今天铺设的这些基础设施，将决定谁在未来十年收取Agent商业的过路费。应用层的龙虾很性感，但基础设施层的机会更持久。
tags:
  - Agent基础设施
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
  image: /images/cover/AioGeoLab-cover-tgje-75-a-new-internet-is-growing-beneath-the-agent.png
  alt: tgje-75-a-new-internet-is-growing-beneath-the-agent
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-75-a-new-internet-is-growing-beneath-the-agent c i w b
publish:
  slug: tgje-75-a-new-internet-is-growing-beneath-the-agent
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774671725-infographic-tgje-75-a-new-internet-is-growing-beneath-the-agent_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-75-a-new-internet-is-growing-beneath-the-agent_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao34IwIGWH6bOaMvWOaomsCl_2KXwiN-tpXCXvhPpFKGyu
    video_vid: wxv_4447294044683108355
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVGibEu4kdKe59l0lGq3oW0c9fgmPNCUbso2eOWiczfLn3dAbyLbSBPaAmiclicEdwe5Qhud7g7gO7GnOeZqGeT9Xqjl6wxPRRYGeI/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXNlib1S2DCaVkZuKmS057SYleRKelicaKuy8OA5kCc6XagwiaNUFpgHR8yzEgqLU8bVqEIalcerPdZfdiaF6N4htAZHweo2ib7sxeE/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao33F3Wwdv9wVTN9Ydwp4wMtmrSHI-MIH9d2nPWUq2PKmQ
    draft_created_at: 2026-03-28 12:22
    video_media_id: lEmH66TSP501Rw-1R2Ao38EVx_oUpz7IsbK4UpACq5meZ13-Mj_E_BpORtTpnftw
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-03-28 12:22
---
# 龙虾底下，正在长出一层新的互联网
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774671725-infographic-tgje-75-a-new-internet-is-growing-beneath-the-agent_1280_714.jpg)
<!-- infographic-end -->

深圳腾讯楼下，近千人排队等人帮装龙虾的那个下午，我一直在想同一个问题：装完之后呢？

装完之后，大家第一件事是让它写日报、整理文件、总结会议记录。这没什么不好。但这只是龙虾能干的最表层的事，就像你买了一辆车，第一个月只用来在小区里挪车位。

真正的问题不是龙虾能不能干活，而是当你让它干更重要的事——替你完成一笔采购、发一封代表你立场的合同邮件、在某个平台上以你的名义做一个决定——它拿什么证明它是你授权的？它用什么钱包付款？出了问题算谁的责任？

这些问题，现在没有答案。

不是龙虾不够强，是它底下那层基础设施还没长出来。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmn9tl6ko0nhz01y35b4x3149" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 原来那套互联网，不是为Agent设计的

过去三十年，互联网的基础设施是为人设计的。

支付系统假设操作者是人——要填卡号、填CVV、做人脸识别、收短信验证码。身份体系假设操作者是人——账号绑手机号、实名认证、KYC审查。权限管理假设操作者是人——你登录、你确认、你点击"同意"。

这套东西运转了几十年，运转得很好，因为操作者一直是人。

Agent来了，整套东西全部不适配。

AI Agent没有办法开银行账户，因为银行要求身份验证，而软件无法提供人类身份。一个程序没有手机号，没有脸，没有可以去柜台签字的手。它能替你找到最便宜的机票，但它没有钱包付款。它能替你谈妥一个合作条件，但它没有法律主体资格签约。它能操作你电脑上的一切，但它的权限边界完全模糊——今天的Agent能推荐一笔交易，但它自己执行不了；它能找到需要调用的API，但它自己付不了钱；它卡在每一个需要钱的决策节点上，等待人工确认。

墨西哥那个程序员，一夜损失8万美元token费，不是因为龙虾太贵，是因为没有任何额度控制机制——它有权限跑，就一直跑，没有人告诉它该停了。

这就是现状。

* * *

## 底下那层，正在被重建

但有一件事正在悄悄发生，大多数人没有注意到：**围绕Agent的基础设施，正在以极快的速度被重新建造出来。**

这不是在讨论未来，这是正在发生的事。

**第一件事：Agent要有自己的钱包。**

Coinbase在2026年2月发布了第一个专门为AI Agent设计的钱包基础设施——Agentic Wallets，让Agent拥有自主花费、获取收入和交易的能力，同时内置安全护栏和可编程限额。

与此同时，Stripe和Tempo联合发布了机器支付协议MPP，Visa推出了Trusted Agent Protocol支持卡基支付，Mastercard完成了欧洲第一笔AI Agent银行支付。传统金融巨头和加密原生基础设施同时在建，方向略有不同，但指向同一件事：Agent需要能自己付款，不能每次都等人来点确认。

上周单独一周，就发生了Mastercard以18亿美元收购BVNK、Stripe推出Tempo主网等重大事件——这个速度，已经是这个行业从未有过的。

**第二件事：Agent要有可验证的身份。**

一个Agent替你完成了一笔交易，对方怎么知道这个Agent真的是你授权的，而不是某个恶意程序伪装的？

Sam Altman联合创办的World推出了AgentKit，让AI Agent能够携带加密证明，证明它背后有一个真实的人类授权者。这个方案把多个Agent链接到同一个经过验证的人类身份，让平台能够在身份层面设置限额。

另一边，Skyfire开发了KYA（Know Your Agent）框架，从Agent的每一个行动到背后的人类主人，建立了可审计的完整链条。它回答的是监管机构迟早会问的问题：当AI Agent实施了欺诈，责任由谁来承担？

**第三件事：Agent要能记住你。**

一只没有记忆的龙虾，每次对话都是从零开始的陌生人。它没有你的判断标准，不知道你的工作方式，不记得上次你纠正它的原因。

这个问题比看起来难：存不难，难的是在需要的时候准确取出来。你的工作记忆是有结构的——哪些是长期偏好，哪些是短期任务上下文，哪些是只在特定场景下生效的规则。把这些分层存储、按需取用，这个需求足够大，大到可能是一家独立公司。

**第四件事：Agent之间要能协作。**

一只龙虾能干的事情是有限的。真正复杂的任务，需要多只龙虾分工——一只负责信息收集，一只负责分析，一只负责执行，一只负责审核。

MCP解决的是Agent接入外部工具的问题，而新一代的协议正在解决Agent之间如何彼此发现、建立信任、传递任务的问题——ERC-8004在以太坊上建立了Agent身份和信誉的链上注册表，让互不相识的Agent之间也能建立协作关系。

这层协议成熟之前，Agent团队的分工协作只能停留在同一家公司的产品边界内。

**第五件事：Agent要有清晰的权限边界。**

这是所有问题里最紧迫的一个。

Agent的能力边界越来越大，但它的授权边界还是一团模糊。它能做什么、不能做什么、什么时候需要停下来等人确认——这些规则，现在大多数时候靠提示词里的几句话来约束，没有任何硬性的技术保障。

Visa预测，到2026年底，将有数百万消费者通过AI Agent完成购买。Mastercard要求AI Agent必须在经过注册和验证之后才能交易。权限和问责，正在从软性约定变成硬性基础设施。

* * *

## 为什么这层机会被低估

大家的眼睛都盯着应用层——谁做了更好用的龙虾、谁接了更多工具、谁的市场最先跑出来。

基础设施层不性感。它没有"帮你写日报"那么直观，没有"装好就能用"那么有即时反馈，没有让人在朋友圈分享的那种感觉。

但历史一再证明，基础设施的赢家往往不是最先被看见的那个，但最后沉淀下来的价值最持久。移动互联网爆发，最大的受益者不是哪个具体的APP，是支付宝、微信支付这些在底层跑的基础设施。

今天，AI Agent已经完成了1.4亿笔交易，结算金额达到4300万美元。每一个主要支付网络都在竞相建设这套轨道。今天铺设的这些基础设施，将决定谁在未来十年收取Agent商业的过路费。

这不是在讨论一个遥远的可能性，这是正在被下注的事。

* * *

## 写在最后

龙虾让Agent变得可见。但让Agent真正可用的，是它底下那层还没建好、正在被快速建造的基础设施。

支付要重做，身份要重做，记忆要重做，协作协议要重做，权限边界要重做。每一个"重做"，背后都是一个机会的窗口，都是一批人正在用力建造的东西。

对普通用户来说，理解这层的意义更直接：你现在遇到的那些龙虾用起来不顺畅的地方——付款麻烦、权限混乱、换个设备就失忆、不知道该不该让它继续——不是产品做得不好，是底下那层基础设施还没长出来。

它会长出来的。速度比你想象的快。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
