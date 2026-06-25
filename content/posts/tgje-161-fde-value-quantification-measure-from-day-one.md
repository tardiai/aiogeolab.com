---
title: FDE价值量化：不是项目结束后的总结，是第一天就要设计的机制丨甲方问「这值多少钱」，你能回答吗
date: 2026-06-26
draft: true
coverKeyword: ROI难以证明的三个原因
description: FDE落地工程系列第11篇。以"预算审查时说不清楚价值"为切入点，揭示ROI难以证明的三个根本原因，建立价值三层次框架（效率/决策质量/新能力），强调基线测量要在发现阶段就同步建立，并提供针对CFO、业务负责人、技术决策者三种角色的不同汇报语言框架。
tldr: |-
  系统上线了、用户在用，但CFO问"这值多少钱"的时候说不清楚——这不是沟通问题，是设计问题。ROI量化的机制没有在第一天建好，等到被问的时候，既没有基线，也没有过程数据，只剩感觉估算。

  ROI难以证明有三个根本原因：没有预部署基线（有基线的组织证明ROI的可能性是没有基线的4.2倍）；技术指标和业务指标脱节；归因困难（AI和其他变化同时发生）。这三个问题都需要从第一天就设计解决，不是交付结束后补救。

  价值分三个层次：效率层最容易量化（工时节省、错误减少）但容易让甲方把AI定位成工具；决策质量层对高管更有战略价值；新能力层最难量化但对长期竞争力影响最深。三层都覆盖，才是完整的价值叙述。

  向不同角色用不同语言：CFO要财务语言（总成本、总收益、回收期）；业务负责人要运营语言（具体场景的前后对比）；技术决策者要系统语言（稳定性、可维护性、长期投资价值）。同一套数据，讲错了语言，价值就被低估。
tags:
  - 价值量化
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
  image: /images/cover/AioGeoLab-cover-tgje-161-fde-value-quantification-measure-from-day-one.png
  alt: tgje-161-fde-value-quantification-measure-from-day-one
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-161-fde-value-quantification-measure-from-day-one c n f uv i w b
publish:
  slug: tgje-161-fde-value-quantification-measure-from-day-one
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-161-fde-value-quantification-measure-from-day-one-FDE价值量化：从第一天开始.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-161-fde-value-quantification-measure-from-day-one-FDE价值量化ROI机制.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-161-fde-value-quantification-measure-from-day-one-如何证明AI项目值钱.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/14页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/15页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/16页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/17页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/18页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/19页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-161-fde-value-quantification-measure-from-day-one-FDE
      Value Quantization/20页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782347564-tgje-161-fde-value-quantification-measure-from-day-one-FDE%E4%BB%B7%E5%80%BC%E9%87%8F%E5%8C%96ROI%E6%9C%BA%E5%88%B6_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-161-fde-value-quantification-measure-from-day-one-FDE价值量化ROI机制_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3zL_DjNR-XwZNOH8hedG0Pagin8GsMQkn9yRGHzlUHyM
    video_vid: wxv_4576073876304330754
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWibV5RC9rJ6XEGb0B10E5VUxVmdE3otlh3KopFYuc7uiane6NVqXTv3A6Hl6StUf69DMZ40e7hr0WRsPbmUSibgUrrCgU4WmXA74/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXRcJwvpba2jFP4UGiaFyUbjORN9ZJ7ibrib0LticQ5H5JmKeloJCGpXfEHKYefSMy2kkz7UFs2TwEqYfZrYpEG1tHMHZy4u44kbzk/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao34LzRWQ0SKuiHG2jI6KFrC1m99dBfOXMsKJtjIKiaL-a
    draft_created_at: 2026-06-25 10:10
    video_media_id: lEmH66TSP501Rw-1R2Ao3y9oZ4riNGAmplfqW6g6iW8mIk4gMCMrR-Qajm6wKjWE
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782352561-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXEaa3thDLNHLQ9395kaE9l2h5H8sAV9BpDXfTtEEUd9iczLlbLPwWVzjttKdokqAIJyLWibamMk4SMiaG3IBFAjsFIwtGwf3pPhk/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352590-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXfuPENyF1CVTHdAiaNyiaM3fX4pVajQtIrnnHPUuk2zUGEba17ZF7jiaicicdXc5MPudw3QPMOgGKPL3zpicP1kqepHmVaU1MPwF6PY/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352662-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWiaZibxhKX2LxvzLAzm3TGbGYYEmicasulrWMWficsWERpbW0cssX20up0ibqUwibaKuA7wvWURnT39VTOPtDqYNHKZGPSRtlPV5g7c/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352833-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVhfPiaDgsdFaJvyLmVhRTcZbNJJ8noPc3bKiaiaKnS95HldrXeNo1se71pZQiay1TMaAbE7uBjXZFxvIodbR5WwEQicpAz3VON8LBk/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352678-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUkn1HiaUFDmkf7AibRC8sE59yk5BibFN9nLaTwqyNglUBJl6c91GleAY3jwEw14qicCnoiavrXDGohXm6d1iaup5CbFnKlfWFgokVZg/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352858-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWUFxItfeMAqGYoicGfwygV4iapAgcbvNVd8nft1SnXvMVUnV986dakMKA8iaqaWfTjVEXgqJBw9YuyAyLGhWmFSibnLXBoLIoLdLI/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352994-11%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWKU1h6JOdbAkSAWp2g8JppxgE5EsyKJElqgNaRvDjacKz8o0TEcTN4E86sLNMfG6qpZH3KMHSlBica277tM3dzXbOevwibg0ibNI/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782352751-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWPoMgF08yZEyPWia9cpqfcT1jAmZ8cicZmBURCics5WZZ5QRucP7Lu7GNsARzQPjbsP8ID5wccs5IbFiaRrasqaar2R00r4ib3b1gA/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782353017-13%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUg3I1ibz09yicJUiaicHDSeyYtZ1GFf6oZNCa84EiaETrzBJ6fRWGLtjpm3ppfs09A0QrGiaa8Uib3l5bOdW7NiaEySdB7puIZBtGwsI0/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782353125-16%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXUibWhHdLWGeictZvxClbRSup6BONe3RIIsnZRpDuRNtWvMXbNLj9J1hybKXb4W1qOz3OzrhD7t0wLAMAv6njsq2Ycq7H4uHzGk/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782353138-17%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWJzT3Va8U2xx2BjibgIjF5M1auHu4yGYuTJfnyWfQiap8svu5qrf468xRrIJ8Iw4hCFWomDqGNRPuLE8UicpdzdxlNa8Nhrs7Ynw/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# FDE价值量化：不是项目结束后的总结，是第一天就要设计的机制丨甲方问「这值多少钱」，你能回答吗

一个AI系统上线了。用户觉得好用，采纳率也不错，FDE团队对这次交付很满意。

但当CFO问：这个系统到底给公司带来了多少价值？这笔钱花得值吗？明年继续投入的依据是什么？

![02页.png](https://p.vibcx.com/x/2026/06/1782352561-02%E9%A1%B5.png)


FDE团队很容易被问住。系统确实在跑，确实有人用，但没有人能说出一个令人信服的数字。"用户反馈很正面"——这是感受，不是答案。"采纳率很高"——高到什么程度，和什么对比？"效率提升了很多"——多少，怎么测出来的？

这不是沟通问题，是交付设计问题。价值量化的机制没有在第一天就建好，等到被问的时候，什么数据都没有积累，只能靠感觉估算——而感觉估算，在预算审批里没有说服力。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqsrnc260kc501yi1ruxf8es" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 为什么ROI这么难证明

先看几个数字。

86%的企业在2025年增加了AI预算，但只有29%的高管说他们能可靠地衡量回报。IBM的研究更直接：只有5%的组织从AI中获得了"实质性ROI"——是5%的整个有AI项目的组织。

这个比例确实比预期要低很多，它背后的原因是倒是不难理解。

![04页.png](https://p.vibcx.com/x/2026/06/1782352590-04%E9%A1%B5.png)


**没有基线，就没有对比。**

大多数AI项目是热情驱动的：看到Demo觉得好，找来FDE，开始做，上线，然后才想起来要证明价值。这时候已经没有"之前"的数据了——不知道这件事以前花多少时间，出多少错，产出是什么。没有基线，改善就无从衡量，ROI就无从计算。

有部署基线的组织，证明ROI的可能性比没有基线的高很多。这不是难以实现的要求，是在部署开始前花一些时间做一次现状测量。大多数团队跳过这一步，不是因为不知道它重要，是因为当时急着动手，把它放到了"之后再说"的位置——然后就再也没有说。

**技术指标和业务指标脱节。**

"模型准确率94%"——这个数字对工程师有意义，对CFO没有意义。CFO需要的是：94%的准确率，意味着每个月减少了多少错误决策，这些错误决策以前会带来多少损失。

技术团队习惯用技术语言记录系统表现，但业务价值需要用业务语言来表达。这个翻译工作不是自动发生的，需要在设计测量机制的时候就把连接建好——这个技术指标，对应哪个业务结果。

**归因困难。**

AI系统通常不是单独上线的，它伴随着流程调整、人员培训、组织变化一起发生。六个月后业务数据改善了，多少是AI带来的，多少是其他变化带来的？这个问题没有简单的答案，但如果从一开始就没有设计隔离机制，到时候就完全说不清楚。

* * *

## 价值的三个层次，不只是省了多少人力

很多团队在汇报AI价值的时候，只讲效率——节省了多少工时，处理量提升了多少。这没有错，但只讲这一层，是在低估AI系统的真实价值，也是在把AI定位成一个"省人力的工具"，而不是一个"改变业务能力的系统"。

价值分三个层次，从容易量化到难以量化，从短期到长期：

**第一层：效率**

![07页.png](https://p.vibcx.com/x/2026/06/1782352662-07%E9%A1%B5.png)

最直接可测量的层次。这件事以前花多少时间，现在花多少时间；以前出多少错，现在出多少错；以前一个人能处理多少量，现在能处理多少量。

2026年的生产数据显示，知识工作者使用AI Agent平均每周节省6.4小时；客服AI处理一张工单的成本是0.46美元，人工处理是4.18美元，差了将近10倍。

这一层的数字最好算，也最容易被理解。但只有这一层，甲方会把AI定性为"自动化工具"，对它的期待上限就是"替代一部分人力"。

**第二层：决策质量**

![08页.png](https://p.vibcx.com/x/2026/06/1782352833-08%E9%A1%B5.png)


这一层讲的是AI如何改善了组织里的决策。更快的决策周期——以前一个报告要三天，现在当天就有；更有依据的判断——以前靠经验猜，现在有数据支撑；更少的判断偏差——以前因为信息不完整做错的决策，现在可以避免。

更快的决策周期、改善的客户互动、缩短的上市时间，同样构成真实的竞争优势，即使它们不总是容易直接量化。

这一层的价值对高管更有吸引力，因为高管关心的是组织的判断能力，而不只是人力成本。但这一层也更难量化，需要在部署之前就定义"什么叫更好的决策"——决策速度快多少算快，决策准确率怎么衡量。

**第三层：新能力**

![09页.png](https://p.vibcx.com/x/2026/06/1782352678-09%E9%A1%B5.png)

这一层讲的是没有这个AI系统，这件事根本做不到。不是做得更快，是之前根本不存在。

比如：以前公司没有能力对每一个客户做个性化推荐，因为人力不够；有了AI，这件事规模化了。以前监控所有供应商的风险信号需要一个专门的团队，现在一个系统可以实时处理。这类价值无法用"节省了多少"来衡量，因为"之前"根本没有这个能力，没有什么可以对比。

这一层最难用数字表达，但往往是对长期竞争力影响最深的部分。在汇报里，这一层通常用场景描述来呈现，不强求精确的ROI数字。

三个层次都覆盖，才是完整的价值叙述。只讲效率层，甲方把AI当工具；加上决策层，甲方开始把AI当系统；加上能力层，甲方开始把AI当战略资产。三种定位，对应的是完全不同的预算优先级和续约意愿。

* * *

## 基线要在第一天建，不是最后一天

这是篇11最重要的一个操作点，也是和前面系列内容的直接连接。

![10页.png](https://p.vibcx.com/x/2026/06/1782352858-10%E9%A1%B5.png)



发现阶段定义问题的时候，同步建立可测量的基线。这件事现在是怎么做的——花多少时间，出多少错，一个人一天能处理多少量，端到端的流程是什么样的。这个现状测量，是后来所有价值证明的参照系。没有它，什么都说不清楚。

![11页.png](https://p.vibcx.com/x/2026/06/1782352994-11%E9%A1%B5.png)


原型阶段建评测标准的时候，同步确认技术指标和业务指标的连接。这个模型的准确率提升一个百分点，对应的是业务层面什么变化？响应速度从3秒降到0.5秒，对应的是用户体验哪方面的改善，这个改善会带来什么可测量的业务结果？这些连接要在原型阶段就想清楚，不能等上线之后再问。

![12页.png](https://p.vibcx.com/x/2026/06/1782352751-12%E9%A1%B5.png)


部署阶段建可观测性的时候，同步收集价值数据。可观测性系统不只追踪技术健康指标，同时追踪业务影响数据——处理量的变化、错误率的变化、用户处理同样任务所需时间的变化。这些数据从系统上线第一天就开始积累，等到被问的时候，已经有三四个月的真实数据可以拿出来。

![13页.png](https://p.vibcx.com/x/2026/06/1782353017-13%E9%A1%B5.png)


这个设计思路和通常的处理方式完全相反。大多数团队把ROI量化当成"交付结束后写一份总结报告"，这时候没有基线、没有过程数据、没有隔离的归因，能写出来的只有估算和感受。从第一天就设计测量机制，价值证明是交付过程的副产品，不是交付结束后的额外工作。

* * *

## 向不同的人用不同的语言讲

同一套数据，面对不同的人，需要用不同的语言来讲。讲错了语言，价值就会被低估，甚至被误解。

**对CFO，讲财务语言**

总成本是多少——许可费、实施费、维护费、培训费，全部算进去，不要漏掉隐性成本。总收益是多少——节省的人力成本、减少的错误损失、新增的处理能力带来的收益。两者相减，回收期是多少个月。

![15页.png](https://p.vibcx.com/x/2026/06/1782353107-15%E9%A1%B5.png)


2026年的基准数据显示，中位数回收期因场景而异：客服场景4.1个月，营销运营6.7个月，工程场景9.3个月。有了这个行业基准，CFO能判断这个项目的回收期是正常还是偏长，而不是在对一个陌生的数字做判断。

**对业务负责人，讲运营语言**

不要说"系统准确率提升了8个百分点"，说"以前审核一份合同需要两个小时，现在20分钟，审核出来的问题点更全"。具体的场景，具体的对比，不需要AI的任何背景知识就能理解。

![16页.png](https://p.vibcx.com/x/2026/06/1782353125-16%E9%A1%B5.png)


业务负责人最在乎的是这件事对他们团队的日常工作有没有实质影响。数字要落在他们能感受到的维度上，而不是停留在系统层面的指标上。

**对技术决策者，讲系统语言**

系统稳定性如何，扩展成本是多少，维护负担在哪里，和现有技术栈的集成深度如何。这个系统三年后还能用吗，要不要做大的架构调整，未来升级的路径是什么。

![17页.png](https://p.vibcx.com/x/2026/06/1782353138-17%E9%A1%B5.png)


技术决策者对系统的长期可维护性和技术债的关注，往往比短期ROI更重。对他们讲价值，需要回答的是"这个系统是不是一个好的长期投资"，而不只是"这个系统现在有用"。

* * *

## 写在最后

只有29%的高管能可靠地衡量AI的回报——这个数字不是因为AI的价值不存在，而是因为大多数团队没有在第一天就设计好证明价值的机制。

能证明价值，续约有依据，扩展有理由，下一个场景的预算申请有数据支撑。不能证明价值，再好的系统也可能在下一轮预算审查里被列为"待评估项目"，然后慢慢淡出。

FDE的交付，是一个完整的商业行为，不只是一个技术行为。技术跑通了，用户信任了，但如果没有办法向甲方说清楚"这件事值多少钱"，交付就没有真正闭环。

下一篇是系列主体的最后一篇——迭代节奏：系统交付之后，现场经验如何持续反哺系统，让整个落地工程体系真正生长起来。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。