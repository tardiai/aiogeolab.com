---
title: AI开始承担核心业务，公司会不会被模型厂商卡住？丨ANC再认识外部依赖
date: 2026-09-07
draft: false
coverKeyword: ANC再认识外部依赖
description: AI开始持续处理客户请求、安排资源和推进交付以后，外部模型的变化会直接影响核心业务。但普通的模型调用不会自动让公司失去工单和客户记录；当Agency的运行、最新业务状态和处理结果只留在厂商配套环境中，模型依赖才会进一步变成业务绑定。本文用商业物业维修协调的综合设想比较两种安排，并提供一次简单的“换模型测试”。
tldr: AI承担核心业务以后，企业对外部模型的依赖会加深。外购模型能力本身没有问题，关键是更换模型以后，公司是否仍然知道客户是谁、业务进行到哪里，以及怎样判断服务有没有做好。企业持续保存业务记录，让Agency的行动和结果回到自己的业务系统，并用真实案例验证新模型，就不必在更换模型时把整项业务从头重建。转换仍有成本，也不能保证新模型具有同等能力。
tags:
  - 外部依赖
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
  image: /images/cover/AioGeoLab-cover-tgje-234-when-core-business-depends-on-model-providers.png
  alt: tgje-234-when-core-business-depends-on-model-providers
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-234-when-core-business-depends-on-model-providers c n f  w b
publish:
  slug: tgje-234-when-core-business-depends-on-model-providers
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-234-when-core-business-depends-on-model-providers-别让AI锁死公司业务.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/14页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-234-when-core-business-depends-on-model-providers-Architectural
      AI Sovereignty/15页.png
  cdn:
    infographic_url: null
    infographic_1280: null
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3zOlZ04h9RZbF612xJdepAfowgrbIsKKHm20RS57_g65
    video_vid: null
    video_cover_url: null
    infographic_wx_url: null
    draft_media_id: lEmH66TSP501Rw-1R2Ao3zKNaKtAbRkbTcexbCrUfcrnuSTYZXDZ-igOIB9ok-nM
    draft_created_at: 2026-09-06 07:16
    body_image_cache:
      https://p.vibcx.com/x/2026/09/1788649835-03页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVF2Re6bSA4PjjPYnnsFgZGACBEIAsWNSpV9OugETuKuY4sic23XPTrZLr0po4YHOIygdqfjM5sjJiaGic59lu5npEcAmB6ANxAP8/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788649852-04页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVb4pXJ5Hzia49Wrwhh2p93eCJLsVwXSsD6bdk8zE4dG9wyRZRia4ujdp3RUwnOODpdzHcPFyUTJ4KLEjxYFnAgjChCzXibEheSQA/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788649939-06页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVbM3c1r4HPibbjyn95zmxC31GWx8fnl4s0z9MN6LlHyvRYrzOiaHDUYNcNxwarhYJxfibJhw5yqFPsbKObyeic803NvmNdicddwlvw/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788649949-07页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXfM4wefUFZoAngKyz6N32d8w2dUoOkDfH3JqzoHRI8Fv1iatpIGq4ZOmN56vebVqgpNxDyKibbQicbluZK2NJB2vJbj0SuYZqtMU/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788650008-10页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXgSQib0UVHyQmJXBQru8ADJgNnLia9ibCzEVSHaG5xVTmYHumN5xPejb2IOVg8rxz0IgvVelVvkJjlqwaEpm0Og8Uz5pXIwfLuv4/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788650041-12页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXFFaxQwzZCE2S1BJVQr2qx6xDOHCD68lUG71icViaJTMCicEcXjYNqA5pibhRhGOGEtcdsFy7gJGkRXqAUgd8NDuz3u7bwvTaaG1U/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1788650101-13页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWhaBOYDmjCHBq5RTHU1V5oEdxSaAQPexQAOqc1s3Wp6CEVSoxut2615xo5HFJkSd0WF34ywLibaaRxNcHiaVX5tpT2jOyMHPicaE/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  firstory:
    embed_url: https://open.firstory.me/embed/story/cmtoznysw0m8v01usgi6dcimm
    uploaded_at: 2026-09-06 07:04
  blog_published_at: 2026-09-06 07:17
---
# AI开始承担核心业务，公司会不会被模型厂商卡住？丨ANC再认识外部依赖

依赖会增加，但公司不必因此被一家模型厂商卡住。企业可以向外部购买模型能力，但客户是谁、业务如何进行、怎样才算把服务做好，仍要由公司掌握。

* * *

## 一｜模型变化，开始影响正在进行的业务

设想一家为商业物业提供维修协调服务的公司。写字楼里的租户报修以后，公司需要了解具体情况，安排合适的维修人员，协调进场时间，再跟进问题是否已经解决。业主购买的不是一次简单派单，而是有人把维修持续推进到完成。

![03页.png](https://p.vibcx.com/x/2026/09/1788649835-03页.png)

公司现在让AI承担大部分日常协调。租户说会议室空调漏水，Agency会读取楼宇的进场要求、维修人员的时间和当前工单状态，作出安排。维修人员临时不能到场，它会继续寻找合适的人选，与租户确认新的时间。现场处理以后，它还要根据反馈决定结单，还是继续安排检查和维修。需要专业人员到场完成的工作，仍然由专业人员负责。

维修协调是这家公司赢得业主、获得收入的核心业务。现在，这项业务的大部分日常工作已经由Agency持续推进。这正是我们所说的AI Native Company：

> **AI Native Company，是以AI Agency为主力实现核心价值创造的公司。**

具体到这家公司，Agency负责日常了解变化、安排下一步并检查结果。外部模型提供理解信息和作出判断所需的能力，但业主购买的维修协调仍由这家公司提供，现场维修也仍由专业人员完成。

但模型的重要性确实变了。Agency每天处理大量报修，模型的能力、价格和稳定性就会影响正在等待维修的租户、已经约好的维修人员，以及公司对客户作出的时间承诺。外部模型依赖从技术选择变成了经营问题。

![04页.png](https://p.vibcx.com/x/2026/09/1788649852-04页.png)

以后，公司想降低运行成本，或者有了新的服务要求，准备评估另一家模型时，已经在运行的维修业务还能不能继续？

## 二｜换掉模型，公司还剩下什么

一种情况是，公司不仅使用一家厂商的模型，也直接采用这家厂商提供的配套Agency运行环境。Agency在那里读取信息、安排维修并保存处理过程。它向租户承诺的最新时间、维修人员临时改期后的安排、下一步准备做什么，以及哪些处理结果已经得到确认，都没有完整写回公司的工单系统。

![06页.png](https://p.vibcx.com/x/2026/09/1788649939-06页.png)

准备更换模型厂商时，团队无法让新模型直接接上现有业务：它不知道哪些报修还在等待、为什么这样安排维修人员、客户最后接受了什么时间。团队只能重新梳理Agency接手以后，这些维修是怎样推进的，再决定下一步怎么做。

另一种情况是，Agency通过公司日常使用的工单系统读取和更新业务。系统持续保存租户报修、楼宇要求、维修人员安排和处理结果。Agency每次作出新安排以后，也把进展写回这套系统。即使不再使用原来的模型，公司仍然知道哪一张工单没有完成、已经答应客户什么，以及现场反馈是否满足结单条件。

![07页.png](https://p.vibcx.com/x/2026/09/1788649949-07页.png)

公司还保留了一批经过实际业务确认的维修记录。接入新模型以后，团队可以用这些记录检查：它能否读懂当前状态，能否在维修人员不能到场时继续作出合适安排，又能否把需要业务人员处理的情况及时交出来。

![10页.png](https://p.vibcx.com/x/2026/09/1788650008-10页.png)

更换仍然需要调整连接方式、重新测试，并从明确的业务范围逐步切换。新模型也不会与原模型表现得完全一样，有些业务暂时找不到合适的替代能力。区别在于，公司不必重新询问客户是谁、找回每张工单的进度，再从头定义什么叫维修完成。更换的只是模型，整项维修业务不必重新搭建。

我们之前的文章「企业走向AI原生，真正应该建设的是什么？丨ANC重新理解AI原生建设」讨论过，供应商可以提供Agent产品，却不能替企业决定AI长期承担什么经营职责。进一步说，支撑这项核心业务持续运行的记录、进展和结果，也不能只存在于某一家厂商的运行环境里。

## 三｜用一张正在处理的工单做测试

管理层不需要真的更换模型，便可以看见依赖已经走到了哪里。选一张尚未完成的维修工单，假设公司下个月改用另一家模型，然后沿着这张工单继续往下看。

比如，一位租户已经接受周三上午进场维修，承包商也确认了时间，但工作还没有完成。如果公司不再使用当前厂商的模型和配套环境，还能不能看到这项承诺、楼宇的进场要求和承包商的确认？如果这些信息只能从零散对话里重新寻找，公司便无法沿着这张工单继续安排维修。

![12页.png](https://p.vibcx.com/x/2026/09/1788650041-12页.png)

接下来，把同一张工单交给准备评估的新模型。它需要读取现有状态，在承包商临时改期后继续安排，并把新的时间和处理结果写回公司使用的工单系统。

最后，公司要用过去真实完成的维修记录来检查结果。新模型怎样处理时间冲突，什么时候应该继续安排，什么时候必须交给业务人员，应该与公司已经确认过的业务结果进行比较。公司由此决定新模型可以先接手哪些报修，而不是只根据一次演示就把所有业务切过去。

如果检查时发现客户承诺和维修进展只留在外部环境里，公司就要先把这些内容写回日常使用的工单系统，并留下经过确认的维修记录，供新模型接手前验证。

## ANC视角

> **企业可以购买模型能力，但不能让核心业务只有依靠某一家模型厂商才能继续。客户关系、业务记录和判断结果好坏的标准，应当由企业自己掌握；更换模型时，业务不必从头重建。**

![13页.png](https://p.vibcx.com/x/2026/09/1788650101-13页.png)

AI原生企业可以长期使用外部模型，也不必自己训练基础模型。但公司要负责消化换模型所需的接入和验证，尽量不打断正在进行的维修业务，也不让客户重新说明和确认已有事项。

## 写在最后

模型切换不必追求“无缝”，但不能让业务从头开始。已经作出的客户承诺能够继续履行、正在处理的工单能够继续推进，公司才真正保有更换模型的选择。

* * *

**来源与限制**

1.  英国政府《Artificial Intelligence Playbook for the UK Government》在“Specifying your requirements”中提出，采购AI时应考虑避免供应商锁定、数据要求、系统集成及持续支持。该材料是英国政府采购指导，只支持外部依赖需要被提前考虑的背景，不构成一般企业的强制规则。
2.  NIST《AI RMF Playbook》指出，第三方数据、软件、硬件和AI系统能够提高效率、扩展能力，也会增加复杂性、不透明度与风险，并建议记录、测试和持续监测第三方AI，为重要系统准备相应安排。该Playbook是自愿性风险管理资源，不证明任何模型厂商已经造成锁定。
3.  文中的商业物业维修协调公司、两种业务安排、模型更换与验证过程均为综合设想，不对应真实企业、厂商或现成产品，也不表示一种安排必然更便宜，或任何模型都能替代另一款模型。
4.  企业持续掌握业务记录，不表示企业当然拥有所有数据或知识产权。模型转换所需的改造、性能差异以及相关权利、授权、安全和合规要求，均需结合具体业务、系统和合同确认；本文不提供法律、采购或技术实施建议。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪AI工程系列**」FDE落地工程、ANC：AI Native Company未来公司系列、GEO、AI判断工程。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。