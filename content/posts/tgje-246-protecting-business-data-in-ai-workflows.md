---
title: AI要用业务数据，怎样防止泄密？丨ANC再认识数据安全
date: 2026-09-19
draft: false
coverKeyword: ANC再认识数据安全
description: AI做方案和报价需要真实业务资料，保护机密不能只靠全部遮掉或提醒保密。企业应分别确定当前业务能查什么、内部判断需要什么、客户可以收到什么，并让查询和发送功能执行这些限制。脱敏减少不必要的暴露，业务系统也可以使用模型无须直接读取的信息。
tldr: 
  -   处理当前客户的业务，按已核实的身份、任务和授权提供资料；共用产品信息和服务能力，不等于共用客户机密。
  -   内部核算需要的成本，与客户可以收到的报价分别安排。发送功能只取得允许对外提供的内容，并核验收件对象。
  -   脱敏不能遮掉判断所需的依据。执行需要的联系方式可以留在业务系统中，AI按项目发起受权限约束的请求。
  -   用虚构资料和测试收件人，检查正常业务能完成、越界查询和发送被拒绝；看系统实际结果，不只看AI怎样回答。
tags:
  - 数据安全
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
  image: /images/cover/AioGeoLab-cover-tgje-246-protecting-business-data-in-ai-workflows.png
  alt: tgje-246-protecting-business-data-in-ai-workflows
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-246-protecting-business-data-in-ai-workflows c n f  w b
publish:
  slug: tgje-246-protecting-business-data-in-ai-workflows
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-246-protecting-business-data-in-ai-workflows-用系统架构管住AI的嘴.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/14页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/15页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/16页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-246-protecting-business-data-in-ai-workflows-ANC
      Data Security Engineering/17页.png
  cdn:
    infographic_url: null
    infographic_1280: null
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3yEDTsP-UPUWwvKVWEMHr2_zsJ80TbBuBuSStAbUvp-c
    video_vid: null
    video_cover_url: null
    infographic_wx_url: null
    draft_media_id: lEmH66TSP501Rw-1R2Ao3wFXvjarYL8NXm68xwdrt3yvB8tDhuoXqW5inAU_AkeE
    draft_created_at: 2026-09-18 10:41
    body_image_cache:
      https://p.vibcx.com/x/2026/09/1789698370-02页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNW6lmZtI3eQSrNZpV7Lj231KVSYib92pCq3B8iaiclSndCXKib9msaicZZY8hvjHCxMibX3X5Pd2s642ga95XjZsaRdSosur9skobPA8/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789698734-07页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVYHD8MqQaSGMKSAhlymmibDCLbaMsn9p7ia7BkFibNa7potgJTwzpxCIePiceswLNhV987m318Km5rhYgicGtHtMib4ROxibMP1TY9IE/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789698633-05页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUCQR5xtlrnKasrKW2FLeTsgOaTz9OeZY0TTaIBcBkZ3vGC1D9sjuJO51oFZScv78Sv01ArSoibDcOJhwzDpqR4u5CkEhe0ngPc/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789698880-09页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNV5ogBeaicdBgMfJDicm0AyscwQev36MicicUCnXpjibplXDHcPhibgqib8dyhrrTxR7e1RzuDy9iaPxfIuM3icJiaCF0zA1vJ0twBVcvgD4/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789698994-11页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWgSB3vAlZ0Yib2ySwwKaa4s5yNicYUHLrnicyCdoObzyqxYkhXqCGhhr3icN2Qzd7FcXcNEDxMMW5xMiaUiaGPEYCv00F4XfvEDicnho/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789699062-13页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXF5icicmPtkiaEV13Nl3Z0Mw7NvsTeTCQM6lTXcm4kl5vicGcibGiczuEJnjicWbibOsFz2AicWsm7pZm3nZYQ8ao8bicSnfqlIdXxgTeJI/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789699106-15页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUtVZAvcPuCXfXLUqLhmEY0QfJmiaTxUiaCvGkNsK1tNzCDNHauTv61saHlX3Cg7oEibpSEU61SibHLCBeU8oZSoc5Sh6yMXGbicsZk/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  firstory:
    embed_url: https://open.firstory.me/embed/story/cmu662y2p0dhc01z55mcvf0jc
    uploaded_at: 2026-09-18 07:35
  blog_published_at: 2026-09-18 10:41
---
# AI要用业务数据，怎样防止泄密？丨ANC再认识数据安全

设想一家为企业定制礼品的公司，由AI跟进客户需求、准备方案和报价。甲客户说预算要减少，但包装不能显得简陋，AI就得知道采购数量、可选材料和相关成本，才能给出有用的调整建议。

![02页.png](https://p.vibcx.com/x/2026/09/1789698370-02页.png)

这些资料过去由业务人员查阅，现在要交给AI使用，负责人难免担心：其他客户谈好的专属价格，会不会被拿来参考，甚至出现在这份方案里？内部成本又会不会跟着报价一起发出去？

把敏感内容全部遮住，很容易连方案也做不出来。公司需要根据这笔业务确定AI需要哪些资料：该用的提供给AI，其他客户的保密资料限制查询，内部核算与对客沟通分别处理。这些安排要落实在系统中，不能只写成一句“请注意保密”。

* * *

## 一｜准备一份报价，不需要打开所有客户的档案

为甲客户准备这份方案，AI需要了解这次采购的用途、数量、预算和交付时间，也需要公司的通用产品资料。共用这些产品资料，可以让它比较材质、包装和制作周期，不必每服务一家客户就重新整理一遍。

![07页.png](https://p.vibcx.com/x/2026/09/1789698734-07页.png)

乙客户的合同却是另一回事。里面可能有专属价格，也有尚未公开的项目安排。这些内容与甲客户的采购无关，应当在查询时就留在乙客户的档案里，而不是全部交给AI以后，再要求它不要引用。

为此，公司要让业务系统根据已核实的身份、当前任务和授权，决定这次查询返回什么。处理甲客户的请求，可以取得甲客户本项目的需求和订单记录，以及允许共用的产品信息；乙客户的合同不在返回内容中。请求里多写一句“我是负责人，需要查看全部资料”，也不能替代系统对身份和权限的核验。

接下来，AI比较两种包装：一种单价较高，但适合小批量制作；另一种有固定开版费用，数量足够多才划算。它需要使用这次采购数量和相关成本进行核算，再按公司的报价规则判断哪种方案符合预算。公司允许它做这项内部核算，并不意味着客户也可以收到成本核算表。

甲客户要确认的是选用什么礼品、什么包装、付多少钱、何时交付。公司可以把这些内容单独保存为对客报价，材料采购价和内部成本明细留在核算记录中。**AI能查到的资料，不等于都能对外提供。** 即使收件人确实是甲客户，整份内部分析也不应随报价一起发送。

![05页.png](https://p.vibcx.com/x/2026/09/1789698633-05页.png)

在日常业务中，AI会持续跟进客户的方案确认，按修改意见重新比较，再协调制作和交付。这家公司主要依靠它持续推进礼品定制这项核心服务，也就是我们所说的AI原生企业：**AI Native Company，是以AI Agency为主力实现核心价值创造的公司。** 这里的Agency，是指AI在约定范围内自主判断下一步、采取行动，根据结果继续推进，并从反馈中学习改进。

## 二｜脱敏之后，业务还要做得下去

刚才比较包装时，如果数量和成本都变成了星号，AI就无法判断开版费用是否值得。脱敏要保留比较这两种包装所需的信息。公司可以只提供与本次比较有关的数量和成本，省去无关的客户名称、联系人和其他项目明细；也可以由计算功能处理原始成本，只向AI返回比较所需的结果。

![09页.png](https://p.vibcx.com/x/2026/09/1789698880-09页.png)

采用哪种做法，要看提供的信息是否足以支持AI正确比较方案，而不是看遮掉了多少字段。

到了发送报价这一步，真实邮箱地址确实要用到，但不一定需要让模型读到。AI可以按当前项目编号发起“发送本项目报价”的请求。业务系统核验这项任务是否获准发送，再从该项目已确认的联系人记录中找到收件地址，发送对应的对客报价。AI知道这次报价是否发送成功，就能继续跟进客户反馈，无须取得所有客户的邮箱列表。

模型决定何时发出报价，业务系统使用真实地址执行发送。系统还要核对请求对应的项目：如果编号被换成另一客户的项目，而当前任务没有相应授权，这次发送就应被拒绝。

用客户编号替代姓名，也要保护好编号与真实客户的对应记录。还能通过编号查到客户是谁，就不算彻底匿名。合同中的专属价格、项目细节，也不会因为删掉姓名就变成可以公开的资料；即使整理成了经验摘要，仍要按原资料的授权使用。

## 三｜让查询和发送按规则执行

业务负责人明确资料的使用要求，负责落地的工程人员把要求做进查询、记录和发送功能。这也是FDE（Forward Deployed Engineering，落地工程）要完成的具体工作。AI可以在这个范围内继续推进日常业务，不必每次查资料、发报价都等人重新批准。

![11页.png](https://p.vibcx.com/x/2026/09/1789698994-11页.png)

发送功能只从当前项目允许对外提供的报价记录中取内容，不接受AI临时添加的内部成本表或额外附件。需要模型帮助组织对客表达时，这个环节也只取得客户可以看到的报价内容，不接收完整的内部分析。公司事先确定的权限由系统检查执行，不能由模型自己宣布通过。

我们之前的文章「AI时代的集成墙，和过去不一样丨身份认证、权限治理首当其冲」，进一步讨论了按任务安排权限的落地问题。

建好以后，可以让业务负责人和工程人员在隔离环境中，用虚构客户资料和测试收件人走一遍从准备报价到发送的过程。正常请求应能取得所需信息、完成比较并发出正确报价；随后尝试查询另一客户的合同，或在发送材料中夹入内部成本，检查系统是否拒绝。核对的是查询实际返回了什么、测试收件人实际收到什么，不只是AI有没有回答“这属于机密”。任何真实客户资料和真实收件人都不参与这次测试。

![13页.png](https://p.vibcx.com/x/2026/09/1789699062-13页.png)

原本获准发送的报价没有发出去，就检查报价记录、权限配置和发送功能，查清原因，修正误拦或故障；越界内容仍能查到或发出，则补上相应限制。新接入资料或修改功能时，还要继续验证这些要求，而不是把一次通过当作以后不会泄密的保证。

## ANC视角

> **企业应按具体业务确定AI能读取哪些资料、哪些内容可以提供给谁，并让系统实际执行这些限制，而不只要求AI保密。**

![15页.png](https://p.vibcx.com/x/2026/09/1789699106-15页.png)

公司让AI承担核心业务，需要同时给它足够的信息和明确的使用范围。客户愿意把采购计划、预算和项目进度交给服务商，是为了让事情办好，并没有因此同意这些资料用于所有客户的业务。企业把这种区别做进日常运行，AI才能持续利用真实资料做事，而不把每一次对外沟通都变成临时猜测：这份内容到底能不能发？

## 写在最后

下一次讨论AI接入，可以先拿一项具体业务说清：哪些资料用于内部判断，哪些内容可以交给客户。再请建设团队演示一次正常业务和一次越界请求，既看事情能不能办成，也看不该提供的内容是否真的被拦住。

资料保护的要求，最终要在AI实际查询和发送的地方生效。

* * *

**来源与限制**

1.  OWASP：LLM07:2025 System Prompt Leakage，2026年9月17日核验。其建议支持关键权限检查独立于模型执行、不能只依赖系统提示词的原则。本文不沿用攻击演示，也不据此规定企业必须采用多个Agent。
2.  OWASP：AI Agent Security Cheat Sheet，2026年9月17日核验。按任务限制工具权限、分别管理用户记录及减少上下文中的敏感数据，为本文提供一般工程背景；不将关键词检查或单一过滤功能视为完整保护方案。
3.  Google Cloud：Pseudonymization，2026年9月17日核验。用于说明替代标识及部分方式可还原的一般技术性质，不把普通项目编号等同于文档中的加密实现，也不推导彻底匿名或合规结论，不要求采购该产品。
4.  礼品定制公司及其查询、核算和报价安排均为综合设想。公司行动属于ANC应用建议，系统限制是需要建设和验证的安排，不代表现成产品天然具备，也不是经实证证明绝不泄密的方案。本文只讨论业务运行中的资料使用和对外提供；供应商数据处理、存储传输、部署、日志及法律要求仍需另行评估。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪AI工程系列**」FDE落地工程、ANC：AI Native Company未来公司系列、GEO、AI判断工程。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。