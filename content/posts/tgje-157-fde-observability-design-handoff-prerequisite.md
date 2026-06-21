---
title: FDE可观测性设计：不是运维任务，是能否顺利移交的前提丨AI沉默失败，客户如何第一时间知道？
date: 2026-06-22
draft: true
coverKeyword: FDE可观测性设计
description: FDE落地工程系列第07篇。以AI系统沉默失败为切入点，区分监控与可观测性的本质差异，拆解AI生产环境中的四类沉默失败（质量漂移/幻觉积累/成本失控/行为漂移），建立可观测性三层次框架。重点阐明FDE在可观测性设计、建设、移交三个阶段的具体角色，以及为什么可观测性是交接阶段能否成功的前提条件。
tldr: |-
  传统软件出错会报错，AI系统出错会继续跑——只是输出悄悄变差了，没有人知道。这就是沉默失败。Gartner数据显示今天只有15%的生成式AI部署有可观测性投入，意味着大多数跑在生产环境里的AI系统，出了问题没有人知道。

  监控和可观测性不是同一件事。监控追踪已知指标，需要你提前知道会出什么问题。可观测性让你探索未知故障，通过追踪、日志、评测数据重建系统发生了什么。AI系统的四类沉默失败——质量漂移、幻觉积累、成本失控、行为漂移——都不会触发传统监控报警，需要可观测性才能发现。

  可观测性分三层：运营指标是生命体征，质量评测是核心（用原型阶段建的评测标准做基线），行为理解是多步骤Agent系统的必需。三层叠加，从第一层开始建。

  FDE的角色是设计、建设、移交——不只是给客户一个仪表盘，而是在交接阶段把看懂系统、判断问题、处理异常的能力一起交出去。没有可观测性的移交，是把黑盒子交给客户。
tags:
  - 可观测性
  - FDE落地工程
  - Agent
  - 判断工程
  - 智能体
  - 生成式引擎
  - AI
  - GEO
  - OpenCode
  - ClaudeCode
  - AIAgent
  - LLM
  - 大语言模型
  - Hermes
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-157-fde-observability-design-handoff-prerequisite.png
  alt: tgje-157-fde-observability-design-handoff-prerequisite
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-157-fde-observability-design-handoff-prerequisite c n f uv i w b
publish:
  slug: tgje-157-fde-observability-design-handoff-prerequisite
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-157-fde-observability-design-handoff-prerequisite-AI沉默失败与可观测性前提.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-157-fde-observability-design-handoff-prerequisite-FDE可观测性设计框架.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-157-fde-observability-design-handoff-prerequisite-应对AI系统的沉默失败.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-157-fde-observability-design-handoff-prerequisite-Piercing
      the AI Black Box/10页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782004999-tgje-157-fde-observability-design-handoff-prerequisite-FDE%E5%8F%AF%E8%A7%82%E6%B5%8B%E6%80%A7%E8%AE%BE%E8%AE%A1%E6%A1%86%E6%9E%B6_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-157-fde-observability-design-handoff-prerequisite-FDE可观测性设计框架_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3xvzdx8Rf4U66_4jyskFu-B4pYhJLsAxAd8fdFBKStYH
    video_vid: wxv_4570326637304758273
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXUeyrSUhWAApOfFzQl5y3DFql1u6EZhe1syMm6D3RO3oYh6nbPN8hN2xuMgibtbjI3nIGbDN8ORFhKt76ibibl0dC03dP50YVjI8/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWL3yKTDTR8EPTzBnU3AM5A9A0OMVjDLqyeib3Eo6jjaCEZiaucWs8SKwvOkCsaww3UTI27LjYsgG2fpByHicic2ic7cz9BtV8fXcvU/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao34sMHghAEgnn57_kZW6joHQXTurw3agG7D-6vZQITf-m
    draft_created_at: 2026-06-21 09:30
    video_media_id: lEmH66TSP501Rw-1R2Ao39_r133aoXCuoDhswaveuMMFZoMNSVMeyHt6heiv0hrY
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782005106-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUxG8DPWPh4nIxia91XqsWJ1wEECwm6w5RRd5qFrReOhkGIDBoyKWSiblBsiaNWTfOmRfoFgc6rF5g55b3z0V2rsxLGFUX9GlibhRM/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782005144-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUzxHP7ocP2ab6M2qTINCrAJs7qNr81taPJtzc2uuLntTekP6lm4VYUicLPmBbUHNSBVIhn6kHbGOqSzenREsJy0pz8CGpViaibJw/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782005204-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXYEYiamudD3EDUEI0OlicFrWY4ic2ZlJnniaYARt1j4ukwWcEzTw11b7t4k7yZOBhfdavmFicCm0JIcbT0fOZdiby3haPc36ia0Ykcl8/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782005245-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXLwwbunjyrZXMAu2DLkWbibB1icMZn4sn4dxWodib0ia5tFOuTFNZq5VmBCzHc3YWUrWH3e0eM4xQzBPrqIJ9mm8oQeG5IibTjwicCQ/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782005283-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXpKftf3w1smrXBSsvJYHeZv5wV2yjoghJH9QGaPAqBlSnwCcveiaKfYa5DjGSjiaQbLogSonZAZusr5J7wvc8ibibw6UD6kic5GicFk/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782005302-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXxqvRspUmnx6ia4gp6xqvQ8EK8oVN6jr3vTLvSM6n3ZvADxBFpK74oepoBeOg3YWn6ibicNQ0zcKicTcWsnzZqRLz5WicyCultyvws/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# FDE可观测性设计：不是运维任务，是能否顺利移交的前提丨AI沉默失败，客户如何第一时间知道？

上一期说陪跑结束的标志是用户真正依赖系统。但系统被依赖之后，还有一个问题没有解决：系统出了问题，谁来发现，怎么发现？

传统软件出错有明显信号——报错、崩溃、返回错误码，用户知道出问题了，运维团队收到告警，有人去处理。

AI系统出错的方式不一样。它不报错，它继续运行，继续生成输出，只是输出悄悄变差了。用户可能隐约感觉到哪里不对，但说不清楚；也可能完全没有感觉，直接基于错误的输出做了决策，等到后果显现，已经是几周之后的事了。
![02页.png](https://p.vibcx.com/x/2026/06/1782005106-02%E9%A1%B5.png)

这就是沉默失败。

根据Gartner的数据，生产环境中的AI失败越来越多地是沉默的，LLM可观测性投入预计到2028年将覆盖50%的生成式AI部署，而今天只有15%。这个差距说明一件事：大多数现在跑在生产环境里的AI系统，出了问题没有人知道。

可观测性要解决的，就是这件事。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqn3ou7a0ecd010757c970yw" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 监控和可观测性，不是同一件事

很多人把这两个词混用，但它们解决的问题不同。

监控追踪已知指标，可观测性让你探索未知故障。

监控回答的是"这个指标有没有超出阈值"。它需要你提前知道会出什么问题，然后设置对应的报警规则。服务器内存超过80%，报警；API响应时间超过2秒，报警。这套逻辑对传统软件够用，因为传统软件的失败方式基本上是可以预先定义的。

可观测性回答的是"系统出了我之前不知道会出的问题"。它不需要你提前定义失败的形式，而是通过追踪、日志、评测数据，让你有能力第一时间追踪系统发生了什么，找到问题的根源。

LLM是非确定性的，运行成本高，而且容易出现标准应用监控工具根本捕捉不到的细微失败。同样的输入，不同时间可能产生不同输出。质量下降是渐进的，不会触发任何阈值报警。幻觉在特定场景才会出现，不是每次请求都有。这些失败方式，用监控发现不了，需要可观测性。

![04页.png](https://p.vibcx.com/x/2026/06/1782005144-04%E9%A1%B5.png)


* * *

## AI系统的四类沉默失败

具体来说，AI系统在生产环境里会以四种方式悄悄出问题：

**质量漂移**

模型输出的质量随时间逐渐下降，但没有任何报错。

原因可能有很多——上游数据的分布变了，用户的提问方式变了，外部模型提供商悄悄更新了版本。每一次变化都很小，单次看不出来，但积累下去，三个月后的输出质量可能已经和上线时完全不是一个水平了。

这类问题如果没有持续的质量评测机制，只能靠用户抱怨才能被发现。等用户开始抱怨，信任已经受损了。

**幻觉积累**

模型在某类场景下持续产生幻觉，但因为没有机制去检测，这些错误的输出安静地流进用户的工作流程。

用户可能不知道这些输出是错的——他们信任系统，接受了输出，基于错误的信息做了决策。等到后果暴露出来，可能已经很难追溯到根源是AI系统的幻觉。

**成本失控**

Token消耗悄悄增加，可能是某类查询触发了不必要的长推理，也可能是Agent在某个循环里卡住了，反复调用API。

这类问题不影响用户体验，用户完全感觉不到。但账单每个月都在涨，等财务团队拿着账单来问的时候，往往已经积累了好几个月的异常消耗。

**行为漂移**

Agent在完成任务的过程中，逐渐形成了一些设计时没有预期的行为模式。

单次看不出来，但把行为链路在时间维度上展开，会发现Agent现在解决问题的路径，和三个月前相比已经有了明显的偏移。这种偏移不一定是错的，但如果没有人发现它、评估它，就不知道是在变好还是在变坏。

![05页.png](https://p.vibcx.com/x/2026/06/1782005204-05%E9%A1%B5.png)


这四类失败的共同点是：它们都不会触发传统监控的报警，它们都需要可观测性才能被发现。

* * *

## 可观测性的三个层次

可观测性是追踪、指标、日志、质量评测和用户反馈数据的组合，让团队理解LLM或Agent做了什么、为什么这样做、出了偏差怎么调整。

从浅到深，分三个层次：

**第一层：追踪和运营指标**

最基础的层次——每次调用的延迟、token消耗、错误率、API成本。这些是系统的生命体征，告诉你系统有没有在正常跑，有没有明显的运营层面的问题。

这一层相对容易建，大多数LLM基础设施平台都原生支持。但只有这一层，你只能知道系统在跑，不知道跑得好不好。

**第二层：质量评测**

在追踪的基础上，对模型输出进行持续的质量评测。不只是系统有没有返回结果，而是返回的结果对不对、可不可靠、有没有幻觉。

这一层需要评测标准——正是原型阶段FDE和客户领域专家一起建的那套标准。那套标准在原型阶段用来验证方向，在这里变成了生产环境的质量基线，持续衡量系统输出是否还在可接受的范围内。

这是两个阶段之间一根重要的线：原型阶段的工作没有结束，它的产出转化成了产品化阶段的基础设施。

**第三层：行为理解**

最深的层次——理解Agent在完成复杂任务时的完整决策路径。不只是输入和输出，而是中间每一步推理是什么，在哪里做了什么选择，整个行为链路是不是符合设计意图。

对简单的单次调用系统，这一层可以先不做。但对多步骤Agent系统，行为理解是必须的——因为Agent出错的地方往往不是最终输出，而是中间某一步的推理偏了，后面的步骤都是在错误的基础上继续跑。
![06页.png](https://p.vibcx.com/x/2026/06/1782005245-06%E9%A1%B5.png)

三个层次是叠加的，不是互斥的。从第一层开始建，有余力了往第二层扩，系统复杂度上去之后再考虑第三层。

* * *

## FDE在这件事里的角色

说清楚可观测性是什么之后，要说清楚FDE具体做什么——因为这不是客户IT团队自然就会做的事。

大多数企业的IT团队有传统软件的监控经验，没有AI系统的可观测性经验。他们知道怎么监控服务器，不知道怎么持续评测LLM输出质量。如果FDE不在部署阶段主动设计这套机制并教会他们，交接之后，客户就只能知道系统跑着，但没有人真正看得见它在干什么。

FDE在可观测性上要做三件事：

**设计阶段**：和客户确认要追踪什么。运营指标之外，更重要的是业务层面的质量指标——什么叫输出质量好，怎么衡量，阈值设在哪里。这些判断不能由FDE单方面决定，需要客户的领域专家参与，因为"对"的定义来自业务，不来自技术。

**建设阶段**：把可观测性在工程化阶段就嵌进系统，不是上线后再补。追踪要在系统架构层面支持，评测要自动化跑在采样流量上，告警规则要在系统上线第一天就工作。

**移交阶段**：把可观测性的操作方法交给客户内部团队——不只是给他们一个仪表盘的访问权限，而是让他们理解每个指标的含义，知道看到什么信号应该做什么，知道如何解读行为追踪里的异常。可观测性不是给FDE自己用的工具，是客户团队在FDE撤出之后，独立运营系统的眼睛。

![08页.png](https://p.vibcx.com/x/2026/06/1782005283-08%E9%A1%B5.png)

* * *

## 为什么这是移交能否成功的前提

交接阶段，FDE要把系统的日常运营移交给客户内部团队。这个移交能不能成功，取决于客户团队能不能独立判断系统运行得好不好、出了什么问题、怎么处理。

没有可观测性，这些问题都没有答案。系统在跑，但客户团队看不见它在做什么，出了问题只能靠用户投诉来发现，处理问题靠感觉而不是数据。这样的移交，是把一个黑盒子交给客户，FDE走了之后系统的运营质量很快就会下降。

有了可观测性，客户团队有了眼睛。他们能看到系统的运行状态，能在质量下降的早期就发现信号，能追溯问题的根源，能基于数据做决策而不是靠猜。这样的移交，才是真正把能力交出去，而不只是把系统交出去。

![09页.png](https://p.vibcx.com/x/2026/06/1782005302-09%E9%A1%B5.png)


* * *

## 写在最后

可观测性在FDE的交付流程里有一个清晰的位置：原型阶段建评测标准，部署阶段把可观测性嵌进系统，交接阶段把操作能力移交给客户团队。三个阶段，一条线贯穿始终。

单独看，可观测性像是一个技术话题。放在FDE的交付框架里，它是每一次顺利移交的前提，也是系统被客户长期信任的基础。

下一篇讲沉默失败——可观测性设计好了之后，具体怎么让AI系统在出问题时主动发出信号，而不是等人去发现。这两篇是同一个问题的两个层次：一个讲为什么要建，一个讲怎么建。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。