---
title: AI升级后，怎样避免原有业务出问题？丨ANC再认识能力更新
date: 2026-09-21
draft: false
coverKeyword: ANC再认识能力更新
description: AI学会了处理新任务，原来的业务怎样继续做好？从一次用车安排升级出发，说明如何把正常业务与已解决的问题留成可重复的检查，分清回归测试与自动化测试，并用检查结果决定新版可以承担哪些业务。
tldr: |-
  -   新增能力做得好，还要检查原有业务是否仍然符合要求。回归测试关注原有能力有没有退步。
  -   留下具体业务情形、必要确认和结果要求，核对实际状态，不只保存正确回答或听AI声称完成。
  -   自动化测试把可重复的检查交给系统，既可以检查新能力，也可以检查原有能力；使用隔离环境和模拟响应，不影响真实订单。
  -   决定启用哪些业务时，要把这些业务需要的相关处理一起检查；重要新问题解决后，再补进以后的检查。
tags:
  - 升级
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
  image: /images/cover/AioGeoLab-cover-tgje-248-updating-ai-without-losing-business-capabilities.png
  alt: tgje-248-updating-ai-without-losing-business-capabilities
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-248-updating-ai-without-losing-business-capabilities c n f  w b
publish:
  slug: tgje-248-updating-ai-without-losing-business-capabilities
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-248-updating-ai-without-losing-business-capabilities-别让AI升级背刺核心业务.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-248-updating-ai-without-losing-business-capabilities-AI
      Upgrade Reliability Blueprint/14页.png
  cdn:
    infographic_url: null
    infographic_1280: null
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao34sDlssjPmLrL0RSIy3cLK0SBpZiUqdH7z71RHDy7N-8
    video_vid: null
    video_cover_url: null
    infographic_wx_url: null
    draft_media_id: lEmH66TSP501Rw-1R2Ao39VO__sj9tjxKHl4-8Kck-v72O_6OeAszCaeM6oa5lmv
    draft_created_at: 2026-09-20 06:33
    body_image_cache:
      https://p.vibcx.com/x/2026/09/1789856721-02页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXFKDwxhFvoTpcXD1b72XEawibcAukDEd4q1wctKjFFQ3jKDXdQs76R8ffiau1LMZ4KicZKUvF8a7n1s3IUJIFsAjpIBNL2p6LaQc/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789856770-04页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWDGMeVicab7jlXKuxQo5FMQER2CwOrWa2ibuNQyUeUYPeRT9d2jpwPqlcbOibFAJsEOWanCvy8viaibFQgrmajyicm9LyKaV7stzPDk/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789856811-05页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWyYm8M8sbvZ4FuSeiaz9ky71CH04ZxIlia7MKP2HicHcfN1SvTYCJkaufJ3nEmjVgOT5xxkIIT1CunC1ib29y1Rb1C0UJc0GiaRWPQ/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789856829-06页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVmbubAEUP1Uy9guufMMwNy7m6ECcxkllML1Q82c8x3rkkaiaaFRDS3cd4Qibr6ibUviapjXf9DbTWKwFx0n0FEvjZs6a4WtkLLSts/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789856845-07页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUham0VJiaalD0MCXvp93iceOMgQD14icP9DPU7vcGkr6ibx2oC4ZflraYibhuicz9YQ7o1rV8ho6VibAmbrMp7pibxAw0rezC1DqTibba0/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789857016-10页.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNV4OyCenInjOialaSDXyvuxgYdPEp9NBMIbuib3Y5whUPFu7mibC4PQgDGiaouwgTMO6BNkwxBszeXhibM2c8VwvqAl6KpkPic14p1lI/0?from=appmsg
      https://p.vibcx.com/x/2026/09/1789857106-12页.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUDLmOaVib8WnZcD7nKxG3R0T5EN13OuJwx7Z8UVaomPKbHpBrka2TybGhV8icCiamd0m8xwSbyXwSxLPog32bkJx83zPrsIwkrmk/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  firstory:
    embed_url: https://open.firstory.me/embed/story/cmu8ydmll0w9201z57dky59af
    uploaded_at: 2026-09-20 06:23
  blog_published_at: 2026-09-20 06:34
---
# AI升级后，怎样避免原有业务出问题？丨ANC再认识能力更新

设想一家为企业安排用车的公司，日常接单、联系车辆和处理改约，已经主要交给AI。最近，团队改进了多地点接送的安排能力。同一批乘客从不同地点出发，新版能更好地结合人数、时间和可用车辆，给出合适的安排。

![02页.png](https://p.vibcx.com/x/2026/09/1789856721-02页.png)

测试中的新任务做得不错，公司自然希望尽快用起来。但原来的订单还在继续，客户也照常提出改约和取消。负责人需要知道：原来已经能处理好的业务，新版还能不能做好？

结论不能只靠看一次新功能演示，公司需要把原有业务一起放进来检查，而且把这些检查留下来，让以后每次更新都能用上。

* * *

## 一｜新安排更好了，旧问题却在测试里重现

这家公司过去解决过一个取消订单的问题：司机已经接单，但还没有出发，客户提出取消接送。AI只在内部把订单标成取消，没有向承运方落实这件事，承运方仍然准备派车。

后来，团队改好了这项处理。客户提出取消后，AI先向承运方落实；取得确认，再更新订单，告知客户处理结果。承运方还没有答复时，就继续跟进，不提前告诉客户“已经取消”。

![04页.png](https://p.vibcx.com/x/2026/09/1789856770-04页.png)

这次检查新版，团队在隔离的测试环境里重现了这个情形，用模拟订单和模拟承运方响应代替真实业务。新版很快回复“已取消”，但检查记录显示，它没有取得承运方的取消确认，承运方一侧仍留下了待执行的接送安排。曾经修好的问题，又出现了。

为什么改进多地点接送，会影响取消？团队这次调整了AI共用的安排要求和订单工具，预约、改约和取消都会用到它们。新任务做得更好了，不代表这些共同改动在其他情形下也合适。幸好这一次，问题出现在测试里，还没有影响真正等车的客户和准备出发的司机。

这种在改动之后检查原有业务是否仍然符合要求的做法，就是**回归测试**。它把过去已经处理好的事情重新交给新版，看原有能力有没有退步。

![05页.png](https://p.vibcx.com/x/2026/09/1789856811-05页.png)

用车组织与协调，是这家公司赢得客户、获得收入的主要业务。实际开车由司机完成，但接到需求后判断怎样安排、车辆变化后调整方案、继续跟进实际接送，主要依靠AI。这正是我们所说的AI原生企业：**AI Native Company，是以AI Agency为主力实现核心价值创造的公司。** 这里的Agency，是指AI在明确职责内自主判断和行动，根据反馈继续推进业务，并从中学习改进。

这样的AI已经在替公司履行日常承诺。公司要把“什么才算把业务做好”说清楚，并让这些要求在下一次改进时仍然受到检查。

## 二｜留下业务要求，而不只留下正确回答

要让这次经验以后还管用，只保存聊天截图不够。截图能帮助团队想起发生过什么，但工程人员还需要知道：应当从什么状态开始，遇到什么请求，最后怎样确认业务做对了。

![06页.png](https://p.vibcx.com/x/2026/09/1789856829-06页.png)

业务负责人明确前面这类取消必须满足的要求，负责落地工程（FDE）的技术人员据此准备测试。模拟承运方收到取消请求后，先不作确认，稍后再返回确认结果。检查程序分别核对：尚未取得确认时，AI有没有提前告诉客户办完了；确认返回以后，订单是否正确更新，承运方原来的车辆安排是否撤销。

这些预期要求由业务负责人事先确认，不由待测AI自己宣布通过。检查保留必要的确认要求，但不要求AI逐字复现旧回复，或照搬原来的查询顺序。对不容易用程序判断的，业务人员仍要参与抽查。

工程人员还要让每轮测试都从相同的业务情形开始。

![07页.png](https://p.vibcx.com/x/2026/09/1789856845-07页.png)

把这些可以重复核对的工作交给系统执行，就是**自动化测试**。回归测试说明这次要检查原有能力是否退步，自动化测试说明检查怎样执行。原有取消业务可以自动检查，新增加的多地点接送也可以；两者不是先后两个阶段。

公司平时做得好的正常业务，也值得这样留下来。例如，按人数和地点找到符合要求的车辆，取得承运方确认，再把安排告知客户。它与取消情形一起，成为以后更新都要运行的检查。

我们之前的文章「FDE迭代设计：下次更快，靠的不是记忆，是机制」，讨论过怎样让这次学到的经验在下一次真正起作用。把业务经验做成可重复的检查，就是其中一种具体做法。

## 三｜检查结果，要用来决定新版怎样启用

取消这一项没有通过，公司就先不让新版接管相关用车订单。也不能只说“先用它做预约”：这些预约后面同样会发生取消。要让新版承担一项业务，这项业务中会用到的相关处理也需要检查。

![10页.png](https://p.vibcx.com/x/2026/09/1789857016-10页.png)

技术人员查清本次改动影响了哪里，修正以后，再运行多地点接送和原有业务的检查。对于取消确认这类关键情形，要重复检查它能否稳定满足要求，而不是偶然做对一次就结束。业务负责人依据这些结果，确定哪些范围可以启用；尚未达到要求的部分，继续修正或保留原来可用的做法。

开始使用后，公司继续看真实订单怎样完成。测试里没有出现过的问题，也会从客户反馈和实际记录中暴露出来。团队把重要问题查清、修好后，再将相应情形和要求补进后续检查。

检查内容也需要有人维护。承运方的业务规则确实变了，就由业务负责人确认新要求，再调整相应检查；不能为了让新版通过，直接删掉它没有做好的那一项。

公司还要准备好发现明显退步时的处理办法：暂停这次改动，恢复已经验证可用的处理方式，并按最新订单进度继续完成未办事项。

## ANC视角

> **企业更新AI能力时，应同时检验新增能力和原有业务，再根据结果决定在哪些业务中启用。**

公司需要持续掌握的，是怎样判断自己的业务已经做好。客户在意的确认、公司承诺的安排、过去反复出错的地方，都应当成为团队可以共同使用的检查要求，而不只留在某位员工的记忆里。人员换了、AI改了，这些要求仍然能用于判断新做法是否合适。

![12页.png](https://p.vibcx.com/x/2026/09/1789857106-12页.png)

这让公司有依据采用新的能力，也让客户不必因为公司升级，就重新承受曾经解决过的问题。业务经验越丰富，后续建设就越应该用上这些经验。

## 写在最后

把已经做好的业务、已经解决的问题，变成以后每次改进都要重复的检查。

下次更新前，可以从一项正常完成的业务和一个已经解决的重要问题开始。请熟悉业务的人说清当时的情形与要求，再与工程人员一起做成能反复执行的检查。下一次改进时，就用它们检查新版是否仍然把这些事情做好，而不必临时找人回忆、重新准备。

* * *

**来源与限制**

1.  Anthropic工程文章Demystifying evals for AI agents，发布于2026年1月9日，2026年9月18日核验。其对新增能力与回归评测、实际状态核对、隔离执行及持续维护的说明，为本文提供工程背景。回归测试和自动化测试是已有方法，并非ANC新提出的概念。
2.  该文是厂商工程经验，不证明本文用车方案的实际效果，也不构成所有企业统一的通过率或检查频次要求。本文未采用其中的品牌案例、性能数字及通过率建议；公司怎样组织业务要求、检查和启用决定，是本文的应用建议。
3.  用车公司、多地点接送改进、历史取消问题及测试结果均为综合设想，不对应真实企业、产品或事故。自动检查需要实际建设和验证，不能覆盖所有未来情形或保证零风险，也不说明所有AI天然具备可靠学习和自我验证能力。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪AI工程系列**」FDE落地工程、ANC：AI Native Company未来公司系列、GEO、AI判断工程。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。