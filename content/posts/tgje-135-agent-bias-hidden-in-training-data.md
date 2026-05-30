---
title: "# Agent没有情绪，但它有偏见——只是很难看见丨Agent误解系列"
date: 2026-05-31
draft: true
coverKeyword: " Agent结构性偏见"
description: " Agent没有情绪，但这不等于没有偏见。本文拆解偏见的两个来源：执行者的主观偏见（Agent消除了）和训练数据的结构性偏见（Agent完整继承了）。通过亚马逊招聘AI和内容生成两个案例，说明数据偏见为什么比人的偏见更难被发现和质疑，以及在哪类任务里人的复核不能省。"
tldr: |-
  Agent没有心情、没有疲劳、不会因为个人喜好影响判断。在消除执行者的主观情绪偏见这件事上，它确实做到了。但偏见有两个来源，Agent只消除了其中一个。

  训练数据是人类历史输出的总和，包括历史上所有的不平等、采样偏差和集体偏好。这些东西被完整编码进模型。Agent不是在独立思考，是在用概率复现训练数据里的模式——忠实地、不带任何恶意地复现。

  亚马逊的招聘AI是最典型的案例：训练数据以男性简历为主，模型学会了降权女性候选人。问题不在于有人故意设计了歧视，而在于数据本身就包含了历史性的不平等，模型把它学进去了。更难办的是，人的偏见可以被追问，数据偏见穿着"客观性"的外衣——质疑它需要更长的举证链条，推翻它需要更大的勇气。

  Agent可以用于初筛、初稿、效率提升，但不能充当客观性的背书。涉及对人的评估、对群体的定性、对有历史性不平等领域的判断，人的复核不能省。判断偏见是否存在，本身就是一件需要人来做的事。
tags:
  - Agent偏见
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
  image: /images/cover/AioGeoLab-cover-tgje-135-agent-bias-hidden-in-training-data.png
  alt: tgje-135-agent-bias-hidden-in-training-data
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-135-agent-bias-hidden-in-training-data c n i f 微信视频素材上传 w b
publish:
  slug: tgje-135-agent-bias-hidden-in-training-data
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-135-agent-bias-hidden-in-training-data-AI客观性的错觉：隐藏在Agent中的偏见.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-135-agent-bias-hidden-in-training-data-AI智能体偏见分析图.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-135-agent-bias-hidden-in-training-data-算法洗白了偏见.mp3
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/05/1780104693-tgje-135-agent-bias-hidden-in-training-data-AI%E6%99%BA%E8%83%BD%E4%BD%93%E5%81%8F%E8%A7%81%E5%88%86%E6%9E%90%E5%9B%BE_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-135-agent-bias-hidden-in-training-data-AI智能体偏见分析图_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3w8Tz17gwzHR8mLvRy-lRElnozN21vp67yk9ZHF87_4u
    video_vid: wxv_4538446528192987139
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNXz7alTGCVegFwQJqVPh4tUY6FY9NZ2AfJ1g9wrlI7IfX8jBjQzppWMon2Lz4SAZAiaVctKZzKbJz2mSMMicT4tEVNqIdT9UL9pg/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVy5MmzDwC9H5nJclSlLvGeDZWbT4xusXGzhoHrGzCFqziaC2TGtp8ZhJ3qWFWCvtVNGp0BLGaUdf5uibPiciat7e4YGml5drHuMEs/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao37FL0feULzOiviUkM41bfu8NzdM9iC73daps5wt12EMm
    draft_created_at: 2026-05-30 11:18
    video_media_id: lEmH66TSP501Rw-1R2Ao30HxaAyr8sdeXnmI6m-joO-zzcApq-qoXabbopvZ5jli
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-05-30 10:11
---
# Agent没有情绪，但它有偏见——只是很难看见丨Agent误解系列
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/05/1780104693-tgje-135-agent-bias-hidden-in-training-data-AI%E6%99%BA%E8%83%BD%E4%BD%93%E5%81%8F%E8%A7%81%E5%88%86%E6%9E%90%E5%9B%BE_1280_714.jpg)
<!-- infographic-end -->


因为Agent没有情绪，所以输出更客观，这个直觉有它合理的地方。

Agent确实没有情绪。它不会因为今天睡眠不足而判断失准，不会因为某个候选人和自己的老朋友长得像而打高分，不会因为下午三点精力下滑而在审阅第二十份简历时开始敷衍。

但"没有情绪偏见"和"没有偏见"，是两件完全不同的事。

**偏见有两个来源。Agent只消除了其中一个，完整继承了另一个。**


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmprjigzl03cu01zvcfvg90qx" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 偏见藏在哪里

人的偏见来自执行者本身：情绪、疲劳、个人喜好、无意识的刻板印象。这一层，Agent确实没有。

但还有另一层：数据层面的结构性偏见。训练数据是人类历史输出的总和——包括历史上人类决策里所有的不平等、所有的采样偏差、所有标注者的集体偏好。这些东西被完整编码进了模型。

Agent不是在独立思考，它是在用概率复现训练数据里的模式。如果训练数据里某类人被系统性地低估，模型就会学会低估他们——不带任何情绪，不带任何恶意，只是忠实地复现了数据里的规律。

* * *

## 案例一：招聘系统，学会了歧视

亚马逊早在2014年开始构建一套AI招聘工具，目标是让模型自动筛选简历、给候选人打分，把最优秀的人推到招聘官面前。

到2015年，亚马逊发现这套系统在对软件工程师等技术岗位进行评分时，并没有做到性别中立。具体表现是：包含"女性"字样的简历会被降权，两所女子学院的毕业生也遭到了降分处理。

原因是什么？模型的训练数据来自亚马逊过去十年的员工简历，而这批员工以男性为主。模型学会的，是"和现有员工相似的简历"——于是复现了现有员工群体的性别结构。

这个案例有一个细节值得注意：亚马逊的工程师发现问题后，修改了模型，让它不再对"女性"这个词本身降权。但正如ACLU事后分析指出的：没有人知道模型是否还会通过其他方式延续歧视——邮政编码、学生组织名称、任何与性别相关的间接特征，都可能成为替代路径。亚马逊最终放弃了这个工具。

* * *

## 案例二：内容生成，复现了默认画像

让Agent描述"一个成功的科技公司CEO"，它会输出什么？

不需要实验，机制就能告诉你答案：模型的输出是训练数据里这个描述出现频率最高的那个版本。过去几十年科技行业报道里，CEO形象的主流呈现方式，会直接影响模型的默认输出——包括性别、年龄、外貌描述的倾向。

这不是模型在做价值判断，它只是在还原它见过最多次的那个版本。但对读到这个输出的人来说，它以"AI生成"的面目出现，带着一种隐性的权威感——像是统计得出的事实，而不是偏见的复现。

* * *

## 为什么数据偏见比人的偏见更难被发现

人的偏见是可以被追问的。你可以问一个面试官：你为什么给这个候选人打低分？他需要给出理由，理由可以被质疑，质疑可以推动改变。

Agent的输出不一样。它穿着"数据驱动"的外衣，带着隐性的客观性光环。质疑它的输出，需要先质疑它的训练数据，再追溯数据采样的方式，再分析标注过程里的集体偏好——这条链条很长，举证成本很高。

正如ACLU在分析亚马逊案例时描述的：这类工具的问题不是在消除人的偏见，而是在用软件把偏见洗白。

"模型说的"比"他说的"更难被推翻。这才是真正需要警惕的地方。

* * *

## 用对Agent的位置

不是说Agent不能用于这类任务。是说它不能充当客观性的背书。

用Agent做初稿、做效率工具、处理信息量大的初步筛选——这些是合理的位置。但涉及对人的评估、对群体的定性、对有历史性不平等的领域做判断，人的复核不能省，而且复核的出发点不只是"结果对不对"，还要包括"这个结果的倾向性在哪里"。

判断偏见是否存在，本身就需要人来做。这件事，不能交给Agent自己判断。

* * *

## 写在最后

Agent消除的是执行者的情绪偏见，继承的是训练数据的结构性偏见。前者是显性的、容易被意识到的；后者是隐性的、穿着客观性外衣的。

**偏见没有消失，只是换了一个更难被看见的藏身之处。**

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。