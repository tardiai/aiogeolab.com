---
title: 为什么AI上线以后，真正的工作才开始？丨FDE重新理解AI上线
date: 2026-07-06
draft: false
coverKeyword: AI系统不是一个稳定实体
description: FDE落地工程系列。AI系统不会表现得像一个稳定的实体——同样的输入可能在不同时间给出不同的输出，模型会被静默更新，业务场景本身也在变。本文用FDE视角揭示为什么AI项目上线之后才是真正工作的开始：漂移是AI系统的默认状态，运营是上线前就该设计好、上线那一刻开始运行的责任机制。
tldr: |-
  AI系统不是一个稳定实体。传统软件代码不变行为就不变，AI系统代码没变行为也可能变——非确定性、模型提供方的静默更新、真实世界输入分布的自然漂移，三个来源共同作用，让系统表现持续偏离，且通常不会主动报错。

  漂移不是异常，是AI系统的默认状态。它不是bug那种一次性、静态的问题，是持续的、动态的，没有人做错任何事，系统表现依然会自己往下掉。

  传统软件能"交付即完成"，是因为代码和行为之间是稳定映射。AI系统这个映射断裂了，所以需要的不是运维（等信号出现再处理），是运营（主动持续确认系统是否还在正常工作）。

  AI运营不是上线后的工作，而是上线前设计好的责任机制开始运行。具体的可观测性框架和沉默失败防线，是这套机制的眼睛和手；治理先行——谁负责监控、什么触发复查、能不能回滚——是这套机制常被漏掉的第一步。传统软件上线意味着稳定，AI系统上线意味着开始变化。
tags:
  - AI运营
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
  image: /images/cover/AioGeoLab-cover-tgje-171-ai-is-not-a-stable-artifact.png
  alt: tgje-171-ai-is-not-a-stable-artifact
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-171-ai-is-not-a-stable-artifact c n f uv i w b
publish:
  slug: tgje-171-ai-is-not-a-stable-artifact
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-171-ai-is-not-a-stable-artifact-为什么AI上线后真正的工作才开始.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-171-ai-is-not-a-stable-artifact-FDE重新理解AI运营.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-171-ai-is-not-a-stable-artifact-AI上线为何悄悄变笨.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-171-ai-is-not-a-stable-artifact-Beyond
      AI Launch/09页.png
  cdn:
    infographic_url: null
    infographic_1280: null
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3zQAOYvjulm15Lm1IEDk6Yt8x_lQvpPU1SOauoJe9xZ8
    video_vid: wxv_4590454950618382337
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVtBCMzqYyFw7RD0D6pqjeaPLU5cY0aYiaSSPRpzC6g5gDShRcBGQ2uNuaic3ciaicVNQEMMqS5icc0gayJUafAcAeHVuGrWgKfEtlw/0?wx_fmt=jpeg
    infographic_wx_url: null
    draft_media_id: lEmH66TSP501Rw-1R2Ao39LHvlk3Dd2hAsd6c86nWdC3fepWlwkRs9EG3OTzreL3
    draft_created_at: 2026-07-05 09:55
    video_media_id: lEmH66TSP501Rw-1R2Ao38j5xXDITMxuLuPEMZydFb2Pq208slVtZdbjB_cVDCcq
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1783204802-02%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNX53dQXZxUdJ3NB3fwZOjBMXIdbdvxsganAM4UYUicAHTAXf3qI0jIFdicJUVW9Yibo5icyev2DcYjvDbA273dDzdG4jORtRZ3aZfc/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205126-07%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWCaGrBI8fBlY5PwdVK5FgF8KfjyGOibick3ZpzdxH0NibAEP050ZAyy58YoeFDLt8aGTXkTBAmWPvLGUDqHjepBUuo4MwVCCDypI/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205154-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWlLYS4sPqA6tUTqargddGA0kAicAFnMLdqqNv15BZLtHckhQ3l2olOC6icQKIvoUzma0ETfTgf9Jehct8n87ibWdhEgNdn6IZRXM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783204768-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWNxffBkSOeKGmeXDKTDctrbiaiaYHrwKTxbcrHrQVqAozYCMsRst56r2KmVHCyOkhu2FcHYyo1bxmRwfZHPtLd02M3KrEibIwEwM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205208-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXahMj4wfAEJicVUqcDVIeicpuxJzPVVibEHPmKVybe6o5ZmRiaE4CepwmdkkL9RicXuHDTzFw0Rf7pOz9EPR9fjxo39vUiaxXQPHxmk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205268-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWIQicxM8sib3J3ZX93ID2AujuVRa7ia9pg7218tdicOpmgLeM5vicsw1ibjmVt3uTwKiaNNkq0nXb1s8ek6Xvqj73FA1KnrybGsude5I/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205318-11%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWRlEtt3vdgw2FPNnHQMAtHpgnHnoiaM5StMu9ZQ8dXUZvoDjuGdfY1M7WrgYicb7mULV3vChia50ZL8LOCibJSKcaLJn6qgOsaIEs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783205335-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVLSibJOtQibZKad01WjPEruibde1JtLpAc1eU5oqSrSnoRVyZJ4tSH6lyTdCvtlficRozZxJN0xtSaunk7NwHqBapXJwFwyuWYXPY/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216292-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWTBaxKDsaa5IVuFoeTMFuOiaaGLgkG7nn6T7yNFzoY4S1pibHibxkooJu6bq5eLEGgibYoY2v5x2gVkbrCXibnrQCWrXKHM1m0cETo/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216319-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXKcUcjdqj1TbuUOXgr6kTicJ7bibgNVrv6nhkhbiaqwGIh3iadu2ayaUC0VxrgkrI5V6wmOmpIPuJPl4bUKlQibUNDEPia3zEeNIHWQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216343-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNW5gIQBxrbsQcxDdlbQzp0wAnZmTyK7W0micZv5wJtBS0M9JWfCXDQIRcerJsAZFahHia6RNngCQaFPDwDmZzotWicwibicJ31MFD1s/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216361-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWe9HmEhz7XSJgUq7k6jC9QVqKlUUZrVZGzq6F7IqZV5dRETHMy5ktBXG0TCkaoyIqKMCWojc6nhQMThEsfsRgn02U6PYaDQ8k/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216378-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUjpDFZ0xPHRibVzSW31rxddvibr08qqOnxiaJ6FNoX6hEialaXRARVlQHCmI84GbAUZPHpvvg6Fj0vTJ4w4kuHFFsEhB6LRlrbicPI/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783216389-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVyy9uzzE39Lb2UqiaibLpCSOucEFeX5micU4rJQq8enaht0v4ibHeg02lCAyibuJic8gXObwmnzs4iczSCYMggLHjcfibdyVTrhaTraCw/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-05 09:55
---
# 为什么AI上线以后，真正的工作才开始？丨FDE重新理解AI上线

基于大语言模型或自适应机器学习架构的AI系统，不会表现得像一个稳定的实体。它们和不断变化需求与行为的用户交互，被整合进并非为它们设计的机构工作流里，还会接收更新、微调和配置变更——这些变化未必会立刻被部署它们的组织看见。

**AI不是一个稳定实体。**

传统软件是稳定实体。一段代码写好、测试通过、上线，只要没有人再去改它，它的行为就是稳定的。今天调用它，明天调用它，输入一样，输出一样。上线那一刻，交付完成，剩下的工作是常规维护——出了问题，找到那行代码，修好，结束。

![03页.png](https://p.vibcx.com/x/2026/07/1783216292-03%E9%A1%B5.png)


AI系统不是这样运作的。代码没有变，模型也没有变，它的行为却可能变。

2025到2026年，这个问题被推到了更明显的位置：欧盟AI法案专门用了一整章，处理上市后监控、严重事件报告和市场监督。监管层面已经在用行动确认一件事：AI系统真正的风险，不是在上线之前，是在上线之后。

行业里最常见的默认假设是：上线意味着交付完成，剩下的是常规维护，和传统软件一样。这个假设错了，错在一个最基本的技术事实上——AI不是稳定实体。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmr6xyrb200hi01x20ndxgfkp" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## AI不是偶尔漂移，而是一直在漂移

不稳定，具体表现为一种传统软件不存在的现象：**漂移**（Drift，模型表现随时间、输入分布或底层更新逐渐偏离原有水平，且通常不会主动报错）。

**漂移不是异常，是AI系统的默认状态。AI不是偶尔发生漂移，而是一直在漂移。**

漂移和bug不是同一类问题。bug是静态的、一次性的——某处代码写错了，修好，问题就消失了，不会自己复发。漂移是动态的、持续的——没有人做错任何事，系统的表现依然会自己变化，除非有人主动介入。

![04页.png](https://p.vibcx.com/x/2026/07/1783216319-04%E9%A1%B5.png)

漂移有三个来源。第一，模型的非确定性——同样的输入，在不同时间调用，可能得到不同的输出，这是大语言模型工作方式本身带来的，不是故障。第二，模型提供方的静默更新——底层模型可能在使用方毫不知情的情况下被微调、被替换成新版本，行为随之改变，但界面上什么都没提示。第三，真实世界输入分布的自然漂移——业务场景本身在变，用户的问法在变，训练时见过的模式和生产环境里实际出现的模式，会随着时间逐渐脱节。

![05页.png](https://p.vibcx.com/x/2026/07/1783216343-05%E9%A1%B5.png)

这三种来源都不会主动报错。系统看起来照常运行，用户照常提问，照常得到答案，只是这些答案悄悄地、一点一点地，变得不那么准了。

之前的文章「FDE沉默失败防线：让AI系统自己报警，比你想的难」里讲过具体怎么设计报警机制去应对这种悄无声息的失败。这一篇要说的是更早一层的事：为什么这件事从上线那一刻起就已经在发生，不是某天系统突然出问题才开始的。

* * *

## 为什么传统软件能"交付即完成"，AI不能

![06页.png](https://p.vibcx.com/x/2026/07/1783216361-06%E9%A1%B5.png)


这里的核心问题是：为什么传统软件可以把上线当成终点，AI不行？

答案在一个最基础的对应关系上。传统软件里，代码不变，行为就不变——这是一个稳定的映射，写好的逻辑执行多少次，结果都一样。AI系统里，这个映射断裂了：代码没变，模型文件没变，行为却可能变。因为AI真正在"运行"的不只是代码，还有它每一次推理时依赖的模型状态、它接收到的实时输入，而这些东西本身就在持续变化。

之前的文章「为什么AI项目越来越像组织工程？」里提到过一个判断：IT交付能力，AI交付行为。这句话在这里有了技术层面的解释——能力是静态的，一旦交付就固定在那里，像一把造好的锤子，今天和明天没有区别。行为是动态的，会随着它所处的环境持续变化，像一个人的判断力，会被最近遇到的事情影响。

这个差异，决定了"维护"和"运营"是两件不同的事。传统软件需要的是**运维**——系统出问题了，去修；系统要扩容了，去加资源；本质上是响应式的，等一个明确的信号出现，再去处理。AI系统需要的是**运营**——系统即使没有报错、看起来一切正常，它的表现也可能正在偏离，需要主动地、持续地去确认它是不是还在正常工作。运维等信号，运营找信号。

* * *

## FDE重新理解上线：不是终点，是责任机制生效的时刻

![07页.png](https://p.vibcx.com/x/2026/07/1783216378-07%E9%A1%B5.png)

**上线不是运营的开始信号，是提前设计好的责任机制正式生效的那一刻。**

这句话把"运营"从一个时间段（上线之后）重新定义成了一个机制（上线之前就设计好，上线那一刻启动）。这个机制包含哪些具体内容，之前的文章已经给出了完整的操作框架：

「FDE可观测性设计：不是运维任务，是能否顺利移交的前提」里给出了可观测性的三层次——运营指标、质量评测、行为理解，这套体系是发现漂移的眼睛。「FDE沉默失败防线：让AI系统自己报警，比你想的难」里给出了三道防线——上线前评测门控、生产流量持续质量评测、用户反馈信号，这套体系是应对漂移的手。这两篇讲的都是具体怎么做。

这一篇要补的是这套体系之前还差的一步：**治理先行**。在系统第一次真正上线之前，就要明确写清楚三件事——谁负责监控这套系统的表现，什么程度的性能下降会触发一次正式复查，出了问题能不能回滚到上一个可用版本。这三个问题不难回答，难的是大多数团队根本没想过要在上线前问——因为默认假设还是"上线即完成"，运维思维的惯性太强，运营该有的责任机制，从来没有被真正设计过。

这也是为什么这个判断能把系列里前几篇串起来：责任机制不清楚，之前的文章「为什么Agent越来越聪明，却越来越难进入企业？」里讲过，责任模糊会让Agent卡在审批环节进不了生产；同样的责任模糊，放到运营阶段，会让漂移悄悄发生却没有人第一时间知道。信任建立不起来，之前的文章「为什么老板觉得AI很好，员工却越来越不用？」里讲的交接设计问题，在运营阶段会以另一种方式重演——系统表现在下降，但没有人被清楚地授权说"我发现了，我来处理"。

![08页.png](https://p.vibcx.com/x/2026/07/1783216389-08%E9%A1%B5.png)
运营，从来不是上线之后才开始想的事。它是上线之前就该设计好的责任机制，在上线那一刻，正式开始运行。

* * *

## 写在最后

传统软件，上线意味着稳定。AI系统，上线意味着开始变化。

理解了这句话，就理解了为什么AI项目真正的工作，从上线那一刻才开始——不是因为团队偷懒省了运营的事，是因为AI这个东西，天生就不是一个可以"上线后不用管"的稳定实体。

运营体系设计好了，对抗漂移的机制启动了，是不是就万事大吉了？还有一个更长期的问题在等着：如果对抗漂移是一场需要持续投入的战斗，那些没能一直打赢这场仗的项目，最后会走向哪里？下一期：为什么越来越多AI项目，最后都输在长期运行？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。