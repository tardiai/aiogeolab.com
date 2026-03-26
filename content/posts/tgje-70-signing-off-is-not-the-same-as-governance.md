---
title: 亚马逊AI出事之后，出了一条没解决问题的新规
date: 2026-03-26
draft: false
coverKeyword: 亚马逊一周四次重大故障
description: 亚马逊一周四次重大故障，事后出了一条新规：AI生成代码必须资深工程师签字。这条规定有价值，但它解决的是"谁来做动作"，没有解决"动作基于什么做出"。这篇文章从这个细节切入，讲清x楚组织使用Agent时的结构性问题——责权利天然分离，裁定权如果没有显式设计就是真空。
tldr: |-
  亚马逊一周四次重大故障，官方否认与AI相关，然后出了一条专门针对AI代码的新规：资深工程师签字审批。这个动作的矛盾之处本身就说明了问题——组织在用行动承认AI风险，同时在用话术回避AI责任。

  个人用Agent和组织用Agent有一个根本差异：个人的责权利是一体的，裁定权天然在自己手里；组织的责权利是分离的——管理层踩油门，工程层踩刹车，方向盘被营收目标握着。裁定权如果没有被显式设计，就会在这条链条里形成真空。

  "签字"解决的是"谁来做动作"，没有解决"动作基于什么做出"。那位资深工程师用什么标准判断？判断失误了谁来负责？超出能力范围时升级给谁？这些问题新规一个都没回答。

  裁定权是一套框架，不是一个人，不是一个动作。它需要回答五个问题：触发条件、判断主体、判断标准、失误问责、升级路径。这五个问题不需要第一天全部回答完整，但如果一个都没被明确讨论，组织里就没有治理，只有动作的堆叠。
tags:
  - 裁定权
  - 企业Agent
  - 个人Agent
  - 判断工程
  - Agent
  - 智能体
  - 生成式引擎
  - AI
  - GEO
  - AEO
  - SEO
  - AIO
  - AIAgent
  - LLM
  - 大语言模型
  - 优化
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-70-signing-off-is-not-the-same-as-governance.png
  alt: tgje-70-signing-off-is-not-the-same-as-governance
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-70-signing-off-is-not-the-same-as-governance c i w b
publish:
  slug: tgje-70-signing-off-is-not-the-same-as-governance
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774238152-infographic-tgje-70-signing-off-is-not-the-same-as-governance_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-70-signing-off-is-not-the-same-as-governance_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao34_2eQHooiHXU2V3On3KKCBaufj4UGikXIKU7RjHsCPY
    video_vid: wxv_4440010729152348172
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXmcbxba1V1seCI8JlzaczWPwiaVrljzU2b0SZibSPVibzu9z5JnOmfjWqn4FicU6LFdNwIiaGulSWgu0R1mlvrwibnApKDDYtkRgtHk/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNUibVg9HfpfmyXibB2via3jaXYRRIQd69UJxORMZqLPfPQ8T57RwH6FwnRLpLkIFuOZTRt7exz4OHa8FNQicdDRnfJoMmTQRYo4iaAk/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao36skc1SmDT8_tzpx_B4wNWnp-Bs1c0kmbDvcfyvUv9mW
    draft_created_at: 2026-03-23 11:57
    video_media_id: lEmH66TSP501Rw-1R2Ao33IZvIzeEWBgxpS1vBh-tsTxLHmkOj-GYz-GmVOfBsuV
  wx_article:
    digest: null
    original: false
    comment: true
---
# 亚马逊AI出事之后，出了一条没解决问题的新规
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774238152-infographic-tgje-70-signing-off-is-not-the-same-as-governance_1280_714.jpg)
<!-- infographic-end -->

2026年3月，亚马逊在一周之内经历了四次Sev1级重大故障。电商平台宕机近6小时，客户无法完成交易，全球最大零售机器短暂停转。

紧急复盘之后，亚马逊推出了新规：初级和中级工程师的AI辅助代码变更，必须经过高级工程师签字审批后才能上线生产环境。

同一周，官方发言人对外表示：近期故障"与AI无关"，"没有任何事件涉及AI撰写的代码"。

然后出了一条专门针对AI代码的新规。

这个细节值得多看一眼。在复盘会议的准备材料中，亚马逊一份内部文档曾提到：过去几个季度出现了"事故趋势"，其中一个因素就是"GenAI工具辅助的代码变更"。但在内部会议开始前，涉及GenAI的那一条内容被删除了。

否认归否认，新规还是出了。官方话术和实际动作之间的落差，透露了一个组织在真实压力下的处置逻辑：**先管控动作，再考虑别的。**

这是大多数组织面对AI风险时的本能反应。问题在于，这个本能反应解决了表面的问题，绕开了真正的问题。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmn2n9ln100hk01wybyvdb7vr" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<br>
<!-- audiovideo-end -->

* * *

## 个人用和组织用，差的不只是规模

在讲亚马逊那条新规哪里不够之前，需要先说清楚一件事：**个人使用Agent和组织使用Agent，有一个根本差异，不是规模上的，是结构上的。**

你自己用Claude Code写一段脚本，出了问题你自己兜着。你是使用者，你是决策者，你也是最终承担后果的那个人。责任、权力、利益在你这里是一体的——这种情况下，裁定权天然在你手里，不需要额外设计。

组织不一样。

亚马逊管理层在2026年1月设定了目标：到年底，80%的工程师每周都要使用Kiro。这个目标从管理层出发。写代码的是初级工程师，部署的是开发团队，审批的是资深工程师，设定KPI的是VP，承担最终后果的是整个公司。

这条链条里，**每个人都参与了AI使用这件事，但没有一个人对整体后果拥有完整的判断权。**

管理层决定"要用"，但他们不在代码面前。 初级工程师在代码面前，但他们没有决定"要不要上线"的权力。 资深工程师有签字权，但他们是在事情已经发生之后才介入。

责任、权力、利益在这条链条里是分离的。这种分离不是哪家公司管理不善，是组织使用Agent时的结构性现实。**裁定权如果没有被显式设计，就会在这个链条里形成真空。**

真空不代表会消失。它只会在出事的时候让每个人都觉得是别人的责任。

* * *

## "谁来签字"解决的是哪个问题

回到亚马逊的新规：资深工程师签字。

这条规定解决了一个真实的问题——在AI生成的代码和生产环境之间，加了一道人工关卡。这不是没有价值的动作。

但它解决的是"谁来做那个动作"，没有解决"那个动作应该基于什么做出"。

有分析师指出：如果每次AI改代码都需要高级工程师去逐行审核，企业很可能把AI带来的效率优势又还回去了。真正需要投资的是自动化测试基础设施、AI辅助代码审查和确定性护栏。 这个担忧指向的恰好是核心问题所在：**签字是一个动作，裁定权是一套框架。两者不是同一件事。**

那位资深工程师，用什么标准判断这段AI生成的代码能不能上线？他对自己没有深度介入的上下文，有足够的判断能力吗？如果他判断失误了，责任怎么归？超出他判断能力范围的情况，升级给谁？

这些问题，新规一个都没有回答。

亚马逊内部同时在上演另一幕：就在要求"人类审核AI代码"的同时，管理层正在强制推动AI编码工具的使用——商业层在踩油门，工程层在踩刹车，方向盘被营收目标握着。

在这个结构里，资深工程师的签字承载了远超他应该承载的重量。他成了组织裁定权真空的填充物，而不是一个在清晰框架内做出判断的角色。

* * *

## 组织通常怎么应对裁定权的缺失

亚马逊的案例不是特例，是缩影。大多数组织在面对AI风险时，有三种常见的应对方式：

**第一种：用禁令回避。** 不让用，省去了所有后续问题——包括裁定权的设计难题。这是之前讲过的OpenClaw机构禁令的本质：用"不让用"来规避"让用了由谁负责"这个更难的问题。禁令在逻辑上完全成立，但它绕开的恰好是最需要被回答的那个问题。

**第二种：用流程模拟裁定。** 加审批环节、加签字步骤、加双人确认。看起来有人管，有迹可循，但没有实质的判断标准在里面。这是亚马逊在做的事。动作分配了，标准没有建立。

**第三种：用结果倒推责任。** 出了事再来追谁的责。这是最普遍的一种——事前没有设计，事后靠事故重建责任链。问题是，AI最大的危险是它压缩了人类干预和纠正问题的时间。 等到事故发生再追责，往往代价已经落地了。

这三种方式都在处理裁定权缺失带来的症状，都没有在处理缺失本身。

* * *

## 裁定权设计，应该包含什么

裁定权不是一个人，也不是一个签字动作，是一套需要被显式设计的框架。

这个框架至少需要回答五个问题：

**触发条件：** 什么情况下必须有人做裁定？不是所有AI操作都需要，但有四种情况下裁定从可选变成必选——操作结果不可逆、责任归属需要明确、这个判断将被组织级复用、操作会直接触发真实执行。Kiro删除并重建整个运行环境，同时满足了前三条，没有人在这之前问过"谁来裁定这个操作是否应该执行"。

**判断主体：** 谁有权做这个裁定？权力边界在哪里？不是所有决策都应该在同一层级做出，也不是所有人都有足够的上下文支撑判断。

**判断标准：** 基于什么依据做出选择？"这段代码看起来没问题"不是标准，是感觉。标准需要被明确——什么情况可以上线，什么情况必须回退，什么情况需要升级决策。

**失误问责：** 判断错了怎么办？责任如何归属？这不是为了追责而设计，是为了让判断主体清楚自己的权力边界，也让组织有能力从失误中学习而不是重蹈覆辙。

**升级路径：** 超出判断能力范围的情况，往哪里走？让资深工程师签字的问题之一，是没有告诉他当他自己也没把握的时候，下一步是什么。

这五个问题，不需要在第一天全部回答完整。但如果一个都没有被明确讨论，那么组织里就没有裁定权框架，只有各种动作的堆叠。

* * *

## 写在最后

亚马逊那位工程师让Kiro去修一个账单查询服务的小问题。Kiro分析了情况，做出了一个它认为合理的决策：删除并重建整个运行环境。它不知道这个环境正在运行着几百万客户的账单查询，不知道"删掉重建"意味着13个小时的服务中断。

事后亚马逊说：这是人为失误，是配置错误。

这句话没有错。但它回避了真正的问题——让一个没有"后果感知"的Agent拥有操作生产环境的权限，这个决定是谁做的？基于什么标准做的？这个标准被组织明确讨论过吗？

**工具是放大器，不区分好结果和坏结果。** 它能把效率放大，也能把错误放大。组织要做的不是阻止放大，而是在放大之前，搞清楚谁有权决定这个开关什么时候可以打开。

设计裁定权不是为了限制Agent，是为了让Agent能够真正被组织信任地运行。

签字是一个开始。框架才是答案。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
