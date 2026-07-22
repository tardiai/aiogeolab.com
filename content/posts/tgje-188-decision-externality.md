---
title: 为什么很多系统不是死于错误，而是死于正确？丨FDE重新理解局部最优
date: 2026-07-23
draft: false
coverKeyword: FDE重新理解局部最优
description: 销售、客服、法务各自选了最适合自己的AI工具，每个决定都做对了，企业却拼不出一个统一的客户视图。这篇文章重新理解局部最优：组织真正失败的时候，往往不是有人做错了，而是所有人都做对了自己的那一部分。
tldr: |-
  销售、客服、法务各自选了最适合自己的AI工具，转化率涨了、处理时间降了、合规风险小了——每个决定都做对了。半年后，企业拼不出统一的客户视图，一次安全审计要花两个月厘清有多少AI系统在跑。2026年，"AI sprawl"成了企业架构圈的高频词，平均每家企业同时运行14到18个AI工具，只有4到6个真正经过安全审查。

  局部最优不是谁贪心——组织按部门分配责任，每个人能优化的只有自己被分配到的那部分，这是组织结构本身设计出来的行为。问题是，局部最优的加总，不等于全局最优，组织默认"每个局部都对了整体自然就对了"，这个推论站不住脚。

  一个部门的AI选型，会悄悄改写数据格式、接口、权限这些整个组织共享的约束——这是决策外部性：做决策的部门独享收益，成本却由其他部门承担。这不是AI独有的问题，ERP时代、微服务时代都有过，AI只是让外部性传播得更快更广。

  组织真正失败的时候，往往不是有人做错了，而是所有人都做对了自己的那一部分。下一个问题是：组织把资源和责任分配给谁，这件事本身，是不是也值得重新审视？
tags:
  - 局部最优
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
  image: /images/cover/AioGeoLab-cover-tgje-188-decision-externality.png
  alt: tgje-188-decision-externality
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-188-decision-externality c n f uv i w b
publish:
  slug: tgje-188-decision-externality
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-188-decision-externality-系统死于“正确”：企业AI落地的谜团.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-188-decision-externality-AI时代的局部最优陷阱.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-188-decision-externality-局部最优引发全局失控.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5).pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-188-decision-externality-Dying
      of Correctness (5)/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1784675321-tgje-188-decision-externality-AI%E6%97%B6%E4%BB%A3%E7%9A%84%E5%B1%80%E9%83%A8%E6%9C%80%E4%BC%98%E9%99%B7%E9%98%B1_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-188-decision-externality-AI时代的局部最优陷阱_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3-du_e-Bsebc4J70IcVZUoyySiL0-MGDhthmoC7mJYQd
    video_vid: wxv_4615162183864385537
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNW96LyNttfcJD3AWllmV4Da6ja9wbsHl6pXqecVbJxC7gvKjIda3DNQ1eQ8PiarBFURW3m8weKbotwqjsd8r6SR4TAn8OoJicv0c/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUP1ddDtFI1ibwMGoszR7iaicJPnZKMppj9Z6yVoSM0X6OfCoxu2rroBL6KOEcN0Ee7tictVpTPjm3IqIQIibMST0SXVFsWYG1QJWGk/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3wGQ0CRDyevw3q9LE7015njkgE6W0ztHrJ3Rp3PH5Cs9
    draft_created_at: 2026-07-22 07:45
    video_media_id: lEmH66TSP501Rw-1R2Ao3y34kBbfw65QjFutpTVySw4TymfoyNAHGgw395h6STf0
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1784675604-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXuJs70UYgsPYFrS2DketWeHUqTr7lhbib2KQVoqWVZtokqJXfYFWjzqrzuFLgzUxD5c7oEPTB9Bww9ZvicqQgiaicjKTVATf7kBzg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675670-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXgRRtQJFZAFJAp56aBkax209dzsibSXdrsV2XibZrtOlqab6ex2jPAibZn7Cuf4mAalQLsq81oRMHRShib0A8ncFy7xy603XqicFPs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675747-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWSRtv73kJDraVUJSprm4T1wJoOjiajj6H6RCue5wqYvdTkKibIHSejfYq1KIa0Ta9W8FyAjw7CoBqsgUfibrgpryiaMkjzHVcGkibk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675793-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXMiaI64AFdrGyb6GODo1RwI874RNLZKHvic20ibUJoRmciaECBqiaRzCZ7pC4WnUMQFIibRHZ9ibz8cBlxoS0YKly8lbJFvrf87QT6so/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675811-07%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXzLHRD0u6uZ6b0OFkecQUibJxx1LIFmdBdDmwPZNEEbzdRsqbiaSSlSJibOwCkQjRvciar4toPADYoY5bicUqruGRauO9GdFuL6tq8/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675820-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUeMNXqzRfIsDGw8jiac8Fibcktic85lO5dbICmX5A3ic2jgPewzicseMkJyycboqFdgpKnpu1KgePmiaoVl8NnVlsOwUoboJ4SFIpTw/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784675838-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUMHguxjrClmxoiaBtibLicIAnDwKGPicjKK21bZ1fxI7tH1TTzUKv2CngJu42O9wqEZTn6BIj2Lpic8kvDPVvNyQrxkcPfGMIGuA3I/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784677071-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNV2k0icnlchGWpSKLFPvgwgmwnuGdzj6MUI1B9KKIVNPsjwmNRXuiagZEeiasQuxejFpJIbr9ewkaj13FISCQeFWdaHWa10TB4sxE/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784677110-11%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVtricBEccVDFpFOaiaHibT7ujeSYspfyq14jBdaPeemqFUcSSbdG9Ul4ib5eA47YickcxARaE67JrFNZLK24GHAZItITY8ibNOZOibDs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784677126-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUBHYib6NPxJCclO59NNaW2iafiaVdgeK3Z2a04hWnlmvXZU0ZRveoz9tvuML9BD7gZl1FSLjOttEAJxuCHPtBTpHTfv6xrY6GaFU/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784677154-13%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXIj6ZuiaBqrshuibRSvlfaNv8ABaHTV9jvtibSuKZe060lLP2Vt9HqwNVlbD3MXUSVrp6uJhaYbmeNic0f91dmRYjnh9UsHbDlNHw/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-22 07:45
---
# 为什么很多系统不是死于错误，而是死于正确？丨FDE重新理解局部最优

销售部门选了一套最适合销售场景的AI工具，转化率确实涨了；客服部门选了一套最适合客服场景的AI，平均处理时间确实降了；法务部门选了一套审查最严格的AI，合规风险确实小了。每一个决定，都经过了各自部门认真的论证，也都拿到了看得见的结果。

![03页.png](https://p.vibcx.com/x/2026/07/1784675604-03%E9%A1%B5.png)

半年后，企业发现自己拼不出一个统一的系统关系图，一次跨部门的安全审计，要先花两个月才能厘清到底有多少AI系统在处理哪些数据。真正的问题，从来不是哪一个部门选错了工具，而是没有任何一个决定，需要为整个系统负责。

![04页.png](https://p.vibcx.com/x/2026/07/1784675670-04%E9%A1%B5.png)

这不是虚构的场景。2026年，"AI sprawl"（AI野蛮生长）成了企业架构圈的高频词——一份2025年针对千人规模企业的审计发现，平均每家企业内部同时运行着14到18个AI工具，其中只有4到6个真正经过了IT安全审查，剩下的大多是各部门自己谈好、自己上线的。某企业的架构副总裁兼首席AI架构师Sergey Sergeyev接受CIOnews采访时，用"AI splintering core systems"（AI正在把核心系统拆散）描述这种感觉——企业架构团队过去习惯做以多年为周期的规划，现在被迫转向更短期的"紧急规划"。很大程度上就是因为，没人再说得清系统现在到底长什么样。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmrv9i13f03w401tg6u0sfiny" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 局部最优，全局失控，是组织结构本身的产物

组织天然按部门分配责任、按部门衡量绩效——销售负责人不会被要求去论证这套工具对财务结算有什么影响，法务负责人也不会被要求考虑这套工具好不好被客服接进去，一个人能优化的，本来就只有自己被分配到的那一部分。

![05页.png](https://p.vibcx.com/x/2026/07/1784675747-05%E9%A1%B5.png)

更深一层看，问题甚至不只是责任被切开了，是不同部门原本要优化的目标，天然就互相冲突：销售要的是成交率，客服要的是响应速度，法务要的是风险最小，IT要的是系统稳定，这几个目标本来就没有一个共同的方向。局部最优不是哪个人思考不周，是组织把不同的优化目标分给不同的人之后，必然会长出来的结果。

![06页.png](https://p.vibcx.com/x/2026/07/1784675793-06%E9%A1%B5.png)


"**每个局部都对了，整体自然就对了**"，这个推论，在一个相互连接的系统里，从来就不成立。

* * *

## 一个局部决策，正在修改所有人共享的约束

销售今天选了一套CRM Agent，看起来只是销售自己的决定。实际上，这个决定同时也在悄悄改写数据格式、接口协议、身份认证方式、客户主键、权限模型——这些原本属于整个组织共享的底层约束。

![07页.png](https://p.vibcx.com/x/2026/07/1784675811-07%E9%A1%B5.png)


客服部门明年能不能把这套系统接进自己的工单流程，市场部门明年能不能拿这份数据做联合分析，财务部门季度末能不能把这些交易记录并进结算系统，答案都已经被销售今天这一个局部决策悄悄决定了，而这些部门在做出自己决定的那一刻，甚至都不知道自己决定了什么。

![08页.png](https://p.vibcx.com/x/2026/07/1784675820-08%E9%A1%B5.png)

这是一种典型的**决策外部性（Decision Externality）**：做决策的部门，独享这个决策带来的收益；决策产生的成本——未来协调的困难、数据孤岛、重复投入——却由其他部门、由整个组织去承担。做决定的人不用为这份成本负责，这正是局部最优会一路狂奔、没有天然刹车的原因。

![09页.png](https://p.vibcx.com/x/2026/07/1784675838-09%E9%A1%B5.png)

这不是AI独有的问题——ERP时代、微服务时代，同样的外部性早就存在过。AI没有制造出一种全新的外部性，它真正改变的，是让更多局部决策，能够绕开IT、直接进入系统：过去，业务部门想上一套新系统，多少要经过IT评估、排期、对接；现在，一个业务部门自己就能调用API、写prompt、接入一个agent，不再需要经过任何中心化的把关。局部决策的数量因此暴增，**每一个都可能悄悄修改一份共享的约束**，而这份约束原本是什么样的，谁都说不清。

McKinsey的调研显示，88%的企业已经在至少一个业务里用上AI，但只有约三分之一真正从试点走向规模化。规模化困难的原因有很多，局部决策缺乏统一约束，是其中最常出现的一类。

* * *

## FDE重新理解局部最优

从"每个决策都正确"升级到"整个系统仍然正确"——真正该问的，不是这个局部决策本身对不对，而是：这个决定，正在悄悄修改哪些原本属于整个组织的约束？未来，这份被修改的约束会影响到谁？

![10页.png](https://p.vibcx.com/x/2026/07/1784677071-10%E9%A1%B5.png)

**系统不会按照责任边界运行，只会按照约束关系运行**——这句话本身，就是这一篇唯一需要记住的判断。组织真正失败的时候，往往不是有人做错了，而是所有人都做对了自己的那一部分。

![11页.png](https://p.vibcx.com/x/2026/07/1784677110-11%E9%A1%B5.png)

这也是为什么，**"看得清局部决策修改了哪些共享约束"，会变成一种比"把局部做到最优"稀缺得多的能力**。后者每个部门都有专人负责，前者往往没有人天然拥有——没有哪个人的职责范围，天然覆盖着"整个系统"这四个字，这份能力不会随着专业分工自动长出来，只能靠有人主动去补。

真正的系统设计，不是在设计眼下的流程，而是在考虑别人未来还能怎么做决定；没有人补上这个位置的组织，注定会被无数个正确的局部决策，悄悄推向一个谁都不想要的系统状态。

* * *

## 写在最后

文章「为什么AI项目越来越像组织工程？」里说过，AI正在把系统建设变成组织建设——这一篇是这个判断的延伸：局部最优陷阱之所以存在，本质上是组织结构本身的产物，不是技术问题。  
「为什么最先进的架构，经常输给最普通的方案？」讲的是一个系统内部复杂度的累积，这一篇讲的是多个"各自正确"的系统之间，复杂度如何累积。

![12页.png](https://p.vibcx.com/x/2026/07/1784677126-12%E9%A1%B5.png)

信息价值、复杂度债务、可逆决策、局部最优——这四层判断，合在一起，构成了"系统方案该怎么选"的完整全貌。

![13页.png](https://p.vibcx.com/x/2026/07/1784677154-13%E9%A1%B5.png)

那如果一个组织已经能看清楚，局部决策正在修改哪些共享的约束，是不是就意味着，接下来只要找对人去做这个系统判断就够了？还是说，组织把资源和责任分配给谁，这件事本身，也是一个需要重新审视的判断？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
