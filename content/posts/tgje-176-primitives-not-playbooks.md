---
title: 为什么真正的AI能力，都长在项目之外？丨FDE重新理解产品反哺
date: 2026-07-11
draft: true
coverKeyword: 项目不会天然产生资产
description: FDE落地工程第二季第十二篇。企业做了越来越多AI项目，为什么下一个项目的起点，并没有比上一个更高？这篇文章拆解一个被长期忽视的判断：项目结束后自然留下的是记录，不是能力，真正的能力需要经过模式识别和原语编码两层主动加工才会出现。以Palantir从定制项目到Foundry、再到2026年AI FDE的完整演化路径为案例，讲清楚产品反哺到底反哺的是什么。
tldr: |-
  企业平均已经在多个场景跑通AI应用，但"做过很多项目"和"第一次做"之间，起点没有本质差别——问题不在项目本身，在于经验没有被真正沉淀。

  行业默认假设是"项目结束，经验自然沉淀"，但复盘文档记录的只是"发生过什么"，这是历史，不是能力；能力问的是下一次遇到同样问题，要不要重新判断一遍。

  真正的沉淀要经过两层加工：先从单个项目的事实里识别出跨项目反复出现的模式，再把有把握的模式编码成系统里可以直接复用的原语——Palantir从定制化的Gotham项目，到把反复出现的问题编码进Foundry的本体与权限系统，再到2026年把FDE自身的判断产品化成AI FDE，完整走完了这条路。

  项目不会天然产生资产，只会天然产生消耗；一家公司真正的竞争力，不是做过多少项目，是有没有一套持续把现场判断变成产品原语的机制。
tags:
  - 产品反哺
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
  image: /images/cover/AioGeoLab-cover-tgje-176-primitives-not-playbooks.png
  alt: tgje-176-primitives-not-playbooks
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-176-primitives-not-playbooks c n f uv i w b
publish:
  slug: tgje-176-primitives-not-playbooks
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-176-primitives-not-playbooks-真正的AI能力，都长在项目之外.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-176-primitives-not-playbooks-企业AI能力进化路径.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-176-primitives-not-playbooks-AI能力长在项目之外.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-176-primitives-not-playbooks-Architecting
      AI Primitives/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1783636843-tgje-176-primitives-not-playbooks-%E4%BC%81%E4%B8%9AAI%E8%83%BD%E5%8A%9B%E8%BF%9B%E5%8C%96%E8%B7%AF%E5%BE%84_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-176-primitives-not-playbooks-企业AI能力进化路径_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3yoZHSZqPZE71EjqwLC1IQNCFWVHPl3UEIvJ_IonNTM9
    video_vid: wxv_4597704351577014274
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWnplWLYSl29lreIAba1gbKzaibTdEkRVNKWalCsB2e1Dl0ZJa0hVI0Hpibrxa0hDOXVIqk4Bql4xib112W3sRH9JT086fcBVkC9I/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXzficOUQ2PLrF8FS7IcRDvZOORVcQibYdFl2tKFUKeAdcoia3ibBJMibMD3zsxwWvGicJ3icnY7GQaTUkfIdD5nFeoL52Mu4Znbm13PU/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao33aOFq10LUb1k7nKW6c0-yQ1g2g7UMbo2p2nleK8s3d8
    draft_created_at: 2026-07-10 06:50
    video_media_id: lEmH66TSP501Rw-1R2Ao3_y-_6EiML3pnhpwGuAUeuhY0ZI22c4z8osAXtte5xCn
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1783636923-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNX5E2LxEq8NntPic55nvib7sBr6ibclbR0nq3EjYZ5mp79yRKiaiadwt83lkujDHDv2vpciaGOBKS8VHulzQdljS0urzqcDibKK2zD3Z0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783636965-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNX2NXp7yZZscic0XVbCLx6SIMaFEbJNLuDGdlfn1ia0TcNnuaPXV7t6S3U1SQCxHn4VRCWyDvGyic0mOGu1atsqK2shLDW9lROFaM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637003-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUhJ0s0WJQaD2lg5XvD5WicZftyAxWrc2z2bqnO1k6c98d9ty5VnUCfXicXMibsibDO7xj6OkrDfnP6Lsa7AvAHPgDbQRq2yopGHls/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637062-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNX17hUaWbpxJHMkOqs6jRZ04axQbALreyHm3TDpStWesSTibFXItT6wxnQrjJrRQRiaW1U68CMZRdcbIm7lnj3Micg4D53iadCyiauk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637078-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXkpKbsCVNmY7thRN96A3Kyj10wctKheOXuPkJTX2TapSiaF7uoOYTqvc7CqevJqIqVZLINKiaAGgsMZ7ZbDR7IsMh8ePMAfpWqk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637089-07%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXXibymVibonnF9gccaR5c4UauibbwL9UhMplIcqUSK9uqybeSNT0p94csEobmciavuc7cOrruLgW7B1mSiakuqZywOCrDVnh4b1Hs4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637155-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNW6yWyYSAu6Q5IszxcZ9tMiaicHZGTOmZLr6vLFCFe5rXpiboJfrjrMXvdz9wiaeLS6gNXTWfwGf5IiaQkfoINwSicWHxibgNQ6qGX18E/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637185-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXu4W6PFN6Fk8eIydoVxuGWZaeGjOnwEqO1QHFicYmSmfs0Vz02tYeztyiaSibInx1NbVwFbJH37cY1F9rD35r9tgaQ3AG9aTXibpk/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637195-10%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXYkH0HIbiaXH8NoI8mO3ENmzGITTEUcKE6sqibwXSGhmQ29mcNPW4qpRzrkAEDiaCxOhaehxDQT9R2BiaXeMj5eyve2RtAymb7Ozo/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637217-11%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVWpDUGqyoBkPZlz71lukLahxt5KxOe6AjQfLcSQa5M2HDDNURxxhJYcsxcjL55MjrYh9uy1hIWERfw1WRxRxBHzYvA8kXtgA0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637244-12%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUUwicSMSHqiaxpFPRdYYuhGw1Dnpwic69wmP2SILEEWNnwS1iaxA3LeWqSNrJ9xdqZtpfvDUs75TQiaGBo7ibxIOsQ9RiayC6VPic3hbs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783637281-13%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXB0HcJPt7gbONlOQG8XylB4SmMyFsTWibaHladjkWU51kMqfRmJvqFEiaVY2w6sj4LnyLNXEDLFA8Eu1AX8dNznHLgpdxibicMRgc/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-10 06:50
---
# 为什么真正的AI能力，都长在项目之外？丨FDE重新理解产品反哺

联想和IDC今年发布的一份调研显示，国内企业平均已经在3.5个场景里跑通了智能体应用，2026年计划扩展到6.7个。数字很扎实，进度也不算慢。

![02页.png](https://p.vibcx.com/x/2026/07/1783636923-02%E9%A1%B5.png)


但如果去问一个更具体的问题——你们做的第七个AI项目，是不是比第一个更容易？大多数负责人会不太确定。

不是因为项目失败了。是因为即便都成功了，第七个项目重新经历的那些卡点——权限怎么控制、异常谁来处理、幻觉的边界如何界定——和第一个几乎一模一样。项目数量在涨，能力起点却没有跟着长。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmre393b70c3q01uo52mmatyc" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 复盘文档越攒越多，为什么下一次还是从头再来

这不是因为企业不重视沉淀。恰恰相反，大部分做过AI项目的企业都有一套标准动作：项目结束，组织复盘会，输出复盘文档，归档进知识库，有条件的甚至专门养一个"最佳实践"团队去整理案例。

![03页.png](https://p.vibcx.com/x/2026/07/1783636965-03%E9%A1%B5.png)


这套动作背后，是一个几乎没人怀疑过的默认判断：项目做完了，经验自然会沉淀下来，下一次会更快。

问题是，复盘文档写了一年又一年，为什么下一个项目立项时，需求细化、权限设计、裁定节点这些事，团队还是要从头一件件重新想清楚？


![04页.png](https://p.vibcx.com/x/2026/07/1783637003-04%E9%A1%B5.png)


答案不是文档写得不认真，是文档这个东西本身，从一开始就装不下真正值钱的那部分。

**项目天然产生的是消耗，不是资产。留下来的是记录，记录不是能力。**

复盘文档记录的是"发生过什么"——用了什么模型、遇到了什么问题、最后怎么解决的。这是有价值的，但它只是历史。能力问的是另一个问题：下一次遇到结构相似的情况，团队要不要重新判断一遍？如果答案是"要"，那这份文档再厚，团队手里握着的还是记录，不是能力。

* * *

## 从记录到能力，中间隔着两层

真正决定一个组织"越做越强"还是"原地打转"的，是它有没有走完记录之后的两步。

![05页.png](https://p.vibcx.com/x/2026/07/1783637062-05%E9%A1%B5.png)

### 模式：哪些问题在不同项目里反复出现

第一步不难理解，却常被跳过：把单个项目里"发生的事"，和跨项目里"重复出现的事"分开看。

![06页.png](https://p.vibcx.com/x/2026/07/1783637078-06%E9%A1%B5.png)

单个项目里，"这次客户对幻觉容忍度特别低"是一件事实。但如果十个项目里有六个都出现"业务方对幻觉容忍度被低估"这个问题，它就不再是个案，是模式——一个会在不同客户、不同场景下反复出现的结构性问题。

多数团队复盘时只停在事实层面："这次是因为客户是金融行业，风险偏好高。"没有人退后一步，把六个项目摆在一起问一句："我们是不是每次都低估了业务方的幻觉容忍度？"模式识别需要主动做跨项目的比对，它不会在写第十份复盘文档的时候自动跳出来。

### 原语：把模式变成系统里能直接复用的能力

第二步更难，也是大多数组织真正卡住的地方：把识别出来的模式，编码成产品或系统里一个可以被直接调用的组件——这里借用"原语"（primitive，工程里指最基础、可复用的操作单元）这个说法。

![07页.png](https://p.vibcx.com/x/2026/07/1783637089-07%E9%A1%B5.png)


差别在于：**"下次注意幻觉容忍度"是一句提醒，留在某个人的脑子里或者一页PPT里；"系统上线前自动生成幻觉容忍度评估清单，强制走一遍裁定接口"，是一个原语，它被焊进了流程本身，不需要有人记得提醒。**

![08页.png](https://p.vibcx.com/x/2026/07/1783637155-08%E9%A1%B5.png)

模式停留在人的记忆和文档里，原语固化进产品和系统里。前者会随人员流动而流失，后者不会——这也是为什么多数企业做了很多项目，依然像第一次做：他们的沉淀大部分停在"记录"这一层，少部分够到"模式"，几乎没有走到"原语"。

* * *

## 一套原语库，是怎么从项目堆里长出来的

这套"记录—模式—原语"的路径，不是抽象的理论模型。Palantir自己的历史几乎是一份现成的样本——"前线部署工程师"（Forward Deployed Engineer）这个说法，最早就是源于这家公司。

### 从定制项目，到本体、权限、工作流

2003年，Palantir在硅谷成立，早期融资困难，最终靠美国中央情报局风投部门In-Q-Tel在2005年的投资获得了第一个真正的客户。2005年到2008年，CIA是Palantir唯一的客户，一边试用一边评估这套软件。这一阶段的项目高度定制，每一单几乎都要从头理解客户的数据结构和业务逻辑。

![09页.png](https://p.vibcx.com/x/2026/07/1783637185-09%E9%A1%B5.png)

真正的转折不是某次项目做得特别漂亮，而是工程师们开始注意到：不同客户身上反复出现同样的结构性问题——权限怎么分层、数据从哪来要怎么追溯、审批节点该卡在哪。面对这些反复出现的模式，Palantir没有选择一遍遍重新解决，而是把它们直接编码成了平台原语：本体（ontology，业务实体和关系的结构化模型）、对象模型、权限系统、工作流引擎、溯源追踪。这些原语后来支撑起了2016年发布的Foundry，把同样的方法延伸到了商业企业客户——尽管企业客户的数据混乱程度和情报机构完全不一样。

这中间还有一个容易被忽略的机制设计：在Palantir内部，一线工程师的现场反馈长期是产品团队最主要的输入渠道。这不是靠某个特别有心的人主动总结，是公司把"现场判断路由回产品"设计成了固定动作——这才是原语能持续被制造出来的原因。

### 原语反哺自身：AI FDE的出现

到了2026年，这条链条又往前走了一步。Palantir把"AI FDE"做成了产品本身——一个能用自然语言操作Foundry的智能体，帮用户完成数据转换、代码仓库管理、本体维护这些原本需要工程师现场完成的操作。

![10页.png](https://p.vibcx.com/x/2026/07/1783637195-10%E9%A1%B5.png)


换句话说，无数个FDE项目里积累下来的判断——什么时候该做什么操作、遇到什么情况该怎么处理——本身又被提炼成了原语，装进了一个产品功能里。项目反哺产品，这一次产品反哺的对象，是"FDE怎么做判断"这件事本身。

### 这套逻辑不是AI独有的，但AI项目更容易在这里翻车

这条路径完整覆盖了三层：定制项目留下记录，跨客户反复出现的问题被识别成模式，模式被编码进本体、权限、工作流这些原语。这套方法，一路支撑到Palantir从2020年直接上市到如今的规模。这不是靠拿到了更多项目，是靠每一个项目留下的东西，质量比上一个更高一级。

这套逻辑本身不是AI独有的——咨询公司把项目经验做成方法论工具，设计公司把客户项目沉淀成设计体系，是同一个模式的不同版本。

![11页.png](https://p.vibcx.com/x/2026/07/1783637217-11%E9%A1%B5.png)


AI项目里更容易出问题的地方在于：**留下来的经验大多是判断类的**——什么时候该拦截、幻觉的边界画在哪、异常升级给谁——这类判断天然不写在代码diff里。项目结束、人一走，**它比传统软件项目的经验更容易彻底消失**，也更容易被误当成"这次运气不好"，而不是被识别成一个模式。

* * *

## FDE重新理解产品反哺

行业默认的假设是，项目结束，经验自然沉淀，下一次自然更快。FDE看到的不是这样：**项目本身不生产资产，只生产消耗；能真正留下来的，是被识别出来的模式，和被编码进产品的原语，其余的都会随时间和人员流动蒸发。**

这也是为什么"产品反哺"不能被简化成知识管理——建一个案例库、请一个人专职整理文档，解决的都只是"记录"这一层的问题。真正的反哺工作，是持续做两件更难的事：把散落在项目里的判断挑出来，看它是不是重复出现的模式；再把有把握的模式，一次次搬进产品和流程里，变成下次不需要重新判断的原语。

![12页.png](https://p.vibcx.com/x/2026/07/1783637244-12%E9%A1%B5.png)


FDE存在的价值，从来不只是把眼前这个项目做成——那只是记录层面的成功。真正的价值，是每做完一个项目，公司在交接完成的时候，比接手项目时更聪明一点。

* * *

## 写在最后

项目会不断产生判断，但判断能不能变成组织带得走的能力，从来不取决于项目本身做得好不好，取决于有没有人、有没有机制，把模式从记录里挑出来，把原语从模式里造出来。这才是产品反哺真正在做的事——不是攒经验，是造能力。

![13页.png](https://p.vibcx.com/x/2026/07/1783637281-13%E9%A1%B5.png)


当一家公司不再指望靠某几个项目刚好留下几个好用的原语，而是把"造原语"这件事本身，变成一套持续运转的能力——这时候，这家公司需要的只是几个厉害的FDE，还是需要一整套属于自己的工程体系？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。