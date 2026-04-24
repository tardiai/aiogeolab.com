---
title: 垂直Agent：为什么通用AI越强，你的机会反而越大
date: 2026-04-24
draft: false
coverKeyword: 垂直Agent的护城河
description: 本文探讨垂直Agent原生创业的护城河逻辑：为什么通用AI越强，垂直Agent的机会反而越清晰。以Harvey法律AI为核心案例，拆解垂直Agent真正的竞争壁垒——数据、工作流、信任三层——并说明为什么护城河不在模型，而在行业深度。适合正在评估Agent创业机会、或关注AI行业格局变化的读者。
tldr: |-
  通用AI越来越强，但这不是垂直Agent的威胁，恰恰是它的机会——因为两者根本不在同一个战场上竞争。

  垂直Agent的核心壁垒从来不是"模型更懂某个行业"。Harvey在自研法律模型被通用前沿模型超越之后，直接放弃了它，转而调用OpenAI和Anthropic的模型——但营收和估值继续涨。护城河在数据、工作流、信任这三层，模型是工具，这三层才是资产。

  当底层模型成为基础设施、人人都能调用，竞争焦点就从"谁的模型更强"转移到"谁在某个行业里建得更深"。大厂没有动力去深挖某个垂直角落，这反而给了专注者最清晰的生存空间。

  真正的问题不是"我的模型够不够强"，而是"我在这个行业里能不能建起那三层壁垒"。前者人人可以买，后者只有你能建。
tags:
  - 垂直Agent
  - Agent原生创业
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
  image: /images/cover/AioGeoLab-cover-tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage.png
  alt: tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage c i w b
publish:
  slug: tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage
  status: wx_draft_created
  paths:
    cover_img: null
    video: null
    infographic: null
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/04/1776915296-infographic-tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/infographic-tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao35icgDgrvn8PCAzvAW3SDpmBAQxzN8YO_0XommEUE4Oh
    video_vid: wxv_4484928590186299394
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXia0WdcP3gmm2aattNAQKn823aZ99TGN9K7e8lVBSzJIQ7No6YPro28q6b06kuW0siavSF5GDia6icC9uiaNbfrzzxcI7Wp636REyY/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXVloYApibSmticENYK0ghs1QHZwySzoxGbiamBxJu3A3LpygV7IGAKaD3VNLTGt30eSogVlYQJdSX6r34TMJ220650DwDn8AO6oI/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao38DXWuyuHICnFk-oKEi1M8P5HpM46ylYhMtDyOrpOs4z
    draft_created_at: 2026-04-23 11:35
    video_media_id: lEmH66TSP501Rw-1R2Ao34mpp7vV0C6tCL31Ww_l_2dAtqDdcb8TQ1ysmShNPPxk
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-04-23 11:35
---
# 垂直Agent：为什么通用AI越强，你的机会反而越大
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/04/1776915296-infographic-tgje-98-vertical-agent-moat-the-deeper-not-smarter-advantage_1280_714.jpg)
<!-- infographic-end -->


有一个问题，我听到越来越多人在问：

大模型越来越强，ChatGPT能通过司法考试，Claude能写完整的代码工程——这种情况下，还有必要专门做某一个行业的垂直Agent吗？大厂随便出一个通用版本，不就把垂直赛道给覆盖了？

这个担忧听起来合理，但方向是反的。

越来越多的证据表明：通用AI越强，垂直Agent的机会反而越清晰。不是因为垂直Agent比通用更聪明，而是因为它赢的地方，跟模型能力根本不在同一个战场。

---
<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmoax5kz310o001vq2vnme4of" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->
* * *

## 通用Agent的天花板不在智力

先把一个问题想清楚：通用AI到底在哪里卡住了？

不是能力。ChatGPT早就能通过美国律师资格考试，论"法律知识量"，它比大多数律师都宽。但没有一家大型律所敢让它独立处理一笔十亿美元的并购交易。

卡住的地方是**信任**。

在高风险行业里，"够聪明"只是入场券，不是护城河。一份医疗诊断、一份并购合同、一次监管合规审查——这些场景的核心需求不是"AI能不能给出答案"，而是"如果AI给错了，谁来负责、怎么追溯、有没有可审计的依据"。

通用Agent给你一个答案，但答案从哪里来？推理过程在哪里？出错之后谁负责？这些问题，通用Agent天然答不了。它设计出来就是为了服务所有人，所以没有办法为任何一个行业深度背书。

这就是垂直Agent存在的底层逻辑：不是因为它更聪明，而是因为它**更可被信任**。

* * *

## 护城河不在模型，这是很多人没想清楚的地方

说到垂直Agent，很多人的第一反应是：做一个专属的行业模型，用行业数据把它训练得更懂这个领域。

这个思路本身没错，但它不是护城河。

Harvey是目前垂直Agent里跑得最快的案例之一——做法律AI，三年做到接近两亿美元年营收，被认为是法律科技史上增速最快的公司之一。

但有一件事很多人不知道：Harvey最终放弃了自己研发的专属法律模型，因为OpenAI、Anthropic、Google等通用前沿模型在Harvey自己设计的法律评测基准上，已经超过了Harvey的专属模型。

换句话说，Harvey用行业数据训练的专属模型，打不过通用大厂迭代半年之后的版本。

但Harvey没有垮。它现在的估值是110亿美元。

为什么？

因为Harvey真正的护城河从来不在模型。它放弃自研模型之后，直接切换成调用OpenAI、Anthropic、Google的通用模型——模型换了，业务反而继续涨。这说明它的壁垒长在别的地方。

具体是三层：

**第一层：领域数据与独家合作。** Harvey和LexisNexis达成战略合作，把几十年积累的案例库、法条引用、司法判决直接整合进工作流。在这笔合作完成后，Harvey成为第一个可以完整接入美国两大顶级法律数据库之一的生成式AI平台。这不是花钱买算力能复制的东西——它需要行业关系、合规资质、和常年的信任积累。

**第二层：用户沉淀的工作流。** Harvey平台上已经有超过两万五千个用户自建的定制工作流。这些工作流是律所的律师在真实工作中一点点搭出来的，里面编码的是每家律所的操作习惯、审查标准、风险偏好。这是行为数据，不是知识数据——它不能从公开渠道爬取，换一个平台就要从零重建。迁移成本极高。

**第三层：行业信任背书。** Harvey现在服务的是美国百大律所里超过一半的机构。这个市场地位本身就是信任资产。一个新进入者，哪怕模型更好，也很难在短时间内获得这个级别的机构客户愿意把核心法律工作交给它跑。

三层加在一起：数据、工作流、信任。这才是垂直Agent真正的护城河，和模型能力的关系，比大多数人想象的要小得多。

* * *

## 为什么通用越强，垂直反而更安全

这里有一个反直觉的机制，值得单独讲清楚。

当大模型能力还在快速分化的时候，"我的模型比你更懂法律"是一个真实的竞争优势。但当前沿模型的能力逐渐趋同、并且持续变强的时候，这个优势就消失了——但同时，竞争的焦点也发生了转移。

从"谁的模型更强"转移到了"谁在这个行业里更深"。

可以用一个比喻来理解这个机制：云计算普及之前，自建服务器是一种竞争优势——谁的机房更好、谁的运维更稳，谁就领先。但云计算普及之后，算力变成了基础设施，人人都能用，竞争的焦点完全转移到了"你在云上跑什么"。没有人因为"我们用了AWS"而赢，赢的是那些把行业流程用云原生的方式重写了一遍的公司。

垂直Agent正在经历类似的转变。通用大模型越强，它越快成为基础设施——人人都能调用。真正的竞争，变成了"谁在某个行业里把数据、工作流、信任这三层建得更厚"。

大厂在这场竞争里有天然的短板：它们需要横向扩张，服务所有人，没有动力去深挖某一个垂直行业的角落数据和流程细节。医疗记录的合规处理方式、建筑工程投标的文件结构、特定国家监管报告的格式要求——这些"又专又烦"的领域知识，大厂不会投入资源去搞透，但垂直Agent可以把整个团队all in在这里。

这就是为什么"大厂出手，垂直死"的逻辑在现实里很难成立。大厂出手之后，通常是把基础能力的门槛抬高了——这件事确实会淘汰掉那些只靠套壳通用模型的垂直产品。但对那些真正把行业数据、工作流、信任建深了的垂直Agent来说，大厂的底层模型变得更强，只是让它们调用的工具更好用了而已。

* * *

## 什么样的赛道护城河能建起来

这篇不展开讲具体赛道选择，但有三个判断维度可以先放在这里，作为认知框架：

**错误成本高不高。** 错误成本越高，信任溢价越大，垂直Agent的护城河就越厚。医疗、法律、金融、合规——这些行业的共同特点是，出一次错误的代价可能比省下来的成本高一个量级。这种环境里，用户愿意为"更可被信任"付出显著的溢价，也更愿意深度绑定一个他们已经信任的平台。

**有没有独特的数据沉淀机会。** 垂直赛道的数据壁垒，来自两个地方：一是行业里天然存在的私有数据（不能公开爬取的案例库、病历、内部流程文档），二是用户在平台上沉淀的行为数据（工作流、操作习惯、反馈标注）。两者都有，护城河最厚；只有其中一个，也值得认真评估。

**工作流够不够复杂。** 太简单的任务，大厂直接在通用产品里集成一个功能就覆盖了，垂直产品没有生存空间。复杂度高、步骤多、涉及多方协作的工作流，才有足够的空间让垂直Agent把自己嵌进去，变成不可替代的核心环节。

* * *

## 写在最后

Agent原生创业，最常见的焦虑有两种：一种是"我做得不够快，大厂已经出手了"，另一种是"我的模型不够强，打不过通用AI"。

这两种焦虑有一个共同的误判：把竞争的主战场放在了模型能力上。

Harvey的案例说明了另一个可能性：最终决定垂直Agent能不能活下去的，不是它用了哪个模型，而是它在某个行业里把数据、工作流、信任建到了多深。前者人人可以买，后者只有你能建。

通用AI越强，这个区别就越清晰。

---
> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。