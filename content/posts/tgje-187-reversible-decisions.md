---
title: 为什么好的架构师，总是在为未来的错误设计系统？丨FDE重新理解可逆决策
date: 2026-07-22
draft: false
coverKeyword: FDE重新理解可逆决策
description: 2024年，摩根大通上线内部AI平台LLM Suite，核心设计不是选对了哪个模型，是模型无关架构——随时能换掉任何一个供应商。这篇文章重新理解可逆决策：真正优秀的系统，设计的不是如何避免错误，而是错误发生之后，改起来有多容易。
tldr: |-
  2024年夏天，摩根大通上线内部AI平台LLM Suite，八个月用户涨到20万。它真正的架构核心不是选对了模型，是模型无关——随时可能替换掉OpenAI或Anthropic中的任何一个，赌的是"换得动"，不是"选得对"。

  "一次选对模型、一次选对架构"不是虚荣，是重构成本极高逼出来的默认预期，在软件时代大体成立。问题是组织把这套逻辑原封不动搬进了AI架构决策——却没意识到，能安稳用很多年的假设，这次不成立了。

  可逆决策的判断标准不是"这个决定对不对"，是"错了之后改起来贵不贵"。数据治理、安全边界这类真正不可逆的决定值得慢慢论证；选模型、选工具链这类本来就可逆的决定，只要留好替换接口，快速试错反而更划算。快速演进的模型市场里，技术迭代周期已经明显缩短，真正该设计得持久的，从来不只是"换模型"这一件事，是变化发生以后，组织还能不能调整这件事本身。

  真正优秀的系统，设计的不是如何避免错误，而是错误发生之后，改起来有多容易。下一个问题是：如果每一个决定单独看都做对了，是不是就意味着整个系统一定没问题？
tags:
  - 可逆决策
  - FDE落地工程
  - AI落地
  - Agent
  - 判断工程
  - 智能体
  - AI交付
  - AI
  - FDE
  - 企业AI落地
  - ClaudeCode
  - AIAgent
  - LLM
  - 大语言模型
  - Hermes
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-187-reversible-decisions.png
  alt: tgje-187-reversible-decisions
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-187-reversible-decisions c n f uv i w b
publish:
  slug: tgje-187-reversible-decisions
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-187-reversible-decisions-企业AI可逆决策：摩根大通案例.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-187-reversible-decisions-AI时代架构师进化指南.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-187-reversible-decisions-摩根大通AI架构的可逆逻辑.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-187-reversible-decisions-Designing
      for Reversibility/10页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1784587821-tgje-187-reversible-decisions-AI%E6%97%B6%E4%BB%A3%E6%9E%B6%E6%9E%84%E5%B8%88%E8%BF%9B%E5%8C%96%E6%8C%87%E5%8D%97_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-187-reversible-decisions-AI时代架构师进化指南_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3-hBohiGcoFWdqFLI7d7TH4r8LFPEoXsz4vSUg9B738s
    video_vid: wxv_4613659038743314434
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWbT0z6db2ZOOaiakKiaWha3qjAK1kKvZOicj7ZzdsacmJSM7vZUBpuax8wtvrup1xwIAVrEZAfsibibicWtrLZCbAOY5zJuk3CicAfBs/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVAuzlsVItg4FLaXkmib6Hq4KGbVlxibZpBicDIqmzlMBx9aLAnv9exPSLg1J7mhHAib9MT1vQYm6JicaEq4yhf8pQwo9rt49IjFEJI/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao34Asa2nfwmQ4chi6owX66TXWBswixYCVJ0ea3Rho_oYc
    draft_created_at: 2026-07-21 07:07
    video_media_id: lEmH66TSP501Rw-1R2Ao39NmYgqEdLlbdaYLdG9-5ZowSgqzAylOa3JJYgZfmTKh
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1784588241-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVnNibZ0GbnBZianXgZhyNIXxMA2OJI6noeALuRcIpOUhbhmXDd0Tsmsuaqfxm03DzOcicfUeAibs7ETibEsVuWIakRgd75xVrO7Qts/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588256-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWxCNGQYjUT7C0Ig74ECetazaawDhyH0WEoBygvGrqnU1c8nTS5UtoZiarwpv4KGiaoNUrP1zibKKVeHlNMtlmic5Y0wlicqibox3OVg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588275-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUhNibSJ9lUSeBibliaDHyGDaLImELIQqoapTP0Uw3UicZgUyxYsevMwTGDicXen8ocLf393WIzSK2gZGZXSZXXdicDkzD3m55XWVQia4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588311-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXFnic67UMtDNxoeFwUlSjQYo7nSdgtEGkqWPpBZNomGWFcJYY5jZRfWv9ltPEpDdnn4rDKe0NGFeg3Fhic23c9oQNr7EykNFkGQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588338-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXllBuZCuQ7FibSDs4sPZAX8y79ajicxFsOvLGMiak8zTZVz4Y9hENGcxQOgwwH7icS83BO1EqWdiajWIF4qQicAosMRF4XZn7EZgt00/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588400-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUVBSVFiav8awZHRwjKAHRswjunOa7IETKqHpicnbRXYZNUNIbZiaJEnWghpGcNfQCCbIXOvVJgyL7RGVwIXItJfTlYEZRGxBIbHU/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588472-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXNKDdyuokTkJvh4JBWb3vichQDAC5ueJfj9oib4eQqkmLjfgH9sS2MIREh5VnnW0SH61iaiaDbyMzhiaOvMxEERZkwEaoEaR6csUHg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784588496-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUqGSwsmlibPicXB4ZHrGibXfhzQUKpzepibiaUCu1jibSL9BOdHQCBI8hs8icvnPzUxTtDNMc34DliaO0CjYgCPEsDlicDiaicHmkhxLPvGs/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-21 07:08
---
# 为什么好的架构师，总是在为未来的错误设计系统？丨FDE重新理解可逆决策

2024年夏天，摩根大通上线了内部生成式AI平台LLM Suite——这是一家年科技预算高达180亿美元的银行，完全有能力、也有资源直接押注市面上当时最强的那个模型。但它没有这么做。它选择自己在内部搭建一套系统，让OpenAI、Anthropic的模型可以同时接入，随时可能替换掉其中任何一个。八个月内，用户涨到20万，2025年拿下American Banker年度创新大奖。

![02页.png](https://p.vibcx.com/x/2026/07/1784588241-02%E9%A1%B5.png)


原因并不复杂：摩根大通清楚，今天最好的模型，不一定是明天最好的模型。这套架构背后的工程判断，其实不是押注某一个模型长期领先，而是假设模型一定会变化，因此提前把替换能力设计进去。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmrttfnu71zz901xb0v7aed5m" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 一次选定、长期绑定——这套逻辑正在失效

组织默认预期"**一次选对模型、一次选对架构、一次选对平台**"，因为重构成本极高，没有人愿意在系统跑起来之后再推倒重来。

![03页.png](https://p.vibcx.com/x/2026/07/1784588256-03%E9%A1%B5.png)

这个预期在传统软件时代大体成立：选一个数据库、一个云平台，决策周期是以年计的，值得花大量时间去论证"哪个最好"，一旦选定，可以安稳用很多年。

真正的问题在于，组织把这套"慎重选一次，然后用很久"的逻辑，原封不动地搬进了AI架构决策里，却没有意识到，前提已经变了——能安稳用很多年的假设，这一次不成立了。

* * *

## 问题从来不是会不会错，是错了以后还能不能回来

任何一个决策都可能错——这不是悲观，是工程世界的常态，选型、架构、平台，没有一个是靠"论证得足够久"就能保证永远正确的。真正决定一个决策该被怎么对待的，从来不是"会不会出错"，而是"出错以后，还回不回得来"。这就是可逆决策（Reversible Decision）的判断起点。

![04页.png](https://p.vibcx.com/x/2026/07/1784588275-04%E9%A1%B5.png)


顺着这个起点往下走，高不可逆的决策——数据的归属和治理框架、核心安全边界的设计、权限体系这类东西，一旦定了，推翻的代价极高，值得花时间反复论证；  
低不可逆的决策——选用哪家模型、用什么编排方式、用哪个工具链，相对容易改，只要架构设计留出了替换的接口，换掉的成本可以压得很低，拖着不定，浪费的只是时间，换不来更好的答案。  
行业默认选择的问题，正是把这两类决策混在一起，用同一套"慎重"去对待，结果是本该快速试错的决定，也背上了不该有的审批周期。真正浪费时间的，不是谨慎，而是把不可逆的谨慎用在了可逆的问题上。

![05页.png](https://p.vibcx.com/x/2026/07/1784588311-05%E9%A1%B5.png)


在快速演进的模型市场里，技术迭代的周期已经明显缩短，传统那种"长期绑定式采购"的逻辑，开始发生变化——一款模型可能几个月就被更强的下一代取代，而不同企业走完一次采购评估、审批、签约的流程，本身也要花掉不少时间。

![06页.png](https://p.vibcx.com/x/2026/07/1784588338-06%E9%A1%B5.png)


摩根大通把系统更新节奏设定在八周一次，某种程度上是在承认：任何一次"选定"都注定短命。真正该被设计得持久的，从来不只是"换模型"这一件事——今天变的可能是模型，明天可能是数据源、是agent的编排方式、是新的监管要求。**真正值得投入精力建设的，是变化发生以后，组织还能不能调整这件事本身**。

![07页.png](https://p.vibcx.com/x/2026/07/1784588400-07%E9%A1%B5.png)

* * *

## FDE重新理解可逆决策

真正该问的，不再是"这次选型有多大把握选对"，而是从寻找一个不会失败的方案，转向设计一个失败以后依然能往前走的系统。

如果这个决定六个月后被证明是错的，推翻它需要付出多大代价？答案越贵，就越值得现在多花时间论证；答案越便宜，就越不值得为了"选对"这件事拖延下去。

![08页.png](https://p.vibcx.com/x/2026/07/1784588472-08%E9%A1%B5.png)

优秀架构不是假设自己不会犯错，而是假设自己一定会犯错——这句话听起来像自谦，其实是最诚实的工程判断。

**真正成熟的系统，不是不犯错，而是犯错以后还能回来。**

不可逆决策应该慢做，可逆决策应该快做：数据治理、安全边界这类真正难以回头的决定，值得慢慢论证；选模型、选工具链这类本来就可逆的决定，越早试错，成本越低。

摩根大通LLM Suite真正值钱的地方，从来不是它接入了哪几个模型，是它把"适应变化"这件事，从一句口号，变成了一套具体可执行的架构设计——模型只是今天需要适应的那一个变量，明天换成别的，这套能力依然用得上。

* * *

## 写在最后

之前的文章「为什么最先进的架构，经常输给最普通的方案？」说的是，别让今天的复杂度，锁死未来；这一篇说的是，别让今天的选择，锁死未来——两者其实是同一件事的两个侧面。

「为什么AI产品可以买到，AI能力却买不到？」里说过，AI最终会成为企业基础设施，需要企业持续建设——可逆决策正是这套能力里最基础的一块。「为什么优秀团队，总是在最后一刻才锁定方案？」讲的是决定之前的信息验证，这一篇讲的是决定做完之后，还留没留一条能反悔的路——两件事发生在同一条时间线的前后两端。

![09页.png](https://p.vibcx.com/x/2026/07/1784588496-09%E9%A1%B5.png)


可如果每一个决定单独看都做对了——选的模型是当时最好的，方案足够简单，复杂度也控制住了，改起来也留了余地——一个个正确的决定累积起来，是不是就意味着整个系统一定没问题？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
