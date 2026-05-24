---
title: 工作流和Agent的边界在哪里——不是复杂度，是确定性丨AIAgent基础系列
date: 2026-05-25
draft: true
coverKeyword: 脚本和Agent选择逻辑
description: 很多人的工具选择逻辑是：任务复杂就上Agent，任务简单就用脚本。但复杂度不是分界线，确定性才是。工作流处理确定性逻辑，Agent处理不确定性情境——这两件事性质不同，不是能力高低之分。本文给出判断任务确定性的四个维度，拆解四种常见误判，并给出混合架构的设计思路：脚本做骨架，Agent做关节。
tldr: |-
  工作流和Agent的本质区别不是聪明程度，是谁来决定下一步。工作流把下一步提前写死，执行确定性逻辑；Agent在执行中持续推理，处理不确定性情境。确定性任务，工作流比Agent更可靠、更便宜、更好调试。

  判断一个任务适合哪个，看四个维度：步骤是否固定、分支是否可穷举、输入格式是否标准化、"理解"是否必要。四个维度都指向确定性，工作流足够；有不确定性介入，才需要Agent。

  四种常见误判：任务复杂就上Agent、涉及AI就要用Agent、脚本出错换Agent试试、Agent万能先上再说。这四种逻辑都把"工具选择"和"任务性质"的关系搞反了。

  真实任务往往是混合的。最优设计是脚本做骨架、Agent做关节——确定性步骤交给工作流，判断节点插入Agent，各司其职，不是Agent越多越好。
tags:
  - 工作流
  - 脚本
  - AIAgent
  - 判断工程
  - Agent
  - 智能体
  - 生成式引擎
  - AI
  - GEO
  - AEO
  - SEO
  - AIO
  - LLM
  - 大语言模型
  - 优化
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-129-determinism-is-the-real-boundary.png
  alt: tgje-129-determinism-is-the-real-boundary
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-129-determinism-is-the-real-boundary c n i f 微信视频素材上传 w b
publish:
  slug: tgje-129-determinism-is-the-real-boundary
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-129-determinism-is-the-real-boundary-智能体与工作流：确定性边界.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-129-determinism-is-the-real-boundary-工作流与AI智能体对比.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-129-determinism-is-the-real-boundary-脚本做骨架Agent做关节.mp3
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/05/1779601243-tgje-129-determinism-is-the-real-boundary-%E5%B7%A5%E4%BD%9C%E6%B5%81%E4%B8%8EAI%E6%99%BA%E8%83%BD%E4%BD%93%E5%AF%B9%E6%AF%94_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-129-determinism-is-the-real-boundary-工作流与AI智能体对比_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3yT-Oyhd96p6QYYrnsXxbYuPCNbwsmIVdzqhEwfao--n
    video_vid: wxv_4530000306377785350
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVp5Cwj4UxIqefCiaJ1bPs4PrFHowPfU3LDjgqnflymb2JO4rEVlodyphiag0Kprhq0kDSRqNmzgR2LsgruXU9BCqrMJibyjxergY/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNXs9f7wayI5IajIcEtRU6r0ujpVy8PW43ZlPjibWkJKHdorbAKZgia9lDhic5KBF5Aju03ia6p5ctVzg2dDDiaNxKaVgvFBfyMBiaHVU/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao38ivkbhPAVT89DfiLjQ9m_7thmBEJutKu1DaZZyMi1NZ
    draft_created_at: 2026-05-24 13:43
    video_media_id: lEmH66TSP501Rw-1R2Ao357JpYwhGpD1-iy_pgJRGFv9uNNNLfEqoOK_c80lSSA-
  wx_article:
    digest: null
    original: false
    comment: true
---
# 工作流和Agent的边界在哪里——不是复杂度，是确定性丨AIAgent基础系列
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/05/1779601243-tgje-129-determinism-is-the-real-boundary-%E5%B7%A5%E4%BD%9C%E6%B5%81%E4%B8%8EAI%E6%99%BA%E8%83%BD%E4%BD%93%E5%AF%B9%E6%AF%94_1280_714.jpg)
<!-- infographic-end -->

有人用AI Agent做了一套自动化流程：每天早上抓取邮件、提炼关键信息、生成日报、发送给团队。听起来很聪明，实际上跑了两周，出了三次奇怪的错误——有一次把一封会议邀请当成了紧急需求，写进了日报；有一次生成的内容格式乱掉，收件人完全看不懂；还有一次不知为何漏掉了几个人。

每次排查都花掉将近一个小时，因为Agent的执行过程不透明，不知道它在哪个环节做了什么判断。

后来换成了一个Python脚本加n8n工作流，同样的任务，规则写清楚，步骤固定，三个月没出过问题。

这件事让人困惑：Agent不是应该更聪明吗？为什么用了更"高级"的工具，反而更不稳？

答案是：**Agent不是高级版工作流，它们解决的是两种性质不同的问题。** 用Agent处理工作流能搞定的事，不是升级，是错配。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmpjcjszl01el01oc4qwb9kv1" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 本质区别：谁来决定下一步

工作流和脚本的工作方式，是把"下一步做什么"提前写死。所有分支、所有条件、所有步骤，在你部署之前就已经确定了。执行的时候只是按图索骥，没有任何现场判断。

Agent的工作方式完全不同。它在执行过程中持续做判断："当前情况是什么，下一步应该做什么"——这个问题的答案不是提前写好的，是Agent根据当前状态实时推理出来的。

这个区别用一句话概括：**工作流执行的是确定性逻辑，Agent处理的是不确定性情境。**

确定性任务，工作流比Agent更可靠、更便宜、更好调试。不是因为Agent不聪明，而是因为确定性任务根本不需要"聪明"——它需要的是稳定执行，而脚本在这件事上比Agent强得多。

开头那个邮件日报，问题就在这里。抓取邮件、提炼关键信息、生成日报——这些步骤听起来很多，但本质上每一步都是确定性的：邮件是结构化数据，提炼规则可以明确定义，日报格式固定。整个任务不需要"现场判断"，需要的是稳定执行。把它交给Agent，等于让一个擅长即兴发挥的人去做一份需要每次都完全一致的流水线工作——不是做不到，是不合适。

* * *

## 四个维度：判断任务的确定性

怎么知道一个任务适合工作流还是Agent？有四个维度可以做判断。

**第一维：步骤是否固定。**

任务的执行步骤，是在开始之前就能完整列出来的，还是需要根据中间结果动态决定？

"收邮件→提取字段→写入表格→发通知"，步骤完全固定，工作流足够。"帮我分析这批用户反馈，找出最值得优先解决的问题"，下一步是什么取决于反馈内容，无法提前列出，需要Agent。

**第二维：分支是否可以穷举。**

任务里的所有可能情况，能不能提前列出来并写好处理逻辑？

审批流有三种结果：通过、拒绝、退回修改——可以穷举，用工作流。客服对话的情况千变万化，无法穷举——需要Agent动态应对。

**第三维：输入格式是否标准化。**

输入是结构化数据（JSON、CSV、固定格式表单），还是自然语言或非结构化内容？

结构化输入不需要"理解"，直接处理就好，脚本胜任。自然语言输入需要语义理解，才能知道用户真正想要什么，这是Agent的主场。

**第四维："理解"是否必要。**

任务需要推理意图、判断语义、结合上下文做决策，还是只需要按规则处理数据？

不需要理解的任务，用Agent是浪费——Agent的核心能力就是语言理解和推理，在不需要这两件事的任务里，它的优势完全用不上，带来的只有额外成本和额外的不确定性。

* * *

## 四种常见的误判

**误判一：任务"看起来复杂"就上Agent。**

很多任务步骤很多、逻辑很长，但每一步都是确定性的。这类任务不是"复杂"，是"繁琐"。繁琐任务用工作流工具串联多个步骤，完全能搞定，而且比Agent稳定得多。

n8n、Zapier、Make这类工作流工具，能处理的任务比大多数人以为的复杂得多。在考虑上Agent之前，先问一句：这个任务用工作流工具能不能做到？很多时候答案是肯定的。

**误判二：任务涉及AI就要用Agent。**

调用AI模型做某件事，和使用Agent是两件事。

脚本完全可以调用大模型API：把一段文本发给GPT做翻译，拿回结果写入文件——这是脚本调用AI能力，不是Agent。Agent的本质是自主规划和动态决策，调用AI不等于有了这两件事。把"用到了AI"和"需要Agent"混为一谈，是最常见的概念错误之一。

**误判三：脚本出错了，换Agent试试。**

脚本出错，通常是逻辑问题——规则没写全、边界条件没考虑到、某个步骤的输入格式不对。这些问题是确定性的，换Agent不会解决它们，只会把问题藏进Agent的推理过程里，变得更难定位。

Agent出错，往往比脚本出错更难排查——因为Agent的执行路径不是固定的，同样的输入可能走不同的路径，出错原因不容易复现。用"换Agent"来解决脚本的逻辑问题，是把一个可以精确定位的问题，变成了一个难以捉摸的问题。

**误判四：Agent万能，先上再说。**

Agent的调试成本、Token成本、维护成本，都远高于脚本和工作流。"先上Agent试试"是最贵的试错策略——如果任务本来就适合工作流，你会用更高的成本、更长的时间，最终发现根本不需要Agent。

选工具的顺序应该反过来：**先问任务有多少不确定性，不确定性低就用工作流，不确定性高再考虑Agent。**

* * *

## 什么任务真的需要Agent

说了这么多工作流能搞定的情况，反过来看：什么任务是Agent的真正主场？

**输入是自然语言，意图需要理解。** 用户说"帮我把这个项目推进一下"，下一步是什么取决于项目的当前状态、历史背景、优先级判断——这些不是规则能覆盖的，需要Agent理解和推理。

**下一步依赖当前内容，而不只是格式。** 排查一个线上故障，第一步是看日志，看完之后下一步是什么，取决于日志里出现了什么——不是日志的格式，是日志的内容。这种"内容驱动下一步"的任务，工作流写不出来，Agent来做。

**失败情况复杂，无法用if-else覆盖。** 如果一个任务的异常处理需要理解"为什么出错"才能决定"怎么处理"，工作流的分支逻辑就到了天花板，Agent的动态判断才派得上用场。

**任务边界本身就不清晰。** 有些任务的终点是模糊的——"帮我把这份报告优化到足够好"，"足够好"是一个需要判断的标准，不是一个可以写进脚本的条件。

* * *

## 最优架构：脚本做骨架，Agent做关节

现实里很多任务是混合的：大部分步骤是确定性的，少数几个节点需要判断。

这种情况的最优设计不是"全用Agent"也不是"全用工作流"，而是**用工作流处理确定性部分，在需要判断的节点上插入Agent**。

具体来说：流程的触发、数据的抓取、格式的转换、结果的写入——这些确定性步骤交给脚本或工作流，稳定可靠；中间某一步需要理解内容、做出判断——这个节点调用Agent，让它做它擅长的事，然后把结果交回给工作流继续走。

这种混合架构有三个好处：可靠性高，确定性部分不会因为Agent出问题而拖垮整体；成本低，只在真正需要判断的节点才消耗Token；调试友好，出了问题先看工作流层，再看Agent层，定位路径清晰。

这也是目前实践中最成熟的多步骤自动化设计思路——不是Agent越多越好，是每个节点用最合适的工具。

* * *

## 写在最后

工作流和Agent不是高低之分，是适用场景不同。

判断用哪个，只需要问一个问题：**这个任务里，有多少不确定性需要处理？**

不确定性低，步骤固定，分支可穷举——工作流，稳定、便宜、好调试。不确定性高，步骤动态，输入不规则——Agent，理解、判断、灵活应对。两者都有，混合架构，各司其职。

* * *

*感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向：  
>   
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。  
>   
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。  
> 塔迪的微信 - **tardyai2025**。
