---
title: 为什么优秀团队，总是在最后一刻才锁定方案？丨FDE重新理解信息价值
date: 2026-07-20
draft: false
coverKeyword: FDE重新理解信息价值
description: 2025年，Karpathy一句话带火了"上下文工程"，取代"提示工程"——因为真正卡住项目的，从来不是Prompt，是信息。这篇文章重新理解信息价值：一条信息值不值钱，不取决于它能不能证明你是对的，而取决于它能不能让资源投向另一个方向。
tldr: |-
  2025年，Karpathy提出用"上下文工程"取代"提示工程"，Tobi Lütke公开附和，Gartner随后官宣"提示工程正在过时"。这背后是大量团队一直在做低价值的开发，却没做高价值的信息获取——workflow对不对、context够不够，才是真正卡住项目的地方。

  验证本质上是信息获取，开发本质上是资源投入——组织把两者划了等号，默认验证必须靠开发完成。真正该问的，不是要不要写代码，而是下一条信息还有没有可能改变资源该投向哪里。

  三个月调prompt，背后是默认workflow、context、工具设计都没问题这一串没被检验的假设——真正被优化的是"workflow是对的"这个假设，不是prompt本身。过去验证一个方案很贵，只能先开发；今天调用模型几乎没有成本，真正昂贵的，是过早停止获取信息。

  信息真正的价值，不是让判断更确定，而是让资源投向另一个方向。下一个问题是：方向确定、资源锁定之后，随便选一种实现方式就可以了吗？
tags:
  - 信息验证
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
  image: /images/cover/AioGeoLab-cover-tgje-185-value-of-information.png
  alt: tgje-185-value-of-information
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-185-value-of-information c n f uv i w b
publish:
  slug: tgje-185-value-of-information
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-185-value-of-information-AI项目中的信息价值.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-185-value-of-information-信息价值论与上下文工程.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-185-value-of-information-别死磕提示工程.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3).pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-185-value-of-information-AI
      Information Value Strategy (3)/08页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1784414366-tgje-185-value-of-information-%E4%BF%A1%E6%81%AF%E4%BB%B7%E5%80%BC%E8%AE%BA%E4%B8%8E%E4%B8%8A%E4%B8%8B%E6%96%87%E5%B7%A5%E7%A8%8B_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-185-value-of-information-信息价值论与上下文工程_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao32lRr68SJO3HSbP3rKc46DVJUujRqMxAGqYT1dGi1iUw
    video_vid: wxv_4610749056732987392
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVMia9fbgr2BaS5IrVYVStt3h3nhDaSeGF7oY3nb7UbX8t2w7iaxtz3xytBzOOjSzUou1lsahpNN0qjnfMtysBjl00QckupDpqvg/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNU5oG5ab4jutG1xfTBweFUcjXq59GWXbicDPpSQkUODrjn9EqJZm7V1UEHRBiczpC1uJ12NPCHXwicqccv0g12dpNJgjdSIgp9XGA/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao36EbL_4u4qzQHH4kuuidfrTiv1QL_QEs9NXCAIG4tARB
    draft_created_at: 2026-07-19 08:56
    video_media_id: lEmH66TSP501Rw-1R2Ao357m24t2OUbQknK8W_mimS0FsSgaCx3pgU9m255w7TlR
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1784422217-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVJswMrvicFjYPesCj0vLWRVPTK4bh6ma5FmjlBLqTCU8dEh0jUKbpnA9TjK9kawGlIUozkbpyeUgb8jhEN48kiaAGq05EFbShiaM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784422310-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNX5DOSDviaonNFNKMY4rezjEpiaFUMpDlVEqtKavQyehzVmuOxicJa4uwKs48hmMiapzmd2njyIoN8rNYLeicd0icwPSh8zibhaVndBys/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784422323-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUtWTdIlVh6lgsk73SwZN7mCMEhNMlBiaqn5CznpBAhrs64pvVMVJRy7hDYH4rHCoibZstmibUzxr2aQZZ7ibibVHoJIO2Sgnq7Ivsk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784422371-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXrAG8XsJd81rPT8Tdt1TfDACxia1vB3maQ7vEZ1jwHHAwCpgGib3bdK7W8UcKtrlryXzsVHuU1MSVCavrjEpvgKc69xkiahVqOpI/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784422455-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXm1eZS2tgPxZHicPN0w6rMRTz9ib6avsVSOsiaKGgJCNpYZZWL1FwKYWY5MhJ9zo00tNy7hGQx2XlDsYlMXRmPGOWF7wHUORXtvw/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784422421-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXfSvT1gF9mcQNBV9TIot4B2iaPtdIm3S9ib9qicU02tHn0TdXpWkPfqEQNbtxZriawmbxAu9A4fY2bxcicMNAF2x7LX7Libklz8Z5JY/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-19 08:56
---
# 为什么优秀团队，总是在最后一刻才锁定方案？丨FDE重新理解信息价值

2025年年中，Karpathy说了一句话，很快传遍整个行业：该用"上下文工程"取代"提示工程"。这句话为什么会成立？因为大量团队在生产环境里发现，真正卡住agent的，从来不是prompt写得好不好，是有没有在每一步喂对信息。Shopify CEO Tobi Lütke几乎同时公开附和，几个月后，Gartner的报告里正式写下"提示工程正在过时"这个判断。

![02页.png](https://p.vibcx.com/x/2026/07/1784422217-02%E9%A1%B5.png)


今天我们听起来，似乎认为这一切已经理所当然。但这背后揭示着一个更大的风险：那些花几周甚至几个月反复调prompt的团队，一直在做"低价值的开发"——改一句措辞，加两个范例，调一下参数——却没有人回头去做"高价值的信息获取"：workflow设计到底对不对，context给得够不够。

这一篇要讲的，就是这个问题：**一条信息的价值，从来不取决于它能不能证明你是对的，而取决于它能不能改变接下来这份资源该投往哪儿**。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmrqy6572082p01tj6osvcho5" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 验证是一种信息获取，开发是一次资源投入

"项目启动后尽快开发、尽快验证"——这个预期不是盲目求快。客户需要看到进度，管理层需要收益投产比，市场窗口不会等人，多数情况下，行动确实比长期分析更划算。

![04页.png](https://p.vibcx.com/x/2026/07/1784422310-04%E9%A1%B5.png)


真正的问题在于，组织把"验证"和"开发"划了等号，默认验证必须靠开发去完成。可验证本质上是一次信息获取——搞清楚这个方向对不对；开发本质上是一次资源投入——把资源押在已经选定的方向上。

真正该问的，从来不是"要不要开始prompt等开发"，而是"下一条能拿到的信息，会不会改变项目的方向，就是这份资源会投向哪里？"。

**如果信息验证可能改变方向，那显然比开发更省成本、省时、高效。**

* * *

## 三个月里，真正被反复优化的是一个乐观假设

三个月调prompt等开发，背后是一串没有被检验过的假设在层层兜底：默认workflow设计没问题，默认context给得够，默认工具设计没问题——排除掉这三层之后，能动的只剩prompt，于是所有精力都投向了唯一还能改的地方。

![](https://p.vibcx.com/x/2026/07/1784422323-03%E9%A1%B5.png)

但真正需要被反复确认的，从来不是prompt，是"这套workflow是对的"这个假设本身——只是没人愿意去验证它，因为验证它，往往意味着要推翻已经投入的劳动。

很多团队并不是开始开发得太早，而是结束确认得太早。如果这个团队在第三周而不是第三个月，去问一句"我们默认workflow没问题，这个默认成立吗"，答案可能会一样，只是早了两个月拿到——这两个月，这份资源原本可以投去验证别的假设和需求。

过去，验证一个方案可能真的很贵——测试一个新的workflow设计，往往意味着重新写一遍集成代码，团队只能先开发，把验证的成本摊进开发过程里去处理。今天，调用一次模型几乎没有成本——这是a16z所说的"LLMflation"（大模型通胀）：搭一个workflow原型、跑一次agent实验、试不同的信息组合方式，成本比几年前低了一个数量级不止。

![05页.png](https://p.vibcx.com/x/2026/07/1784422371-05%E9%A1%B5.png)


**真正昂贵的，从来不是信息获取，而是过早停止信息验证。**

* * *

## 下一条信息，还有可能改变资源该投向哪里吗

一个方向值不值得继续走下去，答案不该由"已经投入了多少"来决定，而该反过来问：下一条能拿到的信息，还有可能改变这份资源该投向哪里吗？

![07页.png](https://p.vibcx.com/x/2026/07/1784422455-07%E9%A1%B5.png)


如果答案是没有，那就该把资源锁定下去，开始建设；

**如果答案是有，就该把资源继续留在探索确认上**，哪怕已经写了三个月代码。

* * *

## FDE重新理解信息价值

很多团队默认，一条信息越能证明自己是对的，就越有价值。

![06页.png](https://p.vibcx.com/x/2026/07/1784422421-06%E9%A1%B5.png)


**信息真正的价值，不是让判断更确定，而是让资源投向另一个方向。**

这就是Value of Information（信息价值）——决策理论里一个经典判断：一条信息只有在可能改变资源接下来投向哪里的时候，才值钱。一条只是让你更确信自己没错的信息，再详细也不值钱；一条哪怕简单粗糙、却足以让你把资源改个方向的信息，才是真正有价值的。

这道判断也不只发生在写代码这件事上——投资、产品方向、组织架构，任何一个"已经投入不少，还要不要继续"的时刻，问的都是同一个问题：下一条信息，还能不能让这份资源更换投放的地方。

* * *

## 写在最后

可行域回答的是这个方向存不存在解，这一篇回答的是，在把资源锁进这个方向之前，有没有认真问过下一条信息会不会推翻它。之前的文章「为什么真正决定AI项目成败的，是第一周？」里说过，项目不会放大能力，只会放大最初的判断——而这份最初的判断值不值得信任，恰恰取决于，资源被锁定之前，能拿到的关键确认信息是不是都已经拿到手了。

最后，如果方向已经足够确定，可以开始投入建设了，那实现方式如何选择？方案本身的复杂度会如何影响判断？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
