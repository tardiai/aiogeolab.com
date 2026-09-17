---
title: 走向AI原生，原来的业务系统要推倒重来吗？丨ANC再认识系统改造
date: 2026-09-17
draft: false
coverKeyword: ANC再认识系统改造
description: 让AI承担业务，不意味着原来的系统全部重做。企业需要分清：哪些功能可靠适用，哪些功能本身能用但AI还无法使用，哪些已经支持不了新的服务。用场地预订的短例，说明怎样确定接入、改造与替换的范围，同时让原有业务继续得到处理。
tldr: 业务推进方式改变，仍然适用的记录、计算和执行功能可以继续使用。系统已经能完成工作、AI却读不到有效信息，不能按权限操作或无法确认结果时，应先查清接入缺口，评估补齐使用条件。系统本身没有所需能力时，则比较功能改造与替换，不能指望加上AI就自动解决。整天预订与新增分时段预订的区别，可以帮助理解这两种情况。同一系统可以保留客户记录、补充AI连接，同时调整预订功能，不必按整套系统决定去留，也没有必须依次走完的改造阶段。公司应比较后续建设、接入、维护投入和业务衔接，先验证新的安排，再承接相关业务。
tags:
  - rebuild
  - ANC
  - FDE落地工程
  - AI原生企业
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
  image: /images/cover/AioGeoLab-cover-tgje-244-adapting-existing-systems-for-ai.png
  alt: tgje-244-adapting-existing-systems-for-ai
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-244-adapting-existing-systems-for-ai c n f  w b
publish:
  slug: tgje-244-adapting-existing-systems-for-ai
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-244-adapting-existing-systems-for-ai-别把旧软件扔进垃圾桶.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-244-adapting-existing-systems-for-ai-AI
      Native System Evolution Blueprint/10页.png
  cdn:
    infographic_url: null
    infographic_1280: null
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3_Nu7hL223sZhJ_U-8Gso4cK6xSaRjj0uYF9XnlYBIWq
    video_vid: null
    video_cover_url: null
    infographic_wx_url: null
    draft_media_id: lEmH66TSP501Rw-1R2Ao31ad_JW1EF5kdiiVMCRC_wo4-qGMifqNYK8wHMv2IIeo
    draft_created_at: 2026-09-16 10:43
    body_image_cache:
      https://p.vibcx.com/x/2026/09/1789526314-02页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXJQFULzQ5pSU3S572RrMwULH5oIFibK9w0e05wSQAvIQjprs9x9dDibgZdhIghiabiaVsZOCXcJyXJWDVxRDxfhO83KcolP2tmX2U/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526327-03页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVUuMlEDp8JYzkJnHRNRzHzWWJSHmeoFqucZaicoUxujyTzvLFTfpUDibibnqw7nPHnXzSY6YUctH8ZL51XerUQxw3SQxUEpxYLoA/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526393-04页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXYcHASMOr3iaibNpwgRbXdOsgxTtpO6Cb217e8m9xxb1Wf0QLPSx9oqpcicReM8BuRMrnbxYQ4CvPAqhTsbA1P5r8ErzNtn7X9iag/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526407-05页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVJOTtzGetzfa1Ff34VrrYRw0hib9GZuezLyjDlGfryRI6ae52zbrDrwNjH6847b0LFibnl5Ajqcttj9zAu4K3TWq3Vd0hcXEVgA/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526429-06页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWLzcvTV3cByuDxKZBaZ9Bia2ct9ic1J9nVOeEWw4tbDtFlvwP3PjYBOVvwPlaq2iaydcxQ1ogWenggzduJNq2xE0iaxn4AoGuaSjA/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526441-07页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVvsNlUJcybs5JtTOrUDEAsePnAkonqkZXiayic8GBPXrleuOCHE5jEFTPytGCNbTo4ViahOYzibkjy0ZKbalShsCrHARKeTC1glag/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526459-08页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVCywaS6xdrhic0nSh8LSpZcB8uOibDMMbjsJVzhpz6XM2jqMWZSaKXbXhKC8dBYWHOTqUfu7DQHVlsQqK2V4cSChSSbrCu8kogQ/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789526483-09页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVOE2FdwkGGcaJ6qWt6Q4ibFPnG6JVEKpv5MObcmnGaQKJhP0wS7TyF3CQFeMYJ7adzZ0601LykEBpicFq0S2rZwziaTicpia9xhGB0/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  firstory:
    embed_url: https://open.firstory.me/embed/story/cmu3h22oq0sc601wlaxr220ct
    uploaded_at: 2026-09-16 10:19
  blog_published_at: 2026-09-16 10:43
---
# 走向AI原生，原来的业务系统要推倒重来吗？丨ANC再认识系统改造

准备AI转型时，负责人很自然会问：原来的客户管理、订单交易系统还能继续用吗？

![02页.png](https://p.vibcx.com/x/2026/09/1789526314-02页.png)

旧系统里既有多年积累的记录，也有今天仍在处理的业务。公司希望继续使用它们，是为了让经营能够延续；但新的服务要求，也确实会碰到原来没有考虑过的情况。不必因为走向AI原生，就把所有系统重做。

* * *

## 一｜先看哪些功能仍然有用

设想一家经营多个会议场地的公司，准备让AI跟进场地预订。客户改了日期，AI就重新寻找符合人数和活动要求的场地，经客户确认后办理变更，再跟进现场准备。在这套安排里，原系统照常保存客户资料、预订和收付款记录，也继续检查场地是否被占用。AI利用这些记录和检查结果，继续推进落实客户的预定。

![03页.png](https://p.vibcx.com/x/2026/09/1789526327-03页.png)

这种配合让公司能够改变业务的推进方式，同时继续使用原有软件。当公司主要依靠这样的AI创造核心价值，我们称之为AI原生企业：AI Native Company，是以AI Agency为主力实现核心价值创造的公司。这里的AI Agency，是持续判断和推进业务、并从实际结果中学习改进的AI；已有系统的记录、规则检查和自动处理仍可为它所用。

这家公司的客户资料和收付款记录功能已经能够可靠地完成工作，可以继续保留。业务与工程人员用新的使用方式检查它们：AI查询和操作更频繁以后，记录依然要准确，原有业务也要正常处理。需要调整的地方纳入升级，仍然适用的功能就接着使用。

![04页.png](https://p.vibcx.com/x/2026/09/1789526393-04页.png)

我们之前的文章「企业走向AI原生，真正应该建设的是什么？丨ANC重新理解AI原生建设」讨论过，普通软件和现有业务系统可以继续服务于AI持续推进的业务。不过，一项功能对员工好用，还不意味着AI现在就能使用它。

## 二｜系统能做，只是AI还用不上

先看这家公司仍按整天预订的业务。员工过去能够打开系统，查询空闲日期，找到客户的预订，提交变更并查看处理结果。现在公司让AI接手改期，这些功能本身仍然能用。

![05页.png](https://p.vibcx.com/x/2026/09/1789526407-05页.png)

客户确认了新的日期，AI读取原系统当前的预订记录，查到场地空闲，却停在了下一步：它还不能向系统提交变更。原来员工能在页面上完成的操作，尚未提供给AI使用。工程人员可以保留已有的变更功能，让AI在获准范围内提交改期并取得处理结果，而不用重新开发一套预订功能。

![06页.png](https://p.vibcx.com/x/2026/09/1789526429-06页.png)

还需要把系统最后的处理结果交给AI，不能只告诉它“请求已收到”。系统确认改期成功后，AI才能告知客户新的预订已经落实，接着协调现场准备。如果变更没有成功，它就继续查明情况、寻找可行安排，而不是按已经改好通知客户。

连接好以后，业务与工程人员用实际预订检验效果。他们核对系统里的预订记录和后续工作，确认改期确实完成。

若现有系统难以让AI取得可靠结果，或者为了维持接入需要付出过高的长期维护成本，就应考虑改造、替换相关功能。

## 三｜新业务超出原功能，就比较改造和替换

一些客户只需要使用几个小时的会议场地，这家公司因此准备按时间段接受预订，让同一天的场地可以分别供不同客户使用。但原有预订功能只能把场地记为整天占用，不能分别记录几个时间段，也不能按时间段检查预订是否重叠。

![07页.png](https://p.vibcx.com/x/2026/09/1789526441-07页.png)

这时，问题已经不只是AI能否调用系统。即使让AI顺利读取和提交信息，原功能仍然没有办法处理新的预订要求。AI生成一张分时段安排表，也不会自动改变系统管理场地占用的方式。

一种做法是在原预订功能上增加时段记录和冲突检查。原来的占用检查和变更处理都要适应时段预订，同时继续处理已经存在的整天预订。改完以后，系统如果能直接记录和检查两类预订，公司就可以继续使用这项功能。

另一种做法是替换预订功能。新的功能能够管理时段，还得重新接好原有客户和收付款记录，并安排已确认的预订。

两种方案的建设和维护投入，都要与分时段服务能给客户和公司带来的价值相比较。

![08页.png](https://p.vibcx.com/x/2026/09/1789526459-08页.png)

需要改变的是预订功能，仍然适用的客户资料和收付款记录可以继续使用。同一套系统里，保留这些功能、为AI补齐连接、调整场地占用的处理方式，可以同时进行。

决定改动哪些部分以后，还要兼容处理中的预定。新的预订功能经过验证，再承接相应业务；现有预订、客户已经确认的安排和尚未完成的事项，要明确由哪里继续记录和处理。客户已经订好的场地，不应因为公司内部换系统而受到影响。

## ANC视角

> **企业应按AI承担业务的实际需要，决定现有系统哪些保留、哪些改造、哪些替换，而不是因为走向AI原生，就重新建设所有系统。**

![09页.png](https://p.vibcx.com/x/2026/09/1789526483-09页.png)

业务怎样完成可以重新设计，支撑业务的系统不必全部重建。对公司来说，改造值得投入，是因为它能帮助公司更好地回应客户需求、持续提供服务。让所有技术看起来更新、更统一，并不能单独成为重新建设的理由。

## 写在最后

下一次讨论系统改造，可以请业务和技术人员拿出一项准备交给AI的业务，把眼前的阻碍说具体：是AI还不能使用已有功能，还是系统根本做不了所需的工作？在这个基础上，再确认可以沿用什么、需要补齐什么，以及哪些需要改动。

先把缺少的东西讲清楚，才知道该改哪里。“系统用了很多年”本身，不是推倒重来的理由。

* * *

**来源与限制**

1.  Microsoft Learn，Search and tool use architectures，页面更新于2026年7月14日，2026年9月14日核验。该文说明Agent通过工具取得外部信息并调用服务的技术关系，仅作为AI使用已有功能的一般背景，不能证明某套旧系统已经具备接入条件或无需改造。
2.  AWS，Strangler fig pattern，2026年9月14日核验。该文讨论单体应用向微服务的渐进迁移及适用约束，本文仅借此说明软件可以分部分改造和切换，不要求采用该模式、迁云或最终替换所有旧功能，也不据此宣称渐进改造总是成本最低。
3.  场地运营公司、原系统能力及新增分时段服务均为综合设想，不代表真实案例、产品能力或行业标准。保留、接入改造与功能改造或替换的判断属于ANC应用建议；上述来源不证明本篇安排必然改善经营结果。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪AI工程系列**」FDE落地工程、ANC：AI Native Company未来公司系列、GEO、AI判断工程。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。

