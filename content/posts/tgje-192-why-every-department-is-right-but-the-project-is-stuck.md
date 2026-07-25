---
title: 为什么业务、技术和法务都没错，AI项目还是推进不了？丨FDE重新理解约束冲突
date: 2026-07-27
draft: true
coverKeyword: FDE重新理解约束冲突
description: 当业务、风控、运营和技术团队的要求单独看都合理，合在一起却找不到可行方案时，大多数组织选择"再优化一版"。本文通过一个退款Agent的综合场景，解释为什么继续优化的前提可能已经不成立，以及为什么组织需要从"谁更正确"切换到"谁承担代价"。FDE用约束裁定代替无限循环的方案迭代，帮助组织明确哪些边界不能动、接受什么代价、谁来签字。
tldr: |-
  一套退款Agent进入第六次上线评审。业务要70%自动化、风控要0.5%以下错误率、运营只能人工覆盖8%——三轮优化证明，当前条件下不存在同时满足全部要求的方案，但会议仍然以"再优化一版"结束。

  继续优化几乎没有责任成本，做裁定却要求有人签字接受某项指标变差。一直拖下去，是所有人的问题；选择45%，就成了某一个人的问题。回避选择的代价被分摊进了项目延期，不落在任何一个人身上。

  约束裁定不是折中取平均，而是在不可能全部满足时，明确哪条边界不能动、为了守住它接受什么代价、谁来承担。Google Gemini图像生成功能的暂停与重新上线也印证了同一个判断：缩小适用范围比悄悄放松边界更成熟。

  项目卡住，有时不是方案不够好，而是组织还没承认当前条件下不存在一个什么都不损失的方案。下一个问题是：今天做出的裁定，半年后是否仍然成立？
tags:
  - 约束
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
  image: /images/cover/AioGeoLab-cover-tgje-192-why-every-department-is-right-but-the-project-is-stuck.png
  alt: tgje-192-why-every-department-is-right-but-the-project-is-stuck
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-192-why-every-department-is-right-but-the-project-is-stuck c n f uv i w b
publish:
  slug: tgje-192-why-every-department-is-right-but-the-project-is-stuck
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-192-why-every-department-is-right-but-the-project-is-stuck-FDE洞察：通过约束裁定打破AI项目僵局.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI项目约束裁定指南.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-192-why-every-department-is-right-but-the-project-is-stuck-别让合理需求卡死AI项目.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI
      Constraint Arbitration/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1785019014-tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI%E9%A1%B9%E7%9B%AE%E7%BA%A6%E6%9D%9F%E8%A3%81%E5%AE%9A%E6%8C%87%E5%8D%97_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-192-why-every-department-is-right-but-the-project-is-stuck-AI项目约束裁定指南_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao37TYEBhWriVa67Uuj173pxcZC1J8q4R-ItuyA96goeRa
    video_vid: wxv_4620893300647198722
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWiaNpfTgibNKJHgcyepSP4OLgibqqlzoicXMuSFPosfVL5sXsicvicCRKXfJiaO8GIrmYaMzpibkSU91rWIzg4NO7nS6D97ROL9yibprwI/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNX2yj2GC1K1MLBwZhB0Hh7ib0KPKSq9AaClbYibes3jicN6vbON4Br8fQPwKWG4NeM5hwOf2wHBRn9EicTO4ASnGXMAhkLWIaqqtQ0/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3y-BNzkxjlfXiTSnrxs1kdOV_CLVkbqnt46ppkwVmdNS
    draft_created_at: 2026-07-26 06:52
    video_media_id: lEmH66TSP501Rw-1R2Ao35KHO9IR9HvbFTJnqyB2fQdvaedNi8xDXwHyvQ747AcX
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1785019198-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUhpTp5C0FNCa97jPia4FuqEcUMB47uzqJHcObhjwAWmhPSTorV65ibckv1HNWic0vgUYPsIhks11TQBEmicrGf9tl2LNo06etw0CI/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019234-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXhxWsMSEccianhg5qPFajPn8EGibGaHkOnPiaVtDgH8Nn6pu53VBB4YuJPIPlbyibvkqE3nKxBFU9IqtsgZ8oKrN5qoVgnaPiaanb4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019355-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUibx3q3WqyiayTYX2ssvsTVJozRKaxEcQ78icYZ7XBtcnz5O17RH4pwkgR5b4ByEFAfjeiaT79iafYxhG6icjNJ9Q7PpMEXwnFC8Wdg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019386-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWIgWyFNRib0MWupMxkchvYUAicZWcMN5rLibciaHZV5V90pmBYHsbvwIYkMlEXCtn13kTouedO6hPUXcQkUgg9mjEOeDKBs2rySqg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019526-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNV1JIfaE92XS5fmFhDpKbic2gZGicBHe0ksEGZ9X9E66fDHacLOpVogfPQggasRb0EpLuB6vC4vWpPYMVOXdnASEg9qRia0nNa25c/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019494-07%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVMzpiaZ2bzXEZoyIibicRicEpb0r4dxNG1XgnJWiaathyW5IiaIcOYtsXNYRJjqmBl7d1Fv9ibUEqost8KQPUfIsLWe4qibicKn9hnAcYM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019403-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWF2Ew9QHiaFMXa1nPw4zU2ibsvpZgmn7JjMK9QPQicFBMZZHpbzU4JjArrI5OJIHv31YvUehByPnvAicPAlRVEZ6Q2OiamiahIiaNcCQ/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019561-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWGfG5iat0icIIh70Xeia4P8kGLv507HNTOQSicEX2Hn6v1EZR5wbXTgFDhtjtFzYZCskrN93XNicJ8XXvy7v9nzQtHOhicOI7KQ3mWY/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019648-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUXeofdmKSpMYcmiaXdj88dhRNPh25LE3CFAJPSsGJJkc0htmAaKb0X32jOBgbcyfcbR8DSuEfeWD7b535Zp01lGfZmu6rQoRz8/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1785019689-13%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVGOOq5zfxeib9rNQzrHhcxJAwA2Y88Uq8qNrDu2zicuVUJApPB3Jib30sgb8ssSib2XZ1GSNKjQmSn6SWXuTqOyPt93proTM2ib5CI/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# 为什么业务、技术和法务都没错，AI项目还是推进不了？丨FDE重新理解约束冲突

让我们先看一个从多个企业项目中抽象出的案例。

一套退款Agent进入第六次上线评审。

![02页.png](https://p.vibcx.com/x/2026/07/1785019198-02%E9%A1%B5.png)

业务负责人要求70%的退款申请由系统自动处理。风控要求错误退款率低于0.5%。运营团队说自己最多只能人工复核8%的申请。

三个指标单独看都合理。问题出在它们放到一起的时候。

模型团队已经优化了三轮。第一轮调高自动化率，错误退款率越过0.5%。第二轮收紧判断阈值把错误率压了回来，需要人工复核的比例涨到23%，运营接不住。第三轮折中，直接拒绝不确定的申请，投诉率超过业务能接受的范围。

三个合理的目标，在当前的模型能力和人员配置下，找不到一个能同时满足的方案。六轮评审消耗了将近三个月，模型团队花了一半时间在调参数，另一半时间在向四个方向解释为什么上一版不行。一个原本被期望节省成本的系统，自身的开发成本已经接近预算上限，但离上线还看不到终点。

会议最后，项目负责人说了和前五次一样的话："模型团队再优化一版，下周再过一次。"没有人反对。也没有人觉得下周会有什么不同。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cms0y5otu1r7501xpdklk6fjx" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 继续优化，是最安全的选择

"再优化一版"确实不算错。

模型能力可能改善，分流设计可能缓解指标之间的挤压，大多数项目确实能靠补充信息和改进工程找到更好的方案。但这些可能性有一个共同前提：在当前时间、预算和模型能力范围内，存在一个可以同时满足全部要求的方案。

![03页.png](https://p.vibcx.com/x/2026/07/1785019234-03%E9%A1%B5.png)

三轮优化已经说明这个前提很难成立。每多试一轮，都在重复确认同一个事实：答案不存在。项目等待的已经不再是方案突破，是一个组织决定。

但组织决定比方案迭代难得多。继续优化几乎没有责任成本——谁都不用对"再试一次"签字负责。一旦拍板做裁定，就必须有人正式接受一个不太满意的结果，比如：这个季度自动化率只做到45%。所有人都看到，大家都满意的方案不存在，但回避选择的代价被悄悄分摊进了项目延期——一直拖下去，是所有人的问题；选择45%，就成了某一个人的问题。

![04页.png](https://p.vibcx.com/x/2026/07/1785019355-04%E9%A1%B5.png)

* * *

## 从"谁更正确"到"谁承担代价"

退款Agent的四个部门都在认真做事，每一方的要求单独看都合理，合在一起却无法同时兑现。

继续追问"谁的要求更合理"不会产生结果。需要换一组问题：哪些边界绝不能越过？为了守住这些边界，组织接受什么代价？谁代表组织做出这个选择？

![05页.png](https://p.vibcx.com/x/2026/07/1785019386-05%E9%A1%B5.png)

这就是约束裁定（Constraint Arbitration）。它不是折中取平均，也不是让领导凭经验拍板。约束裁定做的事情只有一件：把"大家都想要"翻译成"组织明确选择"。

面对约束冲突，需要先区分三种情况。

![08页.png](https://p.vibcx.com/x/2026/07/1785019526-08%E9%A1%B5.png)

第一种：通过分场景设计仍然能同时改善多个指标。比如退款申请按金额和风险等级分流，低金额走自动、高金额走人工，总体表现还有提升空间。这时应该继续设计，不急着裁定。

第二种：工程手段已经穷尽，当前条件下不存在同时满足全部要求的方案。退款Agent就在这里。三轮已经证明，70%自动化率、0.5%错误率、8%人工容量不能同时站住。此时需要做一件事：确认错误退款率0.5%是不能动的硬边界，选择自动化率退让到45%，由业务负责人签字接受延后。

第三种：所有退让方案都不可接受。如果45%自动化率带来的收益覆盖不了系统运行成本，这套Agent在当前条件下不应该上线，项目应该缩小范围甚至暂停。

![07页.png](https://p.vibcx.com/x/2026/07/1785019494-07%E9%A1%B5.png)

退款Agent的僵局根源就在这里：六轮评审一直在用第一种情况的方法处理一个已经进入第二种情况的问题。组织需要做的，已经从"找到更好的方案"变成了"选择一项代价"。

* * *

## 为什么AI项目更容易在这里反复卡住

约束冲突在传统软件项目里也会出现，但AI项目你会经常遇到。

![06页.png](https://p.vibcx.com/x/2026/07/1785019403-06%E9%A1%B5.png)

AI的输出是概率性的。错误率从0.8%降到0.5%和从5%降到3%不是同一种工程任务——越接近边界，改善越困难、越不稳定。需求文档写不出一条清晰的规则说"这类申请一定能自动处理"，因为模型对同一类申请的判断本身就有波动。约束之间的挤压，是概率系统的常态。

更关键的是，Agent一旦开始执行动作，错误的后果就从"回答不好"升级为"钱退错了"。退款Agent不只等人确认，它会直接执行退款、发确认邮件、修改订单状态。风控团队坚守0.5%的边界，如实反映的是错误动作的代价。

模型能力和任务分布还在持续变化。今天做出的裁定——45%自动化率，只覆盖低金额低风险——未必半年后还需要如此。但这恰恰说明裁定需要被显式做出：没有写下来的默认状态，等条件变化时，没有基线可以对照，也没有人知道该重新评估什么。

### 缩小范围也是答案

Google的Gemini图像生成功能踩过一次类似的坑。为了减少早期模型在族群呈现上的偏差，系统被调优为产生更广泛的人群分布。但这项调优没有区分两种场景：普通创意请求确实需要多样性，而涉及特定历史人物或事件的请求必须保持准确。系统变得比预期更保守，大量正常请求被直接拒绝。

![09页.png](https://p.vibcx.com/x/2026/07/1785019561-09%E9%A1%B5.png)

Google在公开复盘中指出，问题不在某一个目标本身有错，而在于多样性、安全性、可用性和历史准确性之间的约束没有按场景分区处理。发现问题后，Google先暂停了这项功能，之后更换模型、重建评测标准、引入红队测试，最终用更小的开放范围和更明确的限制条件重新上线。

这和退款Agent的逻辑一致：当现有能力无法在所有场景中同时守住边界，缩小适用范围比悄悄放松边界更成熟。退款Agent选择"首期只覆盖低金额低风险申请"，就是在做同样的事。

* * *

## 把退款Agent的裁定写出来

回到退款Agent。如果第六次会议不再以"再优化一版"结束，而是做一次显式的约束裁定，结果可以写成这样一张表：

| 要回答的问题 | 本次选择 |
| --- | --- |
| 哪条边界不能动 | 错误退款率不得超过0.5% |
| 当前什么要求无法同时满足 | 70%自动处理 + 8%人工容量 + 错误率边界 |
| 本次接受什么代价 | 首期自动化率降至45% |
| 谁承担这项代价 | 业务负责人接受本季度收益延后 |
| 系统范围如何变化 | 只处理低金额、低风险退款申请 |
| 何时重新评估 | 模型升级或人工容量变化时 |
| 超过边界怎么办 | 自动降级到人工处理，必要时暂停自动退款 |
| 本次裁定依赖的假设 | 当前模型能力和人工容量不足以在全部申请类型中同时满足自动化率与错误率要求 |

这张表做的事情很简单：把"再优化一版"变成了一个可以执行、可以监控、可以重新评估的选择。

业务负责人仍然会不满意——45%离他的目标差了一半。但他的不满意现在被写进了一个有时限的决定，而不是飘在空气中变成又一轮"模型团队再想想"。最后一行是留给未来的：一旦模型变强、人手增加、或业务调整了目标，这张表应该被拿出来重新裁定，而不是悄悄沿用一个已经过时的选择。

![12页.png](https://p.vibcx.com/x/2026/07/1785019648-12%E9%A1%B5.png)

有一种常见的担心：现在做裁定，会不会过早放弃技术进步？但裁定不是宣布技术永远做不到。它只是不让项目在等待未来能力的同时，无限期停留在一个没人承担后果的状态。能力变化了，重新裁定就是——表里已经写好了触发条件；在那之前，组织仍然要决定今天怎么做。

* * *

## FDE重新理解约束冲突

退款Agent的四方会议，是许多AI项目的缩影。卡住项目的既不是技术不行，也不是团队不配合，而是一种更安静的僵局：每个人都在努力，每个要求都合理，但合在一起，当前条件下没有一个让所有人都满意的解。

![13页.png](https://p.vibcx.com/x/2026/07/1785019689-13%E9%A1%B5.png)

组织在这一刻的本能是"继续找"。FDE在这一刻要做的，是帮组织把争论从"谁的目标更重要"翻译成一张约束裁定表——哪条边界不能动、为了守住它们接受什么代价、谁来签字、什么条件下重新评估。

大多数组织把约束冲突当设计问题处理：觉得再迭代一轮，就能找到一个各方兼顾的方案。设计问题期待收敛——每一轮应该比上一轮更接近目标。但当三轮迭代都没有收敛，每一轮只是在不同指标之间来回摆动的时候，问题的性质已经变了：组织要做的已经从寻找最优解，变成了在几个都不完美的选项中选一个愿意承受的。

这个转换很难自发发生，因为承认"设计空间已经穷尽"需要有人说出组织不愿意听的话。FDE在现场，能读懂每一轮迭代的收敛状态，能判断项目是在靠近答案还是在原地打转。这种判断不来自某种独特的技术能力，来自一个简单的事实：FDE不代表四方中的任何一方，不需要维护任何一个目标的优先级。

**有些AI项目卡住，不是因为还没找到更好的方案，而是组织还没有承认：当前条件下，不存在一个什么都不损失的方案。**

**约束裁定不是让各方各退一步，而是决定为了守住哪些边界，组织愿意明确承担什么代价。**

* * *

## 写在最后

资源承诺解决了谁真正投入，责任单点让判断不压在一个人身上，决策权区分了建议、否决和最终拍板。本篇补上的问题是：当决定权已经清晰的时候，决定者究竟依据什么。答案已经不是谁更正确，而是组织愿意承受哪一种损失。

但裁定是对当前条件做出的选择。模型在进步，成本在变化，业务需求不会停在原地。今天选择的方案，半年后是否仍然成立？一张裁定表填完，怎么知道它什么时候该被调整？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。