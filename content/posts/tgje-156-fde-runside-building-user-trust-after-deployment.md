---
title: FDE陪跑阶段：让用户信任并真正用起来丨部署≠采纳
date: 2026-06-21
draft: false
coverKeyword: 陪跑阶段四个具体动作
description: FDE落地工程系列第06篇。聚焦部署阶段最后、最容易被忽视的一关：让用户真正信任并用起来。拆解信任的三个层次（能力/意图/依赖），提出陪跑阶段四个具体动作（守在现场、让用户参与改进、找内部推动者、建立反馈循环），以及判断陪跑结束的三个行为信号。
tldr: |-
  系统上线之后，企业最常做的事是发一封全员邮件然后等用户来用。等来的结果通常是：头两周有流量，然后慢慢回落，大多数人试了两次就回到了原来的工作方式。部署和采纳是两件不同的事，一封邮件填不平中间的距离。

  用户对AI系统的信任分三层：能力信任（系统能做到它说的事）、意图信任（系统是在帮我不是监视我）、依赖信任（愿意把真实工作流程交给系统）。陪跑要建立的是第三层，前两层是基础，但光有前两层，系统只是个偶尔查阅的工具。

  陪跑阶段FDE做四件事：守在现场观察用户绕过系统的行为，让用户参与改进建立主人感，找到内部早期用户和管理者推动者，建立行为数据反馈循环替代感觉判断。

  陪跑结束的标志不是稳定运行天数，是三个行为信号同时出现：用户主动向同事推荐、系统不可用时感到受阻、用户开始提出扩展需求。
tags:
  - 陪跑阶段
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
  image: /images/cover/AioGeoLab-cover-tgje-156-fde-runside-building-user-trust-after-deployment.png
  alt: tgje-156-fde-runside-building-user-trust-after-deployment
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-156-fde-runside-building-user-trust-after-deployment c n f uv i w b
publish:
  slug: tgje-156-fde-runside-building-user-trust-after-deployment
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-156-fde-runside-building-user-trust-after-deployment-FDE陪跑阶段：构建AI用户信任.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-156-fde-runside-building-user-trust-after-deployment-FDE
      陪跑阶段信任指南.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-156-fde-runside-building-user-trust-after-deployment-千万级AI为何没人敢用.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-156-fde-runside-building-user-trust-after-deployment-Closing
      the Trust Gap/12页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1781912862-tgje-156-fde-runside-building-user-trust-after-deployment-FDE%20%E9%99%AA%E8%B7%91%E9%98%B6%E6%AE%B5%E4%BF%A1%E4%BB%BB%E6%8C%87%E5%8D%97_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-156-fde-runside-building-user-trust-after-deployment-FDE
      陪跑阶段信任指南_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao31K9I6EKuww3mvxaX0hz4XFMfkoz4WxaL4fzh6qHC-DT
    video_vid: wxv_4568780760982749186
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUt1mgjx74a4icAXgtAu4e7mDeA8tpG7qSkiczRtOvDn439xs0h3XFrh1eUUjpfFxaC0FzUctaZO1NSKKI7D8iaNt2LK1ruPoMw2w/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWKOHHUhXKFlBELicthXqHmuutJtQ9FUbpDhMyNxcBLnE8iaFNSVlVibCljF4ld27IjMYepicrmMZLcmJfWd7bQeYUv7l4GYxZ4WK8/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao30O1sOkcmrzwGP8K4U5uHYhDQqdIr0murvy-voYFqm3C
    draft_created_at: 2026-06-20 08:05
    video_media_id: lEmH66TSP501Rw-1R2Ao3w3ETAKUs-l3BEuuH5P3e8WQVdLtMXFU1EJsvIUe7nh_
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1781913429-%E7%AC%AC%202%20%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVy8EPhJKcdiblvDSXlhGQSBXoibAS3lGNiaS1G7Tk9nGpI3IN30SAPcbprrHxoRt6LVfxrzDheNZPH9gUYXTNquXJrfo1GRf34dY/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781913678-%E7%AC%AC%205%20%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWNbHbibS9vuq0SLJyUoYTtyHSE0v987jMAwibf0ChrG3rmwljdxSao0BiasWU2xhRR1WN5icib7ED6eae1hxSUJhpmvm1OHU6FgKNs/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781913567-%E7%AC%AC%206%20%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXsRq4M8iatIHtwp3jzeiappg8fso9IyFib0uLG4p8L7M7GYsSaibCDTqTekDtROP0iayQXYNjKkYSmkI96dBAfQbm5AnYL6qpod0P4/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781913648-%E7%AC%AC%2011%20%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXBQAuR3ZnqWsPKKFb1Ge7z0pVyO3FWDxPVhI75Jo21xgbPYQsbmRncFtS8bmJzuDibdcvflNP8XZyLN87BmMxO1icYzmerbdbfc/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781913861-%E7%AC%AC%2012%20%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWRSH1Byq2VYukv8oagLxVZQtSKgs79RMep5tC5lOIDXaicAHxkFGfsjAZ2YRklZ3BaicvHeFib23HcxwVeic3hFTAw1qicB1tC6vmo/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-06-20 07:48
---
# FDE陪跑阶段：让用户信任并真正用起来丨部署≠采纳
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1781912862-tgje-156-fde-runside-building-user-trust-after-deployment-FDE%20%E9%99%AA%E8%B7%91%E9%98%B6%E6%AE%B5%E4%BF%A1%E4%BB%BB%E6%8C%87%E5%8D%97_1280_714.jpg)
<!-- infographic-end -->


集成障碍打通了，裁定接口设计好了，系统部署上线了。然后安排一场上线发布会，发一封全员邮件，告诉所有人新系统已经上线，欢迎使用。然后等用户来用。

这样等来的结果，通常让人沮丧。

系统的访问日志显示，头两周有一波流量，然后慢慢降下去。大多数人试用了一两次，发现有些地方不顺手，或者输出不够可靠，就回到了原来的工作方式。系统上线了，但没有人真正在用它。

这并不是个案。麦肯锡的数据显示，尽管企业AI部署已经全面铺开，但实际的效果普遍很小。系统部署上线了，不等于用户会用。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqlktwjo0b9w01xc0ams3py7" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 信任鸿沟，从数字开始理解

先看一个数字，它很能说明问题。

WalkMe对3750名企业员工的调研发现，在涉及复杂业务关键决策的场景里，只有9%的一线员工说他们信任AI的判断。同样的问题问高管，这个数字是61%。

这个差距很重要，因为它揭示了一个结构性问题：决定要不要部署AI系统的人，和真正要每天用这个系统工作的人，对AI的信任程度差了将近七倍。高管签字采购，觉得AI很可靠；一线员工打开系统，觉得它不可信赖。

这不是沟通问题，也不是培训问题。当AI只是辅助人工作得更快，问题还不明显。但当AI开始自主行动、代表用户做决策、和其他系统交互，人们自然开始担心：这个系统安全吗？出了问题谁负责？它替我做的决定，我能信任吗？

这些问题没有办法用一场培训课来回答。它们需要用户亲眼持续看到系统在真实场景里的稳定表现，在使用过程中逐渐积累对系统的信任判断，需要时间。

陪跑阶段做的，就是陪着用户经历这个过程。

![第 2 页.png](https://p.vibcx.com/x/2026/06/1781913429-%E7%AC%AC%202%20%E9%A1%B5.png)


* * *

## 信任是三层叠起来的

用户对AI系统的信任，分为三层，每一层的建立方式不同，每一层的脆弱程度也不同。

**第一层，能力信任：相信系统能做到它声称能做到的事。**

这一层建立起来相对容易——给用户看几个真实的成功案例，系统处理了一个过去需要花几个小时的任务，准确率达到了预期，能力信任就开始建立了。

但这一层也最脆弱。系统一旦在用户面前出现一次明显的错误，能力信任会迅速下滑，而且很难靠讲道理来修复——用户亲眼看到系统出错了，这个印象很难被后来的数据覆盖。

**第二层，意图信任：相信系统是在帮我，不是在替代我或者监视我。**

这一层和技术关系不大，和组织文化、沟通方式、系统被引入的方式关系很大。如果用户感觉AI系统是被强加进来的，或者觉得引入AI是为了减少人力，意图信任就很难建立，甚至会有主动抵制。

这一层的建立，需要从一开始就让用户参与进来，让他们感受到这个系统是在给他们用的，而不是用来替代或者管他们的。

**第三层，依赖信任：愿意把真实的工作流程交给系统来支持。**

这是最高层，也是采纳率背后真正在衡量的东西。不是用户偶尔查一下系统，而是用户在日常工作里真的开始依赖系统——系统如果突然不可用了，他们会觉得工作受阻。

陪跑阶段要建立的是第三层。前两层是基础，但光有前两层，系统也只是一个用户偶尔会打开的工具，不会真正衔接进自己的工作流程。
![第 5 页.png](https://p.vibcx.com/x/2026/06/1781913678-%E7%AC%AC%205%20%E9%A1%B5.png)


* * *

## 陪跑阶段，FDE具体做什么

**守在现场，不是远程支持**

陪跑不是发培训手册，不是安排几场演示课，不是设一个反馈邮箱等用户来报问题。

是FDE真的坐在用户旁边，看他们怎么用。

这里有一个具体的观察非常有价值：用户绕过系统的行为。用户本来应该用系统处理某件事，但他们没有，他们用了原来的方式。这个动作，不是需要纠正的问题，是需要理解的信号。

绕过系统背后通常有两类原因：系统在这个场景下的输出不够可靠，用户不信任；或者系统的操作流程和用户的实际工作节奏不匹配，用它比不用它麻烦。这两类问题，坐在远程看日志发现不了，守在现场才能看到。

**让用户参与改进，不只是接受系统**

我们之前提过摩根士丹利的案例：FDE让财富顾问亲自标记数据、提供反馈，反复调整输出，直到顾问们真正信任系统，敢用它去服务高净值客户。这样最终采纳率达到了98%。

这个结果背后的逻辑不复杂。用户参与了系统的改进过程，他们理解这个系统是怎么工作的，知道它在哪些场景下可靠、哪些场景下需要人来复核。这种理解是通过亲手参与建立的，不是通过听课建立的。

参与改进还有另一个效果：用户会把系统的成功当成自己的一部分。他们帮助定义了什么叫"对的输出"，他们参与了让系统变好的过程，他们对系统有一种主人感，而不是被动接受者的感觉。

**找到内部推动者**

FDE守在现场能做很多事，但有一件事FDE做不了：替代组织内部的影响力网络。

Prosci的研究测量了领导层支持对AI推行结果的影响，顺利推行的组织得分+1.65，推行困难的组织得分-1.50，在四分制的量表上差了3.15分。这不是说领导支持是锦上添花，是它字面意义上决定了项目的走向。

陪跑阶段，FDE需要找两类人。

一类是早期使用者中用出效果的人。找到他们，让他们的使用方式变得可见——不是做成PPT在会议上汇报，而是让他们的同事看到他们怎么用，看到系统在真实工作里带来了什么变化。真实的使用场景，比任何培训材料都有说服力。

另一类是在组织里有影响力、对AI持开放态度的管理者。让他们成为内部的推动力量。FDE不可能永远守在这个客户这里，内部推动者是FDE撤出之后，采纳率能否继续增长的关键。

**建立反馈循环，不靠感觉判断进展**

用户用系统的过程里，会持续产生信号：哪些输出他们接受了，哪些他们修改了，哪些他们直接忽略了，哪些场景他们开始绕过系统。

这些信号是系统改进最有价值的输入，也是判断信任是否在建立的最直接指标。

陪跑阶段要设计一个正式的反馈收集机制，让这些信号能够被系统地捕捉和分析。不是靠FDE自己的感觉判断"用户好像开始信任系统了"，是靠行为数据说话。用户修改AI输出的比例在下降，说明能力信任在建立。用户主动用系统处理更多类型的任务，说明依赖信任在深化。

![第 6 页.png](https://p.vibcx.com/x/2026/06/1781913567-%E7%AC%AC%206%20%E9%A1%B5.png)


* * *

## 陪跑阶段结束的标志

不是系统稳定运行了多少天，不是用户没有来报问题，不是培训完成率达到了某个数字。

是三个行为信号同时出现：

用户开始主动向同事推荐这个系统。这是依赖信任建立最强的信号——一个不信任系统的人，不会去劝说别人用它。

系统暂时不可用的时候，用户会感到工作受阻，而不是无所谓地切回原来的方式。这说明系统已经真正接进了他们的工作流程，而不只是一个可用可不用的选项。

用户开始提出新的需求，想让系统帮他们做更多的事。从被动接受变成主动扩展，这是依赖信任最成熟的表现。

当这三个信号出现，陪跑阶段的核心任务就完成了。系统不再需要FDE守在旁边，它已经被接进了用户的日常工作。
![第 11 页.png](https://p.vibcx.com/x/2026/06/1781913648-%E7%AC%AC%2011%20%E9%A1%B5.png)


* * *

## 写在最后

部署阶段这三篇，集成墙讲的是怎么把系统接进真实环境，裁定接口讲的是怎么设计人类介入的机制，陪跑讲的是怎么让用户真正信任并用起来。三件事缺一件，部署都不完整。

技术能做到的，是让系统跑起来。信任能做到的，是让系统被用起来。后者比前者难，花的时间也更长，但它才是部署真正完成的标志。

下一篇进产品化阶段——系统稳定运行、用户真正在用之后，怎么把这次交付积累的经验提炼成下一次可以直接复用的东西，以及这一步为什么是FDE和外包最本质的分水岭。

![第 12 页.png](https://p.vibcx.com/x/2026/06/1781913861-%E7%AC%AC%2012%20%E9%A1%B5.png)


* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
