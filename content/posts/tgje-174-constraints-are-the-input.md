---
title: 为什么最好的AI方案，往往不是技术最先进？丨FDE重新理解工程判断
date: 2026-07-09
draft: true
coverKeyword: 约束是工程真正的输入
description: 最好的AI方案，往往不是技术最先进的那个。这篇用Zillow Offers真实案例——技术成熟却烧掉5亿美元、裁员四分之一——拆开一个容易被忽视的区别：预测不是决策，模型给出的是预测，需要为预测的不确定性设计缓冲的是工程判断。FDE落地工程系列内容：约束不是限制，是工程真正的输入。
tldr: |-
  Zillow用了十几年成熟的房价预测技术做AI炒房生意，四年做到30多亿美元营收，却在2021年突然关停，写下5亿美元损失，裁员四分之一。技术没问题，公司自己都承认预测能力一直很强。

  行业默认技术越先进方案越好，选型压力越来越大——不追新就显得不专业。但技术和工程问的不是同一个问题：技术追求能力上限，工程追求能不能成立。

  Zillow真正的问题，是把预测问题当成了决策问题——模型给出的是房价预测，买不买、留多少缓冲、什么时候停手，是决策，模型回答不了。这个区分适用于几乎所有想让AI"自己做判断"的场景。约束决定了可行域，选最强的技术只优化了一个维度。

  约束不是限制，是工程真正的输入；工程不是突破约束，是利用约束设计方案。真正的问题是：你的方案，是先把约束想清楚再选技术，还是先选了技术，再看约束能不能凑合满足？
tags:
  - 工程判断
  - FDE落地工程
  - 约束
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
  image: /images/cover/AioGeoLab-cover-tgje-174-constraints-are-the-input.png
  alt: tgje-174-constraints-are-the-input
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-174-constraints-are-the-input c n f uv i w b
publish:
  slug: tgje-174-constraints-are-the-input
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-174-constraints-are-the-input-约束是工程真正的输入.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-174-constraints-are-the-input-AI落地工程化核心逻辑.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-174-constraints-are-the-input-Zillow顶级AI为什么亏了5亿.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-174-constraints-are-the-input-The
      Precision Engineering Blueprint/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1783476115-tgje-174-constraints-are-the-input-AI%E8%90%BD%E5%9C%B0%E5%B7%A5%E7%A8%8B%E5%8C%96%E6%A0%B8%E5%BF%83%E9%80%BB%E8%BE%91_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-174-constraints-are-the-input-AI落地工程化核心逻辑_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao33hfWj_y92ZhX8SDQYETWWjmJjVdt8a1gLEYIBKNhh8y
    video_vid: wxv_4595007792851402763
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUWf67CmUVAA8vzkCIkiaGKaPia7GSck4lUpFhM9Mv5B2c3yvibSPicc4TsX13XcibkV3zicaOjMk1jYUyGA14rZKI5Jf2EWeMfBzBlY/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXDVug5OdWzribKXnrDtFvgJqksslCxoHqIkJ2RNEMCkEk2Om74RUE4Zb2qGq0XAWrOozcE27DoPX1ibR4WibWrE5we1vt9suwVh4/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao39gdLOX9mKZBDmBwVlPbvmvTZC6Dlq-ZoDJYcUCm6Oki
    draft_created_at: 2026-07-08 11:01
    video_media_id: lEmH66TSP501Rw-1R2Ao34Ka1k3xiPnZD7g62hItOnlmE7Mzs6ULk0CPgvfHLPQO
    body_image_cache: {}
  wx_article:
    digest: null
    original: false
    comment: true
---
# 为什么最好的AI方案，往往不是技术最先进？丨FDE重新理解工程判断

2021年11月，美国最大的房源信息平台之一Zillow，突然宣布关停旗下"Zillow Offers"业务——一套用AI算法直接向业主报价、买下房子再转卖的"炒房"生意（业内叫iBuying，即由平台直接现金收购房产、翻新后再卖出的模式）。四年时间，这项业务从0做到30多亿美元营收，一度贡献了公司超过一半的收入，是增长最快的板块。消息公布当周，Zillow市值蒸发接近一半。关停的代价：超过5亿美元的损失，裁员2000多人，占全公司四分之一。

![第 2 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477789-%E7%AC%AC%202%20%E9%A1%B5_1280_714.jpg)


外界的第一反应是"AI又翻车了"。但支撑Zillow Offers的算法，正是那套被业内广泛认可、迭代了十几年的Zestimate（Zillow从2006年开始推出的房价自动估值模型）的延伸——公司自己都承认，算法预测房价的能力一直很强，问题出在别的地方。

这个"别的地方"，才是这一篇真正想拆开的东西。

<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmrbfgi8u04ay01x3b96s3n5r" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 技术追求最强，工程追求成立

![第 3 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477843-%E7%AC%AC%203%20%E9%A1%B5_1280_714.jpg)


行业对AI方案好坏的判断标准，越来越单一：模型能力强不强、参数量大不大、跑分排名靠不靠前。模型、Agent框架、工作流平台几乎每个月都在刷新纪录——上个月还在讨论的最强方案，这个月可能就被新发布的模型甩在身后。选型的时候，"要不要上最新的"变成一种默认的紧迫感：技术方案汇报里不提最新模型，会被质疑是不是不够专业；招标书里少了几个热门技术关键词，会被认为方案不够先进。

这个判断标准背后有一个朴素的假设：技术能力越强，方案就越好。这个假设在实验室里成立——同一个测试集，更强的模型分数更高。放到工程现场，这个假设就开始站不住了。

工程和技术，问的不是同一个问题。**技术追求的是能力上限——这个模型能做到多好；工程追求的是能不能成立——这个方案在真实条件下能不能真的跑起来、扛得住。**

![第 4 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477865-%E7%AC%AC%204%20%E9%A1%B5_1280_714.jpg)


同样一个模型，实验室里能力最强，未必是工程现场里能成立的那个方案；很多时候，真正能撑住的方案，反而是相对朴素的那个。

Zillow的算法就是这样一个例子：Zestimate是行业公认的成熟技术，Zillow Offers用它来给数千套房子实时报价，账面上看，技术足够先进。但这套技术能不能撑起"批量炒房"这门生意，是另一个问题——而这，才是工程要回答的问题。

这种"越新越好"的压力，很大程度上也是被供应商和媒体一起推起来的。每一次新模型发布，都会配上一整套跑分对比和案例宣传，采购决策者很难不受影响——毕竟选一个"更先进"的方案，在汇报里更容易解释、更不容易被质疑。真正难解释的，反而是"为什么我们选了一个跑分不是最高的方案"，即便这个方案才是真正能在自己的约束条件下跑起来的那个。

* * *

## 技术能力再强，也解决不了另一个问题

### 预测不是决策

![第 5 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477881-%E7%AC%AC%205%20%E9%A1%B5_1280_714.jpg)


Zestimate做的事情其实很单纯：给出一个房价的预测值。预测房价会不会涨、涨多少，这是一个统计问题——数据越多、模型越好，预测就越准。但Zillow Offers真正要做的，不是预测房价，是决策：买不买这套房、出价多少、留多少缓冲空间应对预测出错、什么时候该放慢采购节奏、什么时候该停手。

预测和决策，是两件完全不同的事。预测问的是"未来最可能是什么样"；决策问的是"在预测可能出错的情况下，我现在应该怎么做"。一个好的预测模型，只回答了第一个问题。真正决定Zillow Offers能不能撑住的，是第二个问题有没有被认真设计过。

复盘显示，Zillow Offers真正的问题，不是预测模型不准，是整套业务设计没有为预测的不确定性留出缓冲。炒房生意的利润空间本来就窄，买入价和实际能卖出的价格只要差出百分之几，一单就可能亏本；而Zillow在2021年疫情后房价剧烈波动的阶段，还在加速扩大采购规模，把大量资金集中投向凤凰城、亚特兰大这类涨势最猛、也最先降温的市场——相当于在赌"这一次预测不会错"，而不是设计一套即便预测出错、公司也能扛住的机制。装修工期延误、建材和人工成本上涨、需求突然降温，这些现实变量本身就在不断变化，模型没有变笨，变化的是外部环境的波动性超过了模型能稳定预测的范围，而业务设计没有为这个"万一"留出退路。

![第 6 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477898-%E7%AC%AC%206%20%E9%A1%B5_1280_714.jpg)

这个区分几乎适用于所有想让AI"自己做判断"的场景：库存预测模型算出了未来需求，但订多少货、要不要现在囤货，是决策；风控模型算出了一个客户的违约概率，但要不要放款、额度给多少，是决策；推荐模型算出了用户可能感兴趣的内容，但要不要展示、优先级怎么排，也是决策。预测层面换一个更强的模型，边际收益往往有限；真正决定业务成败的，常常是决策层面有没有被认真设计——预测出错的时候，系统会怎么反应，谁来兜底，损失的上限设在哪里。


### 约束，决定了可行域

这里有一个更底层的原理可以解释这件事：工程里的"最优解"，从来不是单一指标下的最大值，而是所有约束条件放在一起之后，可行范围里表现最好的那个点（这在运筹学里叫约束优化，Constrained Optimization——但这只是一个解释工具，不是这篇要讲的重点）。选"能力最强的技术"，本质上只优化了一个维度；真正的工程判断，要同时考虑成本、时延、可靠性、团队能不能维护、数据够不够、业务能不能承受出错的代价——这些都是约束，缺了任何一个，方案在纸面上再先进，也没法真的成立。

这也是为什么很多技术上"降级"的选择，反而是更好的工程判断：一个响应慢两秒但足够稳定的方案，可能比一个响应快但偶尔崩溃的方案更适合客服场景；一个规则相对简单但可解释的模型，可能比一个准确率略高但没人能说清楚它为什么这样判断的模型，更适合需要审计的金融场景。这些选择在跑分表上都是"退步"，落到工程现场却是进步——都是把约束当成真正的输入之后，才会做出的判断。

Zillow的约束，是"炒房生意要求的预测精度窗口，比市场实际能提供的稳定性更窄"。这条约束一旦被认真对待，答案就很清楚：不是换一个更强的预测模型，是调整业务本身——放慢扩张速度、缩小单笔敞口、在合同里给自己留出更大的价格调整空间。这些都不是技术问题，是工程判断问题。

* * *

## FDE重新理解工程判断

![第 7 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783477954-%E7%AC%AC%207%20%E9%A1%B5_1280_714.jpg)

这里需要立一个判断：**约束不是限制，是工程真正的输入。工程不是突破约束，是利用约束设计方案。**

行业习惯把约束当成一种要绕开、要突破、不得已才要忍受的东西——预算不够是约束，团队水平不够是约束，数据不够干净是约束，这些都被当成"理想方案"实现过程中的障碍，能省则省、能绕则绕。

FDE理解的约束，方向完全相反：方案不是先想清楚"能力最强的技术是什么"，再回头看约束能不能满足；是先把约束一条条摆清楚——预算能撑多久、数据能给到什么程度、团队接手之后能不能维护、业务能不能承受多大的出错代价——方案从这些约束里长出来。

![第 8 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783478158-%E7%AC%AC%208%20%E9%A1%B5_1280_714.jpg)


约束不是要绕开的东西，是工程判断的起点。这也是为什么FDE进入项目的第一周，问的往往不是"我们该用哪个模型"，而是"这几件事的边界在哪里"——这几个问题一旦想清楚，能用的技术范围自然会收窄，方案也就跟着清晰了。

这也是为什么"多模型组合"这类做法，在FDE眼里不是一个省钱的小技巧，是约束驱动设计的一个具体样本：把最贵、能力最强的模型，只用在真正需要它的那一小部分场景上，其余场景交给足够用、成本低得多的方案——有团队用这种方式，在保留92%整体效果的同时，把推理成本降低了75%。

![第 9 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783478170-%E7%AC%AC%209%20%E9%A1%B5_1280_714.jpg)


这条原则在很多团队的实践里都能看到影子：与其把最强的模型用在系统的每一个环节，不如先按任务类型把系统拆开——需要复杂推理的环节交给能力强的模型，格式固定、规则清晰的环节交给便宜的小模型甚至规则引擎，整体成本和响应速度反而更可控。

这里真正值得记住的不是"多模型能省钱"这个具体做法——具体做法会过时，今天是多模型组合，明天可能是别的技术形态。值得记住的是背后那条原则：先看清楚系统真正的约束是什么，再按照约束，把系统拆成不同的部分，各自匹配与之相称的方案，而不是整套系统都焊死在同一个"最强"的技术上。

**真正的工程判断，从来不先问"什么方案最好"，而是先问"在这些约束下，什么方案能真正成立"。**

* * *

## 写在最后

Zillow不缺技术，缺的是把"预测的不确定性"当成工程问题去设计的那道工序——没有人在预测出错的时候，提前想清楚公司能承受多大的损失、什么时候该踩刹车。这道工序不需要更强的模型，需要的是先把约束摆清楚，再决定技术怎么用。**最好的AI方案，从来不是技术竞赛的胜者，是约束优化的胜者**——工程判断的起点从来不是模型能做到多好，是约束允许什么样的方案真正活下来。

![第 10 页_1280_714.jpg](https://p.vibcx.com/x/2026/07/1783478200-%E7%AC%AC%2010%20%E9%A1%B5_1280_714.jpg)


约束想清楚了，方案落地了，这个系统接下来该怎么运行？是继续证明自己有多聪明，还是应该悄悄地、稳定地跑下去，让人几乎感觉不到它的存在？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。