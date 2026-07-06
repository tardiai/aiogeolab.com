---
title: 为什么越来越多AI项目，最后都输在判断力供给？丨FDE重新理解持续运营
date: 2026-07-07
draft: false
coverKeyword: 判断力供给
description: AI项目常常死在运行一段儿时间之后。这篇用Klarna的真实案例，拆开一个被忽视的机制——组织判断力的流失，往往比模型本身的漂移更快、更隐蔽，而且不会触发任何报警。FDE落地工程系列内容，重新理解"持续运营"到底在运营什么：真正需要被持续供给的，从来不是文档，是判断力。
tldr: |-
  Klarna的AI客服在2024年接管了700人的工作量，指标看起来一直很健康，两年后CEO却承认服务质量下滑，开始重新招人。死亡不是发生在上线那天，是发生在运行两年之后，而且过程中没有任何一次报警。

  行业把"维护"当成收尾工作，谁闲下来谁做，默认系统跑起来之后剩下的都是小事——这是把AI当传统软件在管，却没意识到真正在流失的从来不是代码。

  组织也会漂移，而且比模型漂移更快、更隐蔽——当初懂业务、能做裁定的人离开、转岗，留下的是一套没人能准确判断该信该停的系统，这种流失不会写进任何仪表盘。

  持续运营真正要供给的，是判断力，不是文档，不是SOP。真正的问题是——两年后接手你系统的人，还能不能做出当初那批人做出的判断？
tags:
  - 判断力供给
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
  image: /images/cover/AioGeoLab-cover-tgje-172-judgment-supply-not-maintenance.png
  alt: tgje-172-judgment-supply-not-maintenance
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-172-judgment-supply-not-maintenance c n f uv i w b
publish:
  slug: tgje-172-judgment-supply-not-maintenance
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-172-judgment-supply-not-maintenance-为什么AI项目死于运行两年后？.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-172-judgment-supply-not-maintenance-AI项目失败本质及对策.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-172-judgment-supply-not-maintenance-判断力供给决定AI生死.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-172-judgment-supply-not-maintenance-AI
      Judgment Supply/13页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1783291376-tgje-172-judgment-supply-not-maintenance-AI%E9%A1%B9%E7%9B%AE%E5%A4%B1%E8%B4%A5%E6%9C%AC%E8%B4%A8%E5%8F%8A%E5%AF%B9%E7%AD%96_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-172-judgment-supply-not-maintenance-AI项目失败本质及对策_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao30LUdyqD2nB_IwUnR316f50tkMFCXHnBywzNwbWr0Dc-
    video_vid: wxv_4591908442092896259
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNU8gfia2Vw9FJAgReTPyoeVIeFf6CPz1XcTzGjHYaTkXtLXHEnZn7N09ZBDGDbRaKaRzGgacJqRVhpeT6jTX5aoWFmggOefaHC0/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXvjbp27DNHMYBT6n8qkthvyqlvwQwN0gaXrUBKQn0xjeyEC1lNKaqsdU3rsUxsdcbCeaSf8gWuNicp06QWKibVdz59eEqBvljmU/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3574iS-7sGF5icD7b37iEQNx1IUiBYIjsBWOBu-0YtDN
    draft_created_at: 2026-07-06 06:57
    video_media_id: lEmH66TSP501Rw-1R2Ao37S2SxEXgFuKrb2crYNnCor5UjkAXQsNx7WoKRE2SUCM
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1783291760-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUXflp5UMcq3Swl49SxnJspMNuGlCzG5VNAODuvSibAIG8ZiaHgcP69Yz4YS2iboXra8YKMKaTj6iaDMkL9TSXu3dC5mEsGnNiavaW8/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291792-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXxbBoThlC5kibVLqR0SCCdlXVv27oYDgKWS42UqC0ibL2kclkmcPXtj9YG5UrZptdf7w0rlSHMtyxVu35Bjib4iaeric2OGicjpYCe0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291828-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVo07lB5CCMmdjNOibEzqM5t8LDpY2sw5BeGibcaOWibMGt5EvoNjstGpQAPmDlQVynLGaC8mOHLvjdU3jPedBXf1Qs619XHC9I0o/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291867-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNV2UgxsELNdvJVZ9EYCicKfxVR0eXPQjibgbQzNyBrREEygmRISAI5Qs9Josf2bPTMbWgyUjNia30eib8C5ibbEzSnJG9twAHPRrZrQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291885-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVOhibnNBrpRFD8yRTCkBIp3JLIe8TPGYW5icLvFdtyFTLeR1tcSHZ8drboLfXSibVFTKA6ibs5bYrLXWcfbwsbaV6YicD83eGX1O1Y/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291917-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXzljuyxnXF3OZvYWVxhpjSrxD2ph20wnkd5TpR8OrsQd48ArrfM0u2RRdO48HOFhQjyR0ibhAEI9UxhJeadPCkf4gDIrBgNAUo/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291932-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUGdllpvKFrTHqN5qFpGiam6GsCeEmmzeRYVMwXLibiaaNziaGIqxibfDV4N6HZevT7TkV5erx5Ea9Ttb70Cgm9hnsdS7jCvAAkjLy0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783292051-11%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUEHRYp6fxcaCqNBjK2liaKpLuWWckdFgPgrzhkrOTPFfUnMfx2nqQCfDr4tL7GUHk2Iznw597kSaib4RCGxjk0iaBdHG5VvFyowQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783291965-10%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXibLkBtUojvXhjreP2FFxx3z5TUCjjSlXGUe0b9wzZ6KRkVJJWERo4XPlMia2WZxuFcSGuCBNibSMHOf8JUSbZW6lqkzDNicYiaJ0E/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-06 06:58
---
# 为什么越来越多AI项目，最后都输在判断力供给？丨FDE重新理解持续运营

2024年2月，瑞典先买后付（BNPL）巨头Klarna和OpenAI合作打造的AI客服助手，接管了相当于700名全职客服的工作量，处理了公司约三分之二的客户对话。这家服务全球约1.5亿用户的金融科技公司，一时间成了"AI替代人力"的样板——这个故事后来还成了Klarna在纳斯达克上市时最核心的卖点之一，帮它在2025年7月上市时股价单日上涨30%，估值冲到196.5亿美元。

但故事没有停在这里。2025年5月，Klarna创始人兼CEO在采访里承认，公司在成本上"走得太远"，客服质量因此下滑，正在重新招聘真人客服，采用类似网约车司机的灵活用工模式。

![03页.png](https://p.vibcx.com/x/2026/07/1783291760-03%E9%A1%B5.png)

真正值得琢磨的不是"AI被证明不行"这种简单结论。**Klarna的AI客服在解决率、首次响应时间、单位时间处理量这些表层指标上，从头到尾都表现很正常**——真正暴露问题的，是重复来电率和用户差评这些间接信号，而这些信号在系统内部从来没有触发过任何警报。指标很健康，服务在变差，两件事同时发生，却没有一个仪表盘能同时看见。

而且这不是孤例。Gartner今年的判断是，到2027年，超过40%的Agentic AI项目（自主智能体）会被砍掉，理由是成本失控、价值说不清、风险管不住。这些理由听起来都像是"上线前就该发现的问题"——但现实是，很多项目已经上线运行了一段时间，是运行中才暴露出来的。

行业习惯把AI项目的生死线画在上线那一天：能不能通过验收，能不能稳定跑起来。但越来越多的证据指向另一条更隐蔽的生死线——**项目真正出问题的时刻，往往在运行的第二年、第三年，而且出问题之前，表层数据看起来一切正常。**


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmr8di8ys05hx01t61tjr5uti" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 维护，一个被低估的动作

![04页.png](https://p.vibcx.com/x/2026/07/1783291792-04%E9%A1%B5.png)

行业对"维护"这件事的默认认知，是一种收尾工作：系统上线了，项目团队完成了交付，剩下的事情——服务器、日志、报错、小修小补——交给一个技术支持团队去维护，不太需要懂业务。

这个认知在传统软件时代基本没错。传统软件的行为由代码决定，代码不改，行为就不会变，运维要处理的是环境问题、性能问题、偶发故障，本质上是工程稳定性问题，跟"谁懂业务"关系不大——这也是之前那篇「为什么AI上线以后，真正的工作才开始？」里讲过的判断，AI不是这样运作的。

这里面还有一层更深的**结构性原因**。真正搭建系统、吃透业务现场的人，项目上线之后，他们的下一站通常是下一个更有挑战性的项目，而不是留下来做"维护"这种听起来没有增长空间的工作。留下来接手的人，大概率没有参与过最初的设计和调试，拿到的是一套已经跑起来的系统，加上一份不完整的交接文档。

Klarna的案例有个细节：从2023年开始，公司经历了一轮裁员，员工数量下降了22%。留下来的员工被鼓励用AI工具去填补同事离职留下的空缺。

**那些原本知道"该怎么判断"的人离开了，AI需要填补的不仅仅是工作量的缺口，还有判断力的缺口**。而AI能填补前者，填补不了后者。

这就是"维护=收尾工作"这个认知的问题所在：它把AI项目当成传统软件在管理，默认系统一旦跑起来，剩下的都是执行层面的小事。但AI系统真正需要被维护的，从来不只是代码和服务器，而是当AI无法或者无权裁定的时候，接管系统的裁定。

* * *

## 不是模型在漂移，是组织在漂移

![05页.png](https://p.vibcx.com/x/2026/07/1783291828-05%E9%A1%B5.png)

之前讨论AI上线时提到过一个判断：AI不是一个稳定实体，它会漂移——输入的分布在变，模型底层会静默更新，输出的表现会随时间偏离原来的水平，而且大多数时候不会主动报错。这条判断说的是模型层面的漂移。

但组织层面还有另一种漂移，速度更快，也更隐蔽——**当初理解这套系统的人，正在离开、转岗、被抽调去做下一个项目。系统的代码没有变化，但组织对这套系统的理解力，正在随着人员流动持续偏离。**

![06页.png](https://p.vibcx.com/x/2026/07/1783291867-06%E9%A1%B5.png)


这两种漂移经常被混在一起讨论，但机制完全不同。模型漂移至少原则上可以被监控——只要愿意投入，输入分布、输出分布、置信度变化，都是可以量化追踪的对象。组织漂移没有对应的监控手段，因为它从来就不是系统能够自己检测的东西。没有一个仪表盘会显示，还有多少人真正明白这套系统在什么情况下该被信任、什么情况下该被叫停。

这也是为什么Klarna的故事格外有代表性：AI本身的能力没有明显下降，两年时间里模型甚至在持续迭代升级。真正变化的是组织内部——原来那批深度参与设计、清楚知道AI边界在哪里的人，逐渐被稀释在日常运营里，剩下的是一套看起来还在正常运转、但已经没人能准确判断它什么时候该被信、什么时候该被拦下来的系统。

比如：接手的人遇到一个和平时不太一样的案例，标准流程告诉他该怎么处理，他就照着执行了——但当初设计这套流程的人心里清楚，这条规则只适用于大多数情况，剩下一小部分需要凭经验判断要不要打破规则。这一小部分判断力，恰恰是最容易随人员流动消失的部分，因为它从来没有被写进任何一份文档，只存在于做过这件事的人脑子里。

这种流失符合沉默失败的典型特征——不产生报错，不触发告警，甚至不影响表层的运营指标。等到它变得可见的时候，往往已经是复购下降、投诉上升、品牌信任受损之后的事了。

![07页.png](https://p.vibcx.com/x/2026/07/1783291885-07%E9%A1%B5.png)


* * *

## 真正流失的，从来不是文档

![08页.png](https://p.vibcx.com/x/2026/07/1783291917-08%E9%A1%B5.png)

一个自然而然会冒出来的应对思路是：把判断力写下来。做知识库，写操作手册，建SOP，让"老人"的经验变成可以传承的文档，这样人走了，经验还在。

这个思路解决的是另一个问题，不是这个问题。

文档能保留的是规则——什么情况对应什么处理方式，这类可以被清楚描述的部分。文档保留不了的，是对"这次跟上次不一样"的敏感度——判断力最核心的部分，恰恰是识别例外、识别边界、识别"规则在这里应该被打破"的能力，而这种能力很难被写成一条可以照着执行的条款。

系统还在，流程还在，代码还在，知识库也可以建得很完善——**但如果没有人知道什么时候该相信这套系统、什么时候该停下来、什么时候该改，那就是判断力流失，跟文档写没写、写得全不全，没有关系。**

这是这篇文章想要划清的一条界限：持续运营不是知识管理项目，不是靠攒经验库就能解决的事。它面对的是一个更难的问题——组织能不能持续为系统输入正确的判断，而不是能不能积累做过正确判断的记录。

* * *

## FDE重新理解持续运营

![09页.png](https://p.vibcx.com/x/2026/07/1783291932-09%E9%A1%B5.png)

FDE看待持续运营的方式，和行业看待"维护"的方式，出发点完全不同。行业问的是"系统还能不能跑"，FDE问的是"这套系统的判断力，有没有在持续被供给"。

这里说的**判断力供给（Judgment Supply）**，指的是组织能不能持续拥有"理解现场、能做裁定"的能力——不是一次性建立起来就够了，而是一种需要被设计、被维持的持续状态。人会离开，团队会重组，业务会变化，判断力供给要面对的，正是这种持续的流动性。

![11页.png](https://p.vibcx.com/x/2026/07/1783292051-11%E9%A1%B5.png)


这里说的判断力，指的是判断交接层面的东西——谁在这一刻拥有对系统的最终裁定权，区别于系统交接——项目本身移交给客户。

判断交接完成的那一刻，只是**判断力供给这条链路被正式接上了，不代表这条链路从此不需要维护**。人还会继续流动，判断力供给需要被当作一个持续的运营问题来对待，而不是一次可以打勾的交付动作。

![10页.png](https://p.vibcx.com/x/2026/07/1783291965-10%E9%A1%B5.png)


具体到工程实践上，这意味着判断力供给不能只靠一次性的交接会议或者一份手册来完成，而需要设计成一种**持续暴露和校准的机制**——比如让新接手的人在真正独立做决策之前，先经历一段联合裁定期，让老人和新人对着同一批边界案例讨论"这次为什么该这样判断"，而不是简单地把规则念一遍。这套机制的目标不是让新人记住规则，是让新人重新建立起对"这次跟上次不一样"的敏感度。

一个真正做得好的AI项目，不是交付时验收通过的那个系统，是两年后接手的人，依然能准确判断这套系统什么时候该信、什么时候该停、什么时候该改。这才是FDE真正想在客户那里留下的东西——不是一套能自己跑的系统，是一套能持续产出正确判断的组织能力。

* * *

## 写在最后

行业衡量AI项目成败的时间点，通常停留在上线那一刻：能不能验收，数据好不好看。但真正决定一个AI项目能活多久的，从来不是上线时的技术水平，是上线之后，这套系统的判断力，有没有人在持续供给。

**AI真正的生命周期，从上线才开始；真正决定生命周期长短的，不是模型，是组织有没有持续为系统输入判断力。**

这也是这一组文章一路走下来共同指向的答案——**信任来自判断交接设计，价值需要被单独兑现，AI天生就会漂移，而最终，组织真正会流失的，是判断力**。

下一期想聊聊，当组织真的搞懂了判断力供给这套逻辑之后，会不会用一种完全不同的方式，去设计AI项目本身。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
