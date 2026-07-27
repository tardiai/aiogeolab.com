---
title: 为什么AI上线以后，一线员工反而要把同一件事做两遍？丨FDE重新理解影子工作流
date: 2026-07-29
draft: true
coverKeyword: FDE重新理解影子工作流
description: 一套客服AI使用率达标，管理层看到效率提升。但跟踪一条工单发现，员工在AI生成回复后还要核对CRM、复查Excel、修改内容，再回到系统点击发送——系统记录了一次成功调用，员工实际完成了两套流程。本文解释为什么AI上线后旧流程没有退出，并沿三个方向诊断原因：习惯没有退出、能力没有补齐、责任没有转移。FDE用影子工作流地图还原系统的真实覆盖范围。
tldr: |-
  一套客服AI上线半年，使用率和自动化率都已达标。但跟踪一条退款工单发现，员工在AI生成回复后还要打开CRM核对订单、用Excel复查金额和政策、修改内容，再回到系统点击发送。系统记录了一次成功调用，员工实际完成了两套流程。

  旧的核对、旧的模板、旧的人工判断一个都没有退出。保留它们在过渡期是合理的，但如果半年后人工步骤没有减少，而组织仍然把每次AI调用都计作自动化收益，两套账就在同时存在——只有一套被正式统计。

  旧流程没有退出，通常不是因为员工抵触。习惯没有退出、能力没有补齐、责任没有转移——这三个方向经常同时存在，应对方式完全不同。把它们统称"推广问题"，组织就会用培训和KPI去解决产品设计或责任归属的问题。

  判断AI有没有真正进入生产，不只看员工是否在使用它，还要看同一件工作是不是仍然需要在系统外再做一遍。如果旧流程、旧核对和旧责任一个都没有退出，AI带来的就不是替代，而是在原有工作上又加了一层。
tags:
  - 影子工作流
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
  image: /images/cover/AioGeoLab-cover-tgje-194-why-employees-do-everything-twice-after-ai-launch.png
  alt: tgje-194-why-employees-do-everything-twice-after-ai-launch
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-194-why-employees-do-everything-twice-after-ai-launch c n f uv i w b
publish:
  slug: tgje-194-why-employees-do-everything-twice-after-ai-launch
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-194-why-employees-do-everything-twice-after-ai-launch-揭秘影子工作流.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-194-why-employees-do-everything-twice-after-ai-launch-深度解析影子工作流.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-194-why-employees-do-everything-twice-after-ai-launch-谁在为AI补漏.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/14页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-194-why-employees-do-everything-twice-after-ai-launch-Solving
      AI Shadow Workflows/15页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1785192663-tgje-194-why-employees-do-everything-twice-after-ai-launch-%E6%B7%B1%E5%BA%A6%E8%A7%A3%E6%9E%90%E5%BD%B1%E5%AD%90%E5%B7%A5%E4%BD%9C%E6%B5%81_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-194-why-employees-do-everything-twice-after-ai-launch-深度解析影子工作流_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao30mz19x8dGicGOsouvFRtW1G0TBlix7Mk55oP1fWYuD7
    video_vid: wxv_4623806585822347265
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNX144YXoEIQialV82wWLG3eU1IXbPicl0VxeuuyYCjOlKsgMCu1C7pLX36BTJ0I4HsAdzicjL38YshjibGWIM2eouemYugLGbY9DeY/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWNzlNMqz0JZC68578G2xl18otSYQfLrJeTtEuTfoZN0DR8obyTNkURGOPZDoLTzJX0gbkYR8l7OXSYzE14libuiaxVR9Uy9TScQ/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3-35iscd6O8SuHFft8vU0VhslKjQICMWdaPfMkcQIaU4
    draft_created_at: 2026-07-28 07:34
    video_media_id: lEmH66TSP501Rw-1R2Ao3w0iWsk86Fnt9bUkO70VhvzyzHhPWww6lhocJotxWStC
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1785194270-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXSz2h2NMXdZsYxZ0iaOYySj6UHR7w2ibmib343MaaZriaLsQOgdZFPWVxCxLEEK9d2da3KBcjmXkAiaUyupJucZ5Reo22RLNvqpWN8/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194326-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUuloGeMkzGtyibW2LA8nNIDGWHcQo3FsQ55Mgh16Neye3Z2r6QKDnEibWgtpYLYl07XpFgpP64voQctE8lBVGbicx9tyLparT4H0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194354-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVEZdvHLebAaKxovtLWe54DRssZtFYoczDhVLcMoFVeC7y0BfdKm8IhWlHm1cib5Aq1dBAAOCZmDwYeWwkcprSInnZG1BV3atWQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194376-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUPShwYsFhSWKch0kMcWQ1EOpEslDmyb0CIQnyZhOrU4u6lnia34HpU35lhjeibTykYgLxLEDcXoiatZr2fKkIgEvuaKvys0ExE5M/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194385-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWkq86qiaMZ6zXv50lianeIOqKrceHoa1aQGjG0nDicWTaUHbmbibPKGuOVRziclnKlr7nOXsgT0mpEz5ibPa8s4m18ibjiaujogWlpIibE/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194420-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVx35AeD8VDs9rlfZhIpBVYwzn731DKKJVmjQAiajAT5xystWRMmlnV9I1MRDAHwbSkicLMLJX25O1yiaZZ6fU1NqslP4aJQsQqHg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194469-10%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWHicblZ1RWfwap6HrIdHpmObKQXBEUMHWSdiaPdDySVqBFzSUS9xerm9TtiawqxM2YhxiaqowbDnsUF75GS6nHicEOMpwBfYm7zobs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785195012-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXxxNbicynGRImbZFv31QEQZLqFP0baG0ghzJJVTG1Z8v64hNmJcyuqA9siaibHgCiaCrgJ4ZwH3IVhRAkrMgBSmrWMJ0XhAcyH8L4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194555-13%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVcyib2SCsRufJ4hVArbBtvPQic3l87PbdljVleVu5f354K3iboSHO4KnBWcNzMFbIVOd5PKibkjCZcBS8185VacVkqcibwAzAkWYhw/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194515-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXaHNPOIEwYWNYjA5PqyaARPSpCD7GYHRtXHib80icbBEoJDwxibkoK90Qs172JYc8FpOX8Yic9oWjAaW53doGIzibSNianwbEUCPnYs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785194603-14%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUbE18Ncic371VQRHsRlATDsPYopYUzmU0Jw5fL6CjGKcp7TRLmwjFRkaWD8SSqZmUPE7E3GibwVtjtWk9TbQVVPTwvZvy5h3C9c/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# 为什么AI上线以后，一线员工反而要把同一件事做两遍？丨FDE重新理解影子工作流

继续看这个我们熟悉的例子。

一套客服AI上线半年，使用率和自动化率都已经达标。管理层看到的是：系统每天自动处理上千条客户咨询，平均响应时间缩短了40%。

![02页.png](https://p.vibcx.com/x/2026/07/1785194270-02%E9%A1%B5.png)

一线客服经历的是另一件事。一条退款申请进来，AI生成了一段回复。客服没有直接发送——她打开CRM核对订单信息，再打开自己的Excel表逐项检查金额、退款政策和客户历史，发现AI漏掉了一条三个月前的特殊约定，修改了回复，然后回到AI系统点击"确认发送"，留下一条自动化处理记录。

系统记录了一次成功调用。这位客服实际完成了两套流程。

她不是个例。团队主管把所有VIP客户的工单标记为"特殊情况"，绕过AI直接人工处理——因为投诉一旦发生，追责对象是他个人。一位入职八年的老客服仍然用自己的回复模板处理工单，最后才把结果录回系统。

AI上线以后，旧的核对、旧的模板、旧的人工判断一个都没有退出。新流程加在了旧流程上面，员工的工作量不减反增。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cms3tjl9u25ot01tn76wv6rvj" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 双轨运行，一开始并不是错

AI刚上线的时候，保留人工核对是合理的。

![04页.png](https://p.vibcx.com/x/2026/07/1785194326-04%E9%A1%B5.png)

模型需要验证，高风险任务必须有人工复核，员工需要保留回退能力以防系统出错。双轨运行是过渡期的标准做法，几乎所有谨慎的组织都会这样安排。

但过渡安排有一个隐含前提：随着系统证明可靠，旧的核对和人工步骤应该逐步减少。如果半年后核对表没有变短、特殊情况标签没有减少、旧模板仍然活跃，而组织仍然把每次AI调用都计作自动化收益，这个前提就已经失效了。系统在报告自己的效率，员工在用自己的时间补偿系统的不足。两套账同时存在，但只有一套被正式统计。

![05页.png](https://p.vibcx.com/x/2026/07/1785194354-05%E9%A1%B5.png)

更难发现的是，这种状态会自我加固。使用率正常，管理者认为推广顺利，产品团队继续优化功能，没有人去调查系统之外还发生着什么。员工为了完成工作，继续在正式流程之外核对、复查和兜底。任务最终仍然被完成了，业务结果没有立即恶化，管理者于是进一步确信系统运转正常。

员工的额外劳动暂时保护了业务，也同时替系统遮住了缺口——代价不会消失：一线员工承担了重复劳动，主管承担了无法进入流程的责任压力，而产品团队失去了来自现场的真实反馈。

* * *

## 为什么旧流程没有退出

旧流程没有退出，原因通常不止一个。同一位员工的同一个核对动作，可能同时指向三个不同的方向。

![07页.png](https://p.vibcx.com/x/2026/07/1785194376-07%E9%A1%B5.png)

习惯没有退出。老客服用旧模板处理工单，主要原因是八年的工作方式还没有被新流程替代。旧方式对她来说更快更确定。如果AI的能力确实已经等价甚至更好，这是一个可以通过培训和流程收敛解决的过渡问题。

![08页.png](https://p.vibcx.com/x/2026/07/1785194385-08%E9%A1%B5.png)

能力没有补齐。客服把AI回复带出系统去核对，不是因为不信任AI本身，是因为系统不提供她完成工作所需的核对能力。她的绩效考核包含准确率，正式系统却没有给她验证准确率的工具。她在系统之外搭建的那张Excel表，填补的是产品的功能缺口。

![09页.png](https://p.vibcx.com/x/2026/07/1785194420-09%E9%A1%B5.png)

责任没有转移。主管把VIP工单全部标记为特殊情况绕过AI，因为投诉追责的对象是他个人。AI参与了工作过程，结果责任却全部留在员工身上。在这种责任结构下，保留一条完全由自己控制的处理路径是理性选择。

区分这三个方向至关重要，因为应对方式完全不同：习惯没退出需要培训和流程收敛，能力没补齐需要产品改造或把补偿步骤正式化，责任没转移需要重新划定人工边界和升级条件。把三者统称"推广问题"，组织就会用培训和使用率KPI去解决一个可能是产品设计或责任归属的问题。

* * *

## 为什么AI更容易制造第二套流程

传统软件替代旧流程时，替代通常是完整的：ERP上线，纸质流程撤掉，员工不可能在两套系统之间来回切换。AI系统的替代往往是不完整的。

![10页.png](https://p.vibcx.com/x/2026/07/1785194469-10%E9%A1%B5.png)

AI的输出"看起来合理"，但错误边界不稳定。同样的查询，昨天答对了，今天可能漏掉一个条件。员工无法确定哪些输出可以直接使用、哪些需要核实，只能每次都做一遍检查——于是核对步骤永远不会退出。

系统只记录输入和输出，不记录输出之后发生了什么。AI生成了回复、员工点击了发送，这在后台是一条完整记录。但员工在点击发送之前所做的，在CRM里核对、在Excel里复查、在脑子里判断，系统完全看不见。

个人AI工具又让工作可以低成本转移到正式系统之外。Microsoft 2024 Work Trend Index调查了31个国家的31,000名知识工作者，发现78%的AI使用者自带个人工具上班。这组数据没有区分受访者所在企业是否已提供正式AI系统，不能直接证明员工在绕过企业工具。但它说明了一件事：工作转移到组织视野之外的门槛非常低。

* * *

## FDE重新理解影子工作流

影子工作流，是AI已经成为正式流程的一部分，但员工为了完成任务、保护自己或补偿系统不足，仍在系统之外保留的另一套工作路径。它最初通常以零散的核对表、特殊标签和人工重做出现——这些行为是正式系统失去真实覆盖能力的早期信号。

![06页.png](https://p.vibcx.com/x/2026/07/1785195012-06%E9%A1%B5.png)

回到客服AI的现场。把三个工作节点的正式流程和实际流程画在一起：

| 工作节点 | 正式流程 | 实际流程 | 多出的工作 | 主要原因 | 组织如何处理 |
| --- | --- | --- | --- | --- | --- |
| 标准客户回复 | AI生成 → 客服确认 → 发送 | AI生成 → CRM核对 → Excel复查 → 重写 → 发送 | 重复核对与重写 | 能力缺口：系统不提供核对功能 | 把必要的核对能力接入正式流程 |
| VIP工单 | 同标准流程 | 标记"特殊情况" → 全部人工处理 | 完整保留旧流程 | 责任保护：投诉追责落在主管个人 | 正式划定人工专属范围和升级条件 |
| 老员工工单 | AI辅助生成 → 确认 → 发送 | 用旧模板完成 → 结果录回系统 | 重复录入 | 习惯延续：旧方式更快更确定 | 确认功能等价后，退出旧模板 |

这张影子工作流地图观察的是工作节点，不是员工个人。从中可以提取几个行为指标进入常规运营评审：人工覆盖率（多少工单被标记为"特殊情况"）、输出后复核时长（AI给出结果后员工在系统外花多少时间确认）、流程外步骤数（完成一条工单需要离开AI系统几次）。这些指标不替代使用率，而是补充使用率看不到的维度。

![13页.png](https://p.vibcx.com/x/2026/07/1785194555-13%E9%A1%B5.png)

这里有一条必须守住的边界：行为指标观察的是流程趋势，不是个人表现。指标不能进入个人绩效考核——影子工作流一旦被用来追责，员工就会把它藏得更深，信号本身也随之消失。目的是让系统的真实覆盖范围可见，不是让员工的补偿行为变成过错。

![12页.png](https://p.vibcx.com/x/2026/07/1785194515-12%E9%A1%B5.png)

**如果AI上线后，旧流程、旧核对和旧责任一个都没有退出，AI带来的就不是替代，而是在原有工作上又加了一层。**

![14页.png](https://p.vibcx.com/x/2026/07/1785194603-14%E9%A1%B5.png)

**判断AI有没有真正进入生产，不只看员工是否打开它，还要看同一件工作是不是伴随着一个影子工作流。**

* * *

## 写在最后

影子工作流地图让组织看见了第二套流程的存在。但看见和行动之间还有距离：人工覆盖率持续上涨，例外标签越来越多，运营团队也已经在上报——项目仍然可能以"还没有发生事故"为理由继续等待。

问题已经进入组织视野，修正为什么还要等到出事以后才开始呢？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。