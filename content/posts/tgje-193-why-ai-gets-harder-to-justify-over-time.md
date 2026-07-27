---
title: 为什么AI项目上线越久，反而越难证明它有效？丨FDE重新理解价值复验
date: 2026-07-28
draft: false
coverKeyword: FDE重新理解价值复验
description: 一套客服AI上线两年，仪表盘一切正常，但续约时没有人能回答：与今天可选的方案相比，续约究竟买回了什么。本文解释为什么系统运行越久，能够证明它仍在创造增量价值的证据反而越少——FDE称之为比较基线失效。文章提供一张价值复验卡，帮助组织在续约或扩张时重建足以支持下一次选择的证据。
tldr: |-
  一套客服AI上线两年，调用量、响应时间、自动化率全部达标。到了续约时，财务问了一句"不续会多花多少钱"，没有人答得出——不是因为数据不够，而是数据只能证明系统在运行，证明不了它比今天的替代方案更值得。

  系统运行得越久，能用来比较的对象消失得越彻底。原来的人工流程早已撤掉，团队围着AI重新配置，竞品能力和价格都变了。续约报告仍在引用两年前的ROI，但那份测算比较的对象已经不存在了。

  AI系统让这种比较基线的消失来得更快：模型和供应商迭代快，用户会适应，系统输出会改变后续输入，今天运行的版本可能已经不是当初验收的那个。

  价值复验不是让成熟系统重考入职考试，而是在续约或扩张等节点重新回答一个问题：与今天的选项相比，继续使用的证据是否充分？维持现状完全可以是结论——只要建立在当前证据上。
tags:
  - 价值复验
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
  image: /images/cover/AioGeoLab-cover-tgje-193-why-ai-gets-harder-to-justify-over-time.png
  alt: tgje-193-why-ai-gets-harder-to-justify-over-time
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-193-why-ai-gets-harder-to-justify-over-time c n f uv i w b
publish:
  slug: tgje-193-why-ai-gets-harder-to-justify-over-time
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-193-why-ai-gets-harder-to-justify-over-time-价值复验：AI投资回报率的未解之谜.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-193-why-ai-gets-harder-to-justify-over-time-AI项目续约价值复验指南.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-193-why-ai-gets-harder-to-justify-over-time-全绿仪表盘的AI价值陷阱.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-193-why-ai-gets-harder-to-justify-over-time-The
      AI Value Paradox/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1785106202-tgje-193-why-ai-gets-harder-to-justify-over-time-AI%E9%A1%B9%E7%9B%AE%E7%BB%AD%E7%BA%A6%E4%BB%B7%E5%80%BC%E5%A4%8D%E9%AA%8C%E6%8C%87%E5%8D%97_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-193-why-ai-gets-harder-to-justify-over-time-AI项目续约价值复验指南_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3-BktLqA8kRdTnCnnCd77xWRNHiZdrueAtjj5IUpUeca
    video_vid: wxv_4622356063412224002
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNX65S52kx0hv0HgfdFQDBQjRXES08LQLyHLia9NDPT2JBk35onicevW9kOV0Xx4iaW5gCbvgboXUIaPjk5FO8ZG8icS8xVZZ0IWoj4/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVnv9EUa6icg4Sf3jXfgwicy8UO3nf3icSQn8Us8bO2fmG1Mh3xwuJnqjpdvIBTkDeg4wZsJvEFOucibsLH2zk7FSbtyqIDdBmiciaV4/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3xDivqiSEE1i-6FLVgg-dwG-Migmkslw374egbmoKBsF
    draft_created_at: 2026-07-27 07:14
    video_media_id: lEmH66TSP501Rw-1R2Ao39deErn1jo5OaEreMWJLK9PtcDF3M_okzdbQRvzjvOT3
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1785107132-02%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVPdsZ9FZ59bUQuszxicZdibjy4NckCzjs9QDEdVj63x75kL0OMGJricdiaf9oqwrSUicaSVy4Ft8xcroRNmrkMnav9LYew324v62zA/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107154-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNX1lNnwLSz3o05C2WxLtJelO0c9YzM25ybibF2ubD6fkQmQS5aicDxvTz45cDib49voiaYib9JcrOZTStWmjZsd0umttSYBlGh2vAGY/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107197-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVtBdiaSglJgvCibnfkXK53hSBiavnRnbuo6Sew29ub5Ic5k3w47uyzDXbCwSuHTQwPJxvGB9X8Q45IvOVtJ6H4daiag8icjZNKBY5I/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107253-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVmPr4Ve0lHzglgF8Gxf1y9egNlN4gwLTmraH9yZJNpAIXj2LGicp8hibFe7Y0OQaPJuu5IrKL3bBTyBulfmyM0BOgp7hlacdgN0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107264-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVPicmPRzQuEH6ApLLZbLgNeqYNunN2Hib2uFOzpyZ0YqoIFM5CHGubngaD0EuFuMjQvQmH6swL7KAd6KuQVJDoicVPVzAb3icCf48/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107284-07%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXFYznjicicYuobXqczTcy3KcneFH45JApy1gKT7zuKmqnbIo5cADQV2UBIRkdcnmGr7YDhsCmrD6S2jK4sZ2iakvwm7o7oRzzpQg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107299-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUe9tkytWvoMh1j27KpLicYibribwNzbMwiaZwEmD0jmoeaXS0d0lTOWzgrox6ejFPf47fvSrPibWS2wBw7VN1nEGChXBFQUcE8D9z0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107334-11%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNW8oYUF3bIK0VKsv11buibvRWQj109lVI5TVYXq7zzReVpwxmWW7ibMVPnXAwIYO6o2nHxh5DFNEEiaUxkn7Yl1UXH6gcSJnnCgib4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785107352-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWuQCicHJ7gdw5NC2uzEia7fwoMZ0FnNlg8zNQ5Eb5Xag5hwBXDye4SHKZeo21l5WyICMoZTSFtDGVKXuRbANw96XCpCeovV5Bg0/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-27 07:15
---
# 为什么AI项目上线越久，反而越难证明它有效？丨FDE重新理解价值复验

先看一个例子。

一套客服AI上线两年了。仪表盘指标一切正常：调用量还在上涨，响应时间持续下降，自动化率达到了立项时承诺的目标。

![02页.png](https://p.vibcx.com/x/2026/07/1785107132-02%E9%A1%B5.png)

到了供应商续约的时候，财务在评审会上问了一句：如果明年不续，我们究竟需要多花多少钱？（它能帮我们每年省下来多少钱？）

没有人答得出来。

不是因为数据不够。系统每天处理多少条请求、平均响应多快、自动化覆盖了多少比例，全都有。答不出是因为：这些请求中有多少必须由这套系统处理？如果换成今天市面上的其他方案，成本和效果会怎样？员工在系统运行中处理了多异常例外？这些例外有没有计入成本统计？

![03页.png](https://p.vibcx.com/x/2026/07/1785107154-03%E9%A1%B5.png)

调用量和自动化率可以证明系统仍在工作，但续约需要回答的不是"系统在不在工作"，而是"与今天可选的方案相比，续约它是不是更优选择"。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cms2e2f8b16ra01tn1ve85t5c" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 比较基线失效

不重新证明价值，在大多数情况下是合理的。

上线时做过ROI测算，系统有真实的迁移成本，频繁停机做对照不现实，业务确实在依赖它运行。成熟系统积累了工程适配和运行经验，要求它每年重新证明一次存在价值，既不经济，也不合理。

但，条件是：系统运行的环境没有发生实质变化。

![04页.png](https://p.vibcx.com/x/2026/07/1785107197-04%E9%A1%B5.png)

两年里，原来的人工流程已经撤掉了，团队按AI上线后的工作量重新配了编制，业务规模和客户结构也变了，市面上的供应商能力和价格同样在变。续约报告仍然引用着上线时的ROI测算，但那份测算的比较对象——两年前纯人工处理的成本——已经不存在了。

组织在不知不觉中开始用"系统仍在运行，所以应该续约"，来替代一个它已经无法回答的问题：和今天的可选方案相比，这套系统是否仍值得继续续约。

判断一套系统还值不值得续约，需要有一个比较对象：不用它会怎样，或者换一个方案会怎样。但系统进入生产以后，会反过来改变人员、流程和业务。两年前那个"不用AI"的状态已经无法恢复。组织手里的运行数据越来越多，这些数据回答的都是"系统干了什么"；用来回答"系统比替代方案好了多少"的证据，反而越来越少。

![05页.png](https://p.vibcx.com/x/2026/07/1785107253-05%E9%A1%B5.png)

仍在和过去比较。续约报告拿当前系统和两年前的纯人工流程对比，结论当然是"更快、更便宜"。但两年前的人力成本是那时候的价格，今天的人力市场已经不同；更重要的是，两年间出现了新的供应商、开源模型和SaaS产品，其中一些在功能和价格上可能已经超过了现有系统。在一个已经过时的基线上领先，不能证明在今天的可选项中仍然领先。

只计算了系统内的收益。模型节省的人工时间清晰可算，供应商年费和接口费用也写在账单上。但员工在系统之外处理的例外请求、质检团队对AI输出的抽检复核、提示词和规则的日常维护、与供应商的技术对接、围绕AI搭建的治理审批流程——这些成本散落在不同部门的预算里，没有进入同一张收益表。系统的投入产出比看起来很好，是因为分母不完整。

把依赖当成了贡献。如果现在停掉系统，客服流程确实会中断——团队已经按AI在线的状态配置了人员和排班，短期没有回退方案。但"停不下来"说明的是组织已经形成了依赖，而依赖和价值是两件事。停止会引发的混乱，只能证明迁移成本高，证明不了当前方案相对于可选替代仍有足够的价值差。依赖程度越高，反而越需要定期确认这种依赖建立在什么证据上。

* * *

## 为什么AI系统的比较基线消失得更快

传统软件也会面临版本老化和环境变化的问题，但AI系统让比较基线消失的速度更快。

![06页.png](https://p.vibcx.com/x/2026/07/1785107264-06%E9%A1%B5.png)

模型、价格和供应商能力变化快。两年前被评估过的替代方案，今天的能力和定价可能已经完全不同。原来的竞品比较早就失去了参考价值，但组织很少主动重做一遍。

用户会适应。客服团队两年来学会了哪些问题交给AI效率更高、哪些自己处理更快，调整了提问方式和分流习惯。这些变化是人的学习能力在起作用，但在数据上，它们被混入了系统效果。自动化率的提升中有多少来自模型进步、有多少来自人学会了更好地配合模型，很难分清。

![07页.png](https://p.vibcx.com/x/2026/07/1785107284-07%E9%A1%B5.png)

系统的输出还会改变后续的输入。Google研究者在2015年的论文《Hidden Technical Debt in Machine Learning Systems》中就提醒过，机器学习系统会通过反馈回路与周围流程相互作用，外部环境也在持续变化（Sculley et al., NeurIPS 2015）。在客服现场，一个由此产生的具体结果是：AI先处理了容易标准化的请求，留给人工的任务组合随之改变——此后再拿人工团队的平均处理效率和上线前比较，两边处理的已经不是同一类问题。这个变化本身就是系统运行的产物，而非基线不变时的独立对照。

模型和提示词还在持续更新。今天接受复验的对象，可能已经不是两年前验收通过的那个版本。版本变了，原来的评估结论也就需要相应改变。

* * *

## FDE重新理解价值复验

上线验收和价值复验回答的是两个不同的问题。验收发生在系统刚上线的时候，回答的是"它能不能比现有方式做得更好"——那时候有清晰的对照，有明确的前后差异。价值复验发生在系统已经运行了足够长的时间以后，问题变成了"它今天还贡献了什么"——而此时，原来的对照已经不在了。

![08页.png](https://p.vibcx.com/x/2026/07/1785107299-08%E9%A1%B5.png)

更难处理的是，基线失效通常没有一个明确的事故时刻。系统没有停机，业务没有中断，仪表盘还在达标；组织只是逐渐失去了判断"下一年是否应该继续"所需要的证据。

回到客服AI的续约。如果在续约窗口做一次价值复验，需要回答的问题可以写成一张卡：

| 要回答的问题 | 客服AI当前状态 |
| --- | --- |
| 最初承诺解决什么问题，当时的比较基线 | 缩短响应时间、节省人力；基线是上线前纯人工处理的成本和效率 |
| 今天的任务和业务环境发生了什么变化 | 业务量增长40%，客户结构变化，高复杂度咨询比例上升 |
| 当前完整成本 | 模型费用 + 供应商年费 + 员工例外处理时间 + 质检复核 + 提示词维护 + 治理流程 |
| 今天可选的替代方案 | 当前市场上的竞品SaaS、开源模型自建、混合人工+规则方案 |
| 现有证据能支持哪些归因，哪些仍无法区分 | 调用量增长中，业务自然增长和系统贡献目前无法区分 |
| 如何以最小代价重建比较 | 根据风险选择方式：脱敏历史样本回放、低风险业务线保留组、替代方案离线挑战或分阶段切换 |
| 复验后的选择 | 维持 / 调整覆盖范围 / 替换供应商 / 降级为辅助 / 退出 |
| 谁负责 | 运营负责人准备证据并发起复验；业务负责人作出续约、调整或替换决定 |

这张卡不要求成熟系统每年停机考一次试。触发它的条件是实质变化：供应商合同到期、模型版本重大升级、业务目标调整、成本结构出现显著偏移、或市场上出现了值得认真评估的替代方案。续约窗口就是一个天然的触发点。

![11页.png](https://p.vibcx.com/x/2026/07/1785107334-11%E9%A1%B5.png)

有一种常见的担心：系统运行得好好的，复验本身有成本，值得吗？但复验的结论完全可以是"继续"——维持现状也是一种有证据支持的选择，只要这个选择建立在今天的证据上，而不是两年前的测算上。复验的成本是花一段时间做一次受控比较；不做复验的成本是在没有当前证据的情况下签下一年的合同。

**上线验收回答的是"它当时是否有效"。价值复验回答的是"它今天还贡献了多少"。**

**数据越来越多，不等于价值越来越清楚。运行数据说明系统仍在工作，比较证据才能支持组织决定是否继续。**

* * *

## 写在最后

价值复验首先会遇到一个问题：有些成本根本没有出现在正式报表里。员工开始绕过系统、一线主管在系统之外维护自己的处理流程、重要客户被悄悄转回人工——这些行为往往比财务数据更早出现，也更早说明系统的实际覆盖范围和正式指标之间已经出现了偏差。

![12页.png](https://p.vibcx.com/x/2026/07/1785107352-12%E9%A1%B5.png)

仪表盘指标依旧达标的时候，这些现场信号意味着什么？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。