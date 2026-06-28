---
title: 为什么AI Demo越来越容易，真正上线却越来越难？丨FDE重新理解AI交付
date: 2026-06-30
draft: true
coverKeyword: FDE重新理解AI交付
description: AI Demo的成本正在快速下降，但企业AI项目进入生产的比例并没有同步提升——78%有试点，只有14%到生产。本文用FDE视角拆解Demo和生产系统的本质差异，揭示为什么让Demo变容易的那些进步，对真正的交付障碍几乎没有影响。
tldr: |-
  IDC数据显示企业平均启动33个AI PoC，只有4个进入生产；MIT调查显示95%的生成式AI试点交付了零可测量的业务影响。模型在变强，Demo在变容易，但上线成功率没有同步上升，两条曲线在背离。

  Demo和生产是两种性质不同的活动：Demo在精心设计的受控环境里验证可行性，生产在充满不确定性的真实环境里证明可靠性。Demo用干净数据、配合用户、窄化场景，生产面对的是企业真实存在的一切混乱。模型没有变，工作条件变了。

  研究数据显示，卡住项目的前五大原因——系统集成复杂度、输出质量不稳定、监控工具缺失、组织归属不清、数据问题——没有一条是模型能力问题。真正的难点是工程连接：把证明了"可行"的模型，接入企业真实的系统、数据、权限、流程和用户工作界面。

  FDE重新定义交付：不是Demo通过，是系统在真实环境里稳定运行、真实用户在使用、业务指标在移动。从Demo到这个状态，中间的工程距离不会随模型变强而自动缩短，只会随工程能力的建设而缩短。
tags:
  - AI交付
  - FDE落地工程
  - 重新理解
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
  image: /images/cover/AioGeoLab-cover-tgje-165-demo-is-easy-delivery-is-hard.png
  alt: tgje-165-demo-is-easy-delivery-is-hard
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-165-demo-is-easy-delivery-is-hard c n f uv i w b
publish:
  slug: tgje-165-demo-is-easy-delivery-is-hard
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-165-demo-is-easy-delivery-is-hard-AI
      Demo的幻象与生产落地的现实.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-165-demo-is-easy-delivery-is-hard-AI交付的真相.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-165-demo-is-easy-delivery-is-hard-AI落地为何死在Demo后.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-165-demo-is-easy-delivery-is-hard-The
      AI Engineering Blueprint/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782688525-tgje-165-demo-is-easy-delivery-is-hard-AI%E4%BA%A4%E4%BB%98%E7%9A%84%E7%9C%9F%E7%9B%B8_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-165-demo-is-easy-delivery-is-hard-AI交付的真相_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3zluiCSE7erz335CwXhKaaqJ7VyrrVnCSeV_Xt_EOhbU
    video_vid: wxv_4581794182670958593
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWLLD8Q1aylqAPhM0Ghx2ypJ2ibKaKjlLU0rpsd9UHFXr3ibjZXCS3rSSeF1RGXK1Y567nw7QibIctiaYTpcotyWKfEzYFBuic86fGw/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVFyibvjsJAlXrGFEHztNfsesR4iaXOQqyG9qESM2GWeT5LnS39R9x8UVVpNuT44jvAMiaicezgNyn75D81JbTfnaia2Q24W0UsTyww/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao38dFEU9KFur3eooZLuB7waqz3hYysnFGDF2WHLkClorO
    draft_created_at: 2026-06-29 07:29
    video_media_id: lEmH66TSP501Rw-1R2Ao31Kzr79uFmzILNJ4lm6JkrDh33_sJij2H1ZSK9eWiw1G
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782688681-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUHPwBk26nVw4sdGtVfmUGW1pGkeQu7sfnnA9hJib5qmVeOvfBQ6YM5MNcBibdHTEIgLXt2dlzVibruUsk65iblUpf8YylbSp6Xtibo/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782688746-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWibIXETKY81a5LDo5u4iauhRpmvyRSZ06XsXlv8vGnS3QanGJibSHcXsHqDlz8NdDp08Z9z8IyyHaLgW6XTJUYAPGicUD5ibvibC45U/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782689160-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVrUGWt949fg61hiaoQBIJ9vB8BkGh4vk0K1bpLBbugX448DW7fyLnJys89cMAXTNJrARmDG2SG0Xojaa8eLuUYO4UGWnXYSxug/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782688834-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNX4QTjaGYLKFbDNhjKd82PRqB9dQ6gTkA8JbiaCLCLcFZQuRiayqJFmNM6uVwcnGwROj4sl4B5vRFPHVYeF6MWphFzJTRLg4AHfw/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782688873-08%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXibNh9Vg18eMnIgk2nfTxbHZERygobse0NRmcmw7TFSLRfnLMJtKS95ye9vSZGzjZXbvIX4l7Y3pXK5Eq03XhGtgubJoMxykFs/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782688903-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNU5X9XCtevicRsUzdZbrJZia2ZtO5YRYoaj9Wiaib7Y98GHlDdDic3gzZZ9pE0c9wGmcBaYBRr1amPO7flDBbmiaqs1n2EHg3S60IFx4/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782688942-10%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWkQpHkKaQdicib7qxZ6t5h1fluVxvJ33n7luQG5U4iaFP5YSCMte1DV98Tufw9vzZOauth1iaZcNe4vNCcGKvGChnP6ziaY9uz6Ngc/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782689060-11%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNW1mnYskhev7YqY0wh04auia7oflpl9jKO5aaLkXI4fZxHgZnk6sjNtuIYHQyXlzh4icFehkkCcy3Ku9aicOhHII6Tj7wslXxhy8Y/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782689081-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNV0jlUj4RFnamsjAx9qXlHDWvG4xbVOIkibMJv5dAm5FThHvFytEJAM6E9khF9yGurYOUm4n9TjadkxfFK3Tm3UbbHhQ6Jt0mSo/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782689093-13%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUTZpzKWicEpYoBWrCMc3E8Hhk46KUvTvfZcCoJ1Nq0wq5rMbLVbWGF3RCCAPZicQdb8ZqjrvH3QF7lZaoSBVDmC4tA9oxSsyrpU/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782689020-14%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXL96CicXWiaMfVO2KVicffd4HTF3iaPjEN6ibybrTMExDpyZyZApyhg55AV66HsfmdOK5YUDB6A03VkYKj7ibvglorLnNzic5XEhr5uw/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# 为什么AI Demo越来越容易，真正上线却越来越难？丨FDE重新理解AI交付
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1782688525-tgje-165-demo-is-easy-delivery-is-hard-AI%E4%BA%A4%E4%BB%98%E7%9A%84%E7%9C%9F%E7%9B%B8_1280_714.jpg)
<!-- infographic-end -->


做出一个AI Demo，从来没有这么容易过。

调用一个模型API，接上RAG（检索增强生成），搭一个简单的对话界面，一天之内，一个看起来能回答业务问题的原型就能跑起来。放在会议室里演示，效果很好，领导点头，客户感兴趣，项目获批。

然后呢？

IDC的研究给出了一个让人坐不住的数字：企业平均启动33个AI概念验证项目，最终只有4个进入生产。MIT的调查更直接：95%的生成式AI试点项目，交付的业务影响几近于零。

不是零收益，是零影响。做了，跑了，没有留下任何可测量的痕迹。

这件事值得我们好好想一想。模型能力在快速提升，做Demo的成本在快速下降，但企业AI项目真正进入生产的比例，并没有同步上升。2026年3月，一项覆盖650位企业技术负责人的调查显示：78%的企业有AI试点项目在运行，但只有14%真正实现了生产规模部署。

![04页.png](https://p.vibcx.com/x/2026/06/1782688681-04%E9%A1%B5.png)

两条曲线在背离。Demo越来越容易，上线却没有变得更容易。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqyem6oc05ah01x4d06cadqu" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## Demo成功的条件，恰好是生产失败的原因

Demo和生产系统，表面上看是同一件事的两个阶段。实际上是两种性质完全不同的活动。

![05页.png](https://p.vibcx.com/x/2026/06/1782688746-05%E9%A1%B5.png)

**数据。** Demo用的数据，是团队精心挑选过的。知道哪些记录有问题就提前排除，知道模型在哪类输入上表现好就只用那类输入。这个筛选过程是隐形的，做Demo的人甚至不会意识到自己在做选择，因为这是"让演示跑起来"的自然动作。

生产环境跑的是企业真实存在的数据。格式不一致，字段缺失，历史遗留的脏数据，不同系统之间的口径差异。模型没有变，但它面对的数据变了，表现就完全不一样了。

**用户。** Demo阶段的用户，是愿意配合的内部验证者——通常是参与项目的人，对系统有好感，愿意在系统给出奇怪输出的时候多试几次。

生产环境里是真实的业务用户。他们有自己多年形成的工作习惯，对新系统天然持观望态度，系统给出一次让他们尴尬的输出，可能就不愿意再用了。我们之前的文章「FDE陪跑阶段：让用户信任并真正用起来」里拆解过这个信任建立过程——Demo阶段完全不需要面对这个问题，生产阶段它是核心挑战。

**范围。** Demo选的是最有利于展示的场景：问题清晰，答案可验证，边界整洁。生产环境需要处理用户会提出的各种问题，包括模糊的、跨领域的、带有错别字的，以及所有在Demo时没有预想到的边缘情况。

**时间。** Demo跑一次，或者跑几次给人看。生产系统要稳定运行很久，在这段儿时间里模型可能更新，业务流程可能调整，使用量可能突然增加，而系统需要持续输出可靠的结果。

![06页.png](https://p.vibcx.com/x/2026/06/1782689160-06%E9%A1%B5.png)


这四个差异不是程度上的，是性质上的。Demo是在一个为成功设计的环境里验证可行性。生产是在一个为失败准备的环境里证明可靠性。这两件事需要的能力，差异非常大。

* * *

## 被误解的难点

![07页.png](https://p.vibcx.com/x/2026/06/1782688834-07%E9%A1%B5.png)

项目卡在Demo和生产之间，团队通常把原因归到技术问题：模型不够准确、数据质量太差、接口太复杂。

调查数据显示却不是这样。

前述那项650人调查里，研究者列出了22个可能的失败原因，请受访者选出最主要的障碍。五个因素以明显的差距排在前面：遗留系统集成复杂度、批量输出质量不稳定、缺乏监控工具、组织归属不清、领域训练数据不足。

逐条看：遗留系统集成——工程问题，不是模型问题。监控工具缺失——运营问题。组织归属不清——管理问题。没有一条的根因是模型能力不够。

模型已经够好了。卡住的是**工程连接**——把一个证明了"可行"的模型，接入企业真实的系统、数据流、权限体系、业务流程、用户工作界面的那套工程系统。

这里说一个真实的例子帮助理解。摩根士丹利（Morgan Stanley，全球顶级投资银行）很早就开始用GPT-4搭建内部知识库系统，让财富顾问能直接用自然语言查询公司的研究报告和投资指引。Demo效果非常好。但真正让系统在几千名顾问的日常工作中稳定运行，摩根士丹利花了将近一年时间——不是在改进模型，而是在处理文档格式标准化、权限分级管理、输出可信度校验、顾问工作流嵌入这些工程连接问题。这些问题在Demo阶段一个都不存在。

![08页.png](https://p.vibcx.com/x/2026/06/1782688873-08%E9%A1%B5.png)

我们之前的文章「AI时代的集成墙，和过去不一样」里拆解过这道墙的结构：技术接口、合规要求、组织流程、身份权限，四道障碍同时出现。Demo阶段这四道墙都不存在，因为Demo运行在一个沙盒（sandbox，隔离的测试环境）里，和企业的真实系统是隔离的。进入生产的那一刻，四道墙同时出现。

这就是为什么Demo越来越容易，上线却没有变得更容易——因为让Demo变容易的那些进步（更强的模型、更好的框架、更低的API成本），对集成墙这个核心障碍几乎没有影响。

* * *

## FDE重新理解AI交付

![09页.png](https://p.vibcx.com/x/2026/06/1782688903-09%E9%A1%B5.png)


这里需要重新定义"交付"这个词。

大多数团队把交付理解为Demo通过，或者系统上线。FDE视角下，交付只有一个标准：**系统在真实环境里稳定运行，真实用户在使用，业务指标在改善。**

这个标准和"Demo通过"之间，有一段工程距离。填补这段距离的工作，就是Forward Deployed Engineering（前线部署工程，落地工程）。

![10页.png](https://p.vibcx.com/x/2026/06/1782688942-10%E9%A1%B5.png)

具体来说，这段工作包括：

进入现场，重新定义问题。Demo阶段的问题定义来自需求文档，或者来自会议室里的讨论。真实现场里，问题通常不是文档里写的那个。FDE进场的第一件事，是看真实的业务流程在哪里卡住，用户实际在做什么，而不是他们说他们在做什么。我们之前的文章「发现阶段：FDE进场之后的三件事」里说的"问对问题比动手更重要"，就是这个意思。

和用户一起建评测标准。Demo的评测是内部自定义的，FDE建的评测标准要和用户一起定——什么叫"好"，什么叫"可用"，什么样的输出会让用户感到有问题不可接受。这个标准不对，后续所有的验证都是在测试错误的东西。

![11页.png](https://p.vibcx.com/x/2026/06/1782689060-11%E9%A1%B5.png)


处理工程连接。数据管道、系统集成、权限设计、异常处理——这些在Demo阶段全部缺席，在生产阶段全部必要。

![12页.png](https://p.vibcx.com/x/2026/06/1782689081-12%E9%A1%B5.png)


陪跑，建立信任。系统上线不等于用户会用。从技术上线到业务上的真实使用，中间需要有人在现场，观察用户怎么用、哪里卡住、哪里绕过系统——这些信号是优化系统的原材料，也是判断系统是否真正被接受的证据。

设计可观测性。之前的文章「FDE可观测性设计」里讲过，AI系统最危险的失败模式是"沉默失败"——系统在输出错误答案，但没有任何报错，用户和运维团队都不知道。上线之后知道系统在不在工作，是交付能持续的前提。

![13页.png](https://p.vibcx.com/x/2026/06/1782689093-13%E9%A1%B5.png)

这五件事，每一件在Demo阶段都不存在，在生产阶段都是决定成败的环节。

* * *

## 写在最后

Demo越来越容易，是真实的进步。它让团队能更快地验证方向，更低成本地探索可能性，这是好事。

但它同时制造了一个认知幻觉：Demo成功了，说明这条路走得通，上线只是时间问题。

![14页.png](https://p.vibcx.com/x/2026/06/1782689020-14%E9%A1%B5.png)


FDE视角看到的是另一件事：Demo成功的那一刻，真正的工程工作才刚刚开始。从Demo到交付，中间有一段工程距离——不是模型问题，是连接问题。这段距离不会随着模型变强而自动缩短，只会随着工程能力的建设而缩短。

这也是为什么，当Demo成本趋近于零，真正稀缺的能力不是做出Demo，而是把Demo变成交付。

下一期：为什么Agent越来越聪明，却越来越难进入企业？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
