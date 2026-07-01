---
title: 为什么Agent越来越聪明，却越来越难进入企业？丨FDE重新理解Agent工程
date: 2026-07-01
draft: false
coverKeyword: 三位一体的责任机制
description: FDE落地工程系列。79%的企业声称采用了AI Agent，只有11%真正在生产环境运行。Agent进不了企业，不是因为不够聪明，而是因为企业无法回答"出错了谁负责"。本文用FDE视角拆解Agent工程的本质：不是让Agent更聪明，是为Agent建立权限、裁定、审计三位一体的责任机制。
tldr: |-
  Chatbot输出语言，Agent输出结果。这个差异从根本上改变了企业接受它的条件——Agent采取行动，操作已经执行，结果已经发生，责任边界就不清楚了。79%企业声称采用Agent，只有11%真正在生产环境运行，差距不是能力造成的。

  Agent进不了企业，是因为IT、法务、业务、合规四个部门的问题都指向同一件事：出错了谁负责？谁能做什么？什么情况下人必须介入？决策过程能不能还原？这些问题没有答案，没有人敢批准上线。81%团队过了规划阶段，只有14.4%拿到安全审批，卡住的就是这套责任机制。

  FDE重新定义Agent工程：不是让Agent更聪明，是建立责任机制。机制有三个维度——谁能做（权限设计，划定责任边界）、谁来决定（裁定设计，标出人必须介入的节点）、谁能还原（审计设计，让决策链路可追溯）。三个维度合在一起，才构成企业能够真正接受Agent的基础。

  企业最终部署的，从来不是一个足够聪明的Agent，而是一套足够可问责的机制。模型变强，解决不了责任归属。能力可以外购，责任机制只能自己建。
tags:
  - 责任机制
  - FDE落地工程
  - 重新理解
  - Agent
  - 判断工程
  - 智能体
  - 生成式引擎
  - AI
  - FDE
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
  image: /images/cover/AioGeoLab-cover-tgje-166-agent-intelligence-isnt-the-barrier-accountability-is.png
  alt: tgje-166-agent-intelligence-isnt-the-barrier-accountability-is
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-166-agent-intelligence-isnt-the-barrier-accountability-is c n f uv i w b
publish:
  slug: tgje-166-agent-intelligence-isnt-the-barrier-accountability-is
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-智能体大揭秘：企业应用中的智能与问责悖论.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-企业AI智能体落地责任机制.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-谁来给AI
      Agent背锅.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-Agent
      Responsibility Engineering/12页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782774337-tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-%E4%BC%81%E4%B8%9AAI%E6%99%BA%E8%83%BD%E4%BD%93%E8%90%BD%E5%9C%B0%E8%B4%A3%E4%BB%BB%E6%9C%BA%E5%88%B6_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-企业AI智能体落地责任机制_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3wki9hv3yjBdKmq59bn9LuZD-n5txKPz2mvWmCY6NVZo
    video_vid: wxv_4583233982493802497
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVyic82tBUgaG301F8UX3ngFavsibwfT6clCoCjGYT0FKgTtjPgP9Ne4smWw0wMvSQnibqEO2tEKEo21BAr8PdiasAOYicvmsUWPiaAM/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNUKjxknU3kDH0gbIicnuXrliaiaBn6ULRVTkVZlw0n8LHHBnwTQH7v5TgmNFksqx2chiaib8TM9UYEFyRnIo2bS8I2JLzMLxwuiccoqU/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao38RkLTmunEbWGQ4RLFI9fS0-pf9BSj7pyjmxhujmHsRq
    draft_created_at: 2026-06-30 07:31
    video_media_id: lEmH66TSP501Rw-1R2Ao378VQG9ZgJE-9V_LumMYBxmZYwBWlonbCEWtwG3RAaxG
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782775023-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXyayF4zjMndW5mcmP3MgQL2XUAdlGHnfAcfhBicfibTo4JBUrozDqWIicQDRx9DbluXGC1bRLoSjb1AtD0Y9CDdKcmHGDABC19vQ/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775113-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVTJ0oPkKIwC3qTQLFDh1JH8X0mHIunYMWVfrniaoUFvt9mH6iaSyibJX1rEh0iaicJbhO11cHrg7WqbfUA65yTdc0Tm5jzwx5xOUxA/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775155-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVzPgKd2SicbTUfzoxRmEgNM40J4FibEKOzojQPvlibHfKqpmfqPg5bwOMFBcgF2bQPTRt3ichNslv2NYhIPjxibdgfmHDDgYXFuTvk/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775211-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXSSWMFGQFsFRvQ4XjcBDGYiaV6Bnic8CibZ4pY7dHzWLJatdz2ficGjI1yYtLJ5bDjfqe0ZnXBJu9mkSTUIicke3Qra8HEiaiaH4uGHQ/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775268-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWiadanPztQladYKhsicekRCSVR3KBwsCviaduyQQEyX2ibNZj5dq0pmIa0Ct3cIVF9UIDRCoPFEywBBNjZUCSNySHC3Lk4ALvd7Dg/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775276-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXectAhUHMUR5nFkU44H2nATXDiaJ4cicOQl7d42M8kZiaphcxF27WOtKmLlEssIPqdMNRQEyIhRFWqWN4VblQKeJoOUw73mvV7LY/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775285-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWLQaD8WcENCmnVNT5Johjb3jATEKYtTBLhusYLgGZ5VdnWmtd9XwXQKjibkmb9rXCGIAvxm2PRIQx4eMod45vjdAedsQQ7tpak/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775355-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUEfwjBsEWNmusg5TkY2qLiag7jpFTqBf9gj9CmTtQYhxRCIGuvxGGer26iakAhB9M3fHoFNY90JxhKb7WyfXl4S1XQkQbsAMa8Y/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782775405-11%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXrJj2OKDM7SpJ7YyicjEE8jJqARWZJl72JIeYbq2OD7cwvKWOMWHOnibCB7SCSMAShlafU7A6UCmNr58L7IBUMZnEl3eFkGNtPY/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-06-30 07:31
---
# 为什么Agent越来越聪明，却越来越难进入企业？丨FDE重新理解Agent工程
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1782774337-tgje-166-agent-intelligence-isnt-the-barrier-accountability-is-%E4%BC%81%E4%B8%9AAI%E6%99%BA%E8%83%BD%E4%BD%93%E8%90%BD%E5%9C%B0%E8%B4%A3%E4%BB%BB%E6%9C%BA%E5%88%B6_1280_714.jpg)
<!-- infographic-end -->


做一个能对话的AI助手，和让一个AI Agent真正在企业里工作，是两件性质完全不同的事。

这个区别，大多数人在看到Agent演示的时候不会意识到。演示很流畅：Agent接收指令，调用工具，返回结果，一气呵成。看起来和用一个更聪明的聊天机器人Chatbot没什么两样。

但它不是聊天机器人。

**Chatbot输出语言。Agent输出结果。**

![03页.png](https://p.vibcx.com/x/2026/06/1782775023-03%E9%A1%B5.png)


Chatbot回答"这份合同有什么风险"，人看完自己决定怎么办。Agent直接把有风险的条款标出来、起草修改意见、发给对方律师——它不是在给建议，它在采取行动。这个差异，从根本上改变了企业接受它的条件。

2026年的数据显示：79%的企业说已经采用了AI Agent，但只有11%真正在生产环境中运行。这个差距，比AI Demo和生产部署之间的差距还要大。

模型能力在快速提升，Agent的评测分数在快速上升，但进入企业的比例没有跟上来。

不是Agent不够聪明。是企业还没有准备好回答一个更根本的问题。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqztm01900ei01u6fg292wp0" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## Agent带来的，是一个新的责任问题

普通AI工具出错，影响的是建议的质量。人看了之后自己判断要不要采纳，最终的行动和结果，责任在人。

Agent出错，操作已经执行，结果已经发生。发出去的邮件收不回来，提交的表单已经入库，触发的工作流已经在跑。这个时候，责任在谁？

这不是一个技术问题，是一个企业从来没有面对过的设计问题。传统软件也会出错，但传统软件的行为是确定的——同样的输入，给出稳定的输出，出错了可以找到代码里的具体原因。Agent的行为是概率性的，它在做判断，它的判断会受上下文影响，同样的任务在不同情况下可能走不同的路径。

这让责任归属变得模糊。写提示词的人负责？批准上线的人负责？使用Agent的业务员负责？还是提供模型的厂商负责？

企业不是不想用Agent，是在这个问题没有答案之前，没有人敢批准上线。

* * *

## 为什么组织会说No

![04页.png](https://p.vibcx.com/x/2026/06/1782775113-04%E9%A1%B5.png)


81%的团队已经过了规划阶段，但只有14.4%获得了完整的安全审批。这不是技术卡住的，是审批卡住的。

用一个具体场景帮助理解：某制造企业想上线一个采购审批Agent。它能读取供应商数据库、自动比价、起草合同初稿，能力上完全够用，内部演示也通过了。然后进入上线审批流程。

IT部门问：它需要访问哪些系统？权限怎么配置？如果它访问了不该访问的数据怎么办？

法务部门问：它起草的合同出了问题，谁来签字负责？

业务负责人问：它在什么情况下可以自己决定，什么情况下必须等我审批？如果它批了一个有问题的供应商，我要承担后果吗？

合规部门问：监管机构来查的时候，它做的每一个决策能还原吗？有没有审计记录？

这四个部门问的，没有一个是"Agent够不够聪明"。全部是责任问题。Agent无法投入生产环境，不是因为能力不够，是因为没有人能回答这些问题。

Gartner预测，超过40%的Agent项目可能在2027年前被取消，原因是价值不清晰、成本上升、治理薄弱。治理薄弱，说的就是这套责任机制没有建立起来。

* * *

## FDE重新理解Agent工程

![05页.png](https://p.vibcx.com/x/2026/06/1782775155-05%E9%A1%B5.png)


这里需要先建立一个判断。

企业真正接受Agent，不是需要Agent不犯错。而是要：**Agent犯错之后，组织仍然能够运行，责任仍然能够归位。**

这个判断，从根本上改变了"Agent工程"的定义。Agent工程不是让Agent变得更聪明，是为Agent设计一套责任机制。

![06页.png](https://p.vibcx.com/x/2026/06/1782775211-06%E9%A1%B5.png)



责任机制有三个维度，每一个都在回答一个具体的问题：

**谁能做——权限设计。**

![07页.png](https://p.vibcx.com/x/2026/06/1782775268-07%E9%A1%B5.png)

Agent需要访问什么系统，能执行什么操作，边界在哪里。答案不是技术配置，是一个需要业务、法务、IT共同参与的设计决策。最小授权原则在这里不是安全建议，是责任边界的物理标记：Agent权限覆盖的范围，就是它能承担责任的范围，超出这个范围的事，责任不在它。

给Agent太多权限，风险不可控；给太少，Agent什么都做不了。这个边界要划在哪里，是Agent工程里最需要业务判断的一步，技术团队单独做不了这个决定。之前的文章「AI时代的集成墙，和过去不一样」里拆解过身份权限这道墙——Agent让这个问题从"难但可以绕过"变成了"必须正面解决才能上线"。

**谁来决定——裁定设计。**

![08页.png](https://p.vibcx.com/x/2026/06/1782775276-08%E9%A1%B5.png)

Agent执行过程中，哪些节点必须有人介入，用什么方式介入，介入的结果怎么记录。这不是审批流程，是风险边界的设计。

之前的文章「裁定接口设计：不是审批流程，是风险边界」里给出了触发裁定的四个标准：操作不可逆、代价过高、受监管约束、影响范围过大。这四个标准在Agent场景下同样适用，而且变得更加关键——因为Agent的执行速度比人快，如果没有在正确的节点设计裁定接口，人根本来不及介入。

**谁能还原——审计设计。**

![09页.png](https://p.vibcx.com/x/2026/06/1782775285-09%E9%A1%B5.png)

Agent执行了一系列操作之后，决策链路要能够还原：它收到了什么输入，做出了什么判断，调用了哪些工具，最终执行了什么操作。这份记录不是为了监控Agent，是为了在出问题的时候能够明确责任，也是为了应对外部监管。EU AI Act（欧盟《人工智能法案》）对高风险AI系统的审计追踪要求将于2026年8月正式生效，这让审计设计从"最佳实践"变成了法律要求。

![10页.png](https://p.vibcx.com/x/2026/06/1782775355-10%E9%A1%B5.png)

三个维度合在一起，构成一个完整的责任机制。有了这套机制，IT部门、法务、业务负责人、合规部门的问题都有了答案。Agent才能真正通过审批，进入生产。


* * *

## 写在最后

![11页.png](https://p.vibcx.com/x/2026/06/1782775405-11%E9%A1%B5.png)

Agent的能力天花板在快速上升，这是真实的。但进入企业的门槛，从来不是能力门槛。

它是责任门槛。

模型变强，解决不了责任归属。权限边界更精细、裁定接口设计更合理、审计追踪更完整，才能解决。

企业最终部署的，从来不是一个足够聪明的Agent，而是一套足够可问责的机制。Agent只是这套机制的执行者。

下一期的问题是：就算责任机制设计好了，为什么同样的Agent，在不同的企业里效果差异还是巨大？是什么决定了一个AI系统真正能在现场工作？


* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
