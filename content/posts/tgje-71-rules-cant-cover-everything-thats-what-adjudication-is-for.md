---
title: 一个AI公司CEO，被自己的龙虾上了一课
date: 2026-03-27
draft: true
coverKeyword: 规则和裁定的本质区别
description: 智谱CEO张鹏亲身踩坑：给龙虾设安全边界，发现用自然语言把规则讲清楚这件事难得多。他感叹阿西莫夫三定律三句话就做到了逻辑完备。但阿西莫夫自己知道，这三条定律在他的每一个故事里都失败了——因为自然语言写的规则本身有模糊性内核。这篇文章从这个细节切入，讲清楚规则和裁定的本质区别。
tldr: |-
  智谱CEO张鹏给飞书机器人设安全边界，发现用自然语言把规则讲清楚极其困难，感叹阿西莫夫三定律三句话就做到了逻辑完备。这个感叹准确，但还差一层——阿西莫夫本人也知道三定律是有问题的，他在每一个故事里都亲手把它打破。

  自然语言规则有一个无法消除的模糊性内核：同一句话在不同情境下可以被读出完全不同的含义。"不泄露敏感信息"里的"敏感"是什么？谁的定义算数？在什么情境下算泄露？规则本身给不了确定的答案。

  面对这个困境的本能反应是写更多规则，但情况是无限的，规则之间的冲突会随着条数增多而指数级增长。阿西莫夫的机器人围着矿场转圈，正是规则系统内在张力的寓言，不是关于机器人的故事。

  真正需要的不是更多规则，而是一个清晰的裁定设计——明确哪些情况下判断必须停下来等待人介入。规则负责覆盖已知情况，裁定层负责处理规则边界之外的那一刻。阿西莫夫在第二定律里藏了裁定逻辑的雏形，但差一步没有写出来：当机器人无法判断是否触发了例外时，谁来说了算？
tags:
  - 裁定
  - 规则
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
  image: /images/cover/AioGeoLab-cover-tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for.png
  alt: tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for c i w b
publish:
  slug: tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/03/1774323607-infographic-tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao38uP2_-x27SjT95Ekdt2_wn057W1asLZtG29ZuYNcs-U
    video_vid: wxv_4441439846099861505
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNV6GIibR7h4qRkl6pbwloUPiaucLH1xoCicdJic0hTzJG5sd3LoyCOfq2BFIia5QynicB6o6p3VnPhgQSLqkV5JjItazRLE9ubnIIGAA/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXDgxpeDs20RCsM2IAef6NSzOn4mFkUOZ8CUg3rTxOoIt7WvpGO5Q13T3PFbg87KlnpGCIkj6ibbZgekDDcUYzrxlVUGxF4JmGM/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao35AZ9Oc4DyfdyCv8RdpxjJA3r5Ub1pELBkPM6qfYXJfQ
    draft_created_at: 2026-03-24 11:45
    video_media_id: lEmH66TSP501Rw-1R2Ao3wbuSOOrc_Z2RTSzsAWBcVmLS-GGo7LC3g3h_zmEgdl6
  wx_article:
    digest: null
    original: false
    comment: true
---
# 一个AI公司CEO，被自己的龙虾上了一课
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/03/1774323607-infographic-tgje-71-rules-cant-cover-everything-thats-what-adjudication-is-for_1280_714.jpg)
<!-- infographic-end -->

智谱CEO张鹏最近分享了一个细节，让我觉得比他讲的那些大趋势更有意思。

他给飞书里的龙虾机器人设安全边界。他发现，只要有人在群里艾特它，它就会回答——包括他跟它私聊过的所有内容。于是他决定告诉它：什么场景能说什么，不能说什么。

"听起来简单，"他说，"其实特别复杂。"

他是智谱的CEO，做AI行业超过六年，带队做过AutoGLM，主导研发了GLM系列模型。他比绝大多数人都更懂AI能干什么、不能干什么。

然后他发现，**用自然语言把"规则"讲清楚，这件事比他想象的难得多。**

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmn41veuo010w01z30lqj9dzq" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<br>
<!-- audiovideo-end -->

* * *

## 三句话，80年前就写好了

张鹏在讲完这个困境之后，提到了阿西莫夫三定律。

第一定律：机器人不得伤害人类个体，或者因不作为致使人类个体受到伤害。 第二定律：机器人必须服从人给予它的命令，当该命令与第一定律冲突时例外。 第三定律：机器人必须保护自身存在，只要这种保护不与第一或第二定律相抵触。

他的感叹是：三句话，非常简短精准，逻辑上又极其完备。这真的是很难的一件事。

我理解他的感叹。你试试自己写三条规则，覆盖"什么情况下机器人能说什么、不能说什么、谁的指令算数、谁的指令不算数"——你会发现写到第十条的时候还有漏洞，写到第二十条的时候开始自相矛盾。

但我想在他的感叹后面，再加一句他没说出来的话：

**阿西莫夫自己也知道这三条定律是有问题的。**

* * *

## 三定律的真相：它们生来就是为了失败

这不是我的判断，是阿西莫夫本人设计进去的。

在阿西莫夫的每一个故事里，机器人三定律都失败了。他故意模棱两可地创造了这三条定律，目的是为了制造困境，让角色和读者都面临道德困境。三定律不是解决方案，是一个用来产生故事张力的装置。

而且这个失败有一个更根本的原因。三定律是用英语写成的，英语是一种自然语言，本质上是模棱两可的，可以有多种解释。将机器人三定律编码成精确的、机器可读的指令是不切实际的。

换句话说：**用自然语言写规则，这件事本身就有一个无法消除的模糊性内核。**

张鹏踩到的那个坑，不是他表达能力不够好，不是他逻辑不够严密。而是自然语言作为规则载体，有一个结构性的局限——它的意义依赖于上下文、依赖于解释者、依赖于语境。同样一句话，在不同的情境里可以被读出完全不同的含义。

你告诉机器人"不要泄露敏感信息"，"敏感"是什么？谁的定义算数？在什么情境下算泄露？对方是你的同事还是外部人员？这些问题，自然语言规则本身给不了确定的答案。

* * *

## 真正的问题，不是"写得够不够好"

大多数人面对这个困境的第一反应是：那就写得更仔细一点，把每种情况都覆盖到。

这个方向没有错，但它会遇到一堵墙。

情况是无限的。你写了"不回答关于竞争对手的问题"，但"顺便提一下"算不算回答？你写了"不透露内部决策"，但已经对外公开过的内部决策算不算内部决策？边界条件的数量会随着你覆盖的情况增多而指数级增长，而每一条新规则又可能和已有的规则产生新的冲突。

阿西莫夫在小说中也探讨了这个问题：一个机器人进入危险地带会伤害自己违反第三定律，不进入又违背人类指令违反第二定律，处于矛盾中的机器人只能围着矿场不停转圈。这不是一个关于机器人的故事，这是一个关于规则系统内在张力的寓言。

张鹏说，这个经历让他体会到"读这么多年书、做了这么多年的逻辑训练，终于在这用上了"。

他说对了一半。逻辑训练很重要，但逻辑训练解决的是"把规则写得更严密"的问题。而他真正遇到的，是一个更深一层的问题：**当规则不可能穷举所有情况的时候，谁来做那个剩余情况的判断？**

这就是裁定层存在的原因。

* * *

## 规则覆盖不到的地方，需要的是裁定

判断工程里有一个三层结构：推理层、判断层、裁定层。

推理层是AI生成路径的地方，判断层是从路径里选一条往下走的地方，裁定层是决定"判断流是否被允许继续"的地方——是否继续、是否停止、是否需要人介入。

张鹏写的那些规则，是在试图用"判断层规范"来解决"裁定层问题"。他告诉机器人怎么做，但没有告诉机器人：当你不确定这条规则适不适用当前情况的时候，你该怎么办？

这个"当你不确定"的时刻，正是裁定层发挥作用的地方。

一个设计良好的裁定层不会试图穷举所有规则，而是会明确：**哪些情况下判断必须停下来等待人的介入**。不可逆的操作、责任归属不明确的情况、超出既有规则范围的输入——这些是裁定层的触发条件，不是判断层规则的扩充对象。

用一个更直觉的说法：与其告诉机器人一千条"这种情况你该怎么做"，不如先告诉它："当你发现自己在一种你没有足够把握的情况里，你应该停下来问我。"

* * *

## 阿西莫夫差点写对了

回头看三定律，它其实在第二定律里藏了一个裁定逻辑的雏形：机器人必须服从人类的命令，**当该命令与第一定律冲突时例外**。

这个"例外"是一个条件判断——当某种特定情况触发，执行规则被暂停，另一个更高优先级的规则介入。这已经非常接近裁定层的概念了：在满足某个条件时，正常的执行流被中断，由更高层级的逻辑接管。

他差一步没有写出来的是：当机器人无法判断当前情况是否触发了那个"例外"的时候，谁来做最终的裁定？

在他的小说里，这个问题制造了故事。在我们今天的Agent系统里，这个问题制造的是真实的风险。

* * *

## 写在最后

张鹏最后感慨：通过设安全边界这件事，他觉得自己成长了。

我觉得他的成长点比他说的更深一层：他不只是发现了"把规则写清楚需要逻辑能力"，他发现了**规则本身是有边界的，规则边界之外需要一套不同的东西**。

那套不同的东西，不是更多的规则。是一个清晰的裁定设计——什么时候机器人应该停下来，而不是继续按规则走。

阿西莫夫用三句话构建了一个让无数故事得以发生的框架，然后在每个故事里亲手把它打破。他大概知道，真正重要的问题从来不是规则本身，而是规则失效的那一刻，谁来说了算。

* * *

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
