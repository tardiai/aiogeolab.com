---
title: 模型幻觉率降了，Agent不一定更可靠丨Agent误解系列
date: 2026-06-04
draft: true
coverKeyword: 幻觉出现了能不能早发现
description: 模型幻觉率下降是真实进展，但这个数字几乎都来自聊天场景的测量——输出是终点，人可以纠正。Agent执行场景里，幻觉是起点：继承式传播、工具调用放大、多Agent传染三种模式让同一个幻觉的代价完全不同。本文说明为什么幻觉出现在哪里比幻觉出现多少更重要，以及降低执行场景幻觉危害的三种结构设计。
tldr: |-
  幻觉率下降是真实进展，研究显示针对性干预能把幻觉率压低接近一半。但这个数字几乎都在聊天场景里测出来——给模型一批问题，统计错误比例。聊天场景里幻觉是终点，人看到了可以纠正，代价止于此。

  Agent执行场景里，幻觉是起点。一个带幻觉的中间结果，会成为下一步的输入，带着错误继续执行。三种传播模式：继承式传播（错误前提被完整继承）、工具调用放大（幻觉驱动真实操作执行）、多Agent传染（上游幻觉跨Agent传播，下游不知道）。任务链越长，幻觉的传播机会越多。

  幻觉率5%但集中在规划阶段的模型，在Agent执行场景里的可靠性，可能不如幻觉率10%但集中在输出阶段容易被发现的模型。数字没有告诉你幻觉在哪里，也没有告诉你能不能被拦住。

  降低危害靠结构设计：分段验证节点让幻觉早暴露、不可逆操作前加人工确认、工具调用前做参数验证。幻觉出现多少是模型问题，幻觉出现了能不能早发现是结构问题。第二个问题，换模型解决不了。
tags:
  - 模型幻觉率
  - 可靠性设计
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
  image: /images/cover/AioGeoLab-cover-tgje-139-hallucination-rate-is-not-agent-reliability.png
  alt: tgje-139-hallucination-rate-is-not-agent-reliability
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-139-hallucination-rate-is-not-agent-reliability c n i f 微信视频素材上传 w b
publish:
  slug: tgje-139-hallucination-rate-is-not-agent-reliability
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-139-hallucination-rate-is-not-agent-reliability-模型幻觉率与Agent可靠性.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-139-hallucination-rate-is-not-agent-reliability-模型幻觉与智能体可靠性.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-139-hallucination-rate-is-not-agent-reliability-幻觉率降了智能体为何还翻车.mp3
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1780441207-tgje-139-hallucination-rate-is-not-agent-reliability-%E6%A8%A1%E5%9E%8B%E5%B9%BB%E8%A7%89%E4%B8%8E%E6%99%BA%E8%83%BD%E4%BD%93%E5%8F%AF%E9%9D%A0%E6%80%A7_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-139-hallucination-rate-is-not-agent-reliability-模型幻觉与智能体可靠性_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3wfT-M7kTogPPxlYHRr4DiNGZS2qW2ef4ZJaRMoDOGus
    video_vid: wxv_4544459726969077761
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNWlLbYpRQSibEvBul8XTEniaApfpTZPqyof1J8bPG2k9s13kwwcU3XDibiayr1rg4G2Ts74FC9TGrdQT7s4snTicZ7rvPAian9cY1sck/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNV2PqZ7qMHliaPNzCdRcicDp2wTk4GtEVDMBVzIuRwLBtiaICKuAzcz8L7BHrrNiaEzLwpTRrbJnGuDfhcrBlQoNhhYo9ZMM8lIun0/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao32_zUMKrWqSM-kKn4fgi9hQrc9aowhmOgvGqeBoopy8v
    draft_created_at: 2026-06-03 13:07
    video_media_id: lEmH66TSP501Rw-1R2Ao3zUj5ET8oyh_Z_-SQhetQgecfm6JMgYL9kJA2wI4IOTD
  wx_article:
    digest: null
    original: false
    comment: true
---
# 模型幻觉率降了，Agent不一定更可靠丨Agent误解系列
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1780441207-tgje-139-hallucination-rate-is-not-agent-reliability-%E6%A8%A1%E5%9E%8B%E5%B9%BB%E8%A7%89%E4%B8%8E%E6%99%BA%E8%83%BD%E4%BD%93%E5%8F%AF%E9%9D%A0%E6%80%A7_1280_714.jpg)
<!-- infographic-end -->


这两年模型迭代飞快，各家厂商也在持续公布幻觉率改善数据。从机制上讲，这个进步是真实的——通过更好的训练方式、更严格的事实核查、提示词层面的干预，模型生成错误内容的概率确实在降低。有研究显示，针对性的提示词干预能把幻觉率从53%压到23%，降幅接近一半。

但这个数字，几乎都是在聊天场景里测出来的。

把它直接套到Agent执行场景上，会得出一个错误的结论。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmpx8nwvi03ov01yj7ht416oa" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 幻觉率是怎么测出来的

测量方式决定了这个数字能说明什么。

聊天场景的幻觉率测量方式是：给模型一批问题，让它生成回答，人工或自动判断回答里有没有错误，统计错误比例。

现有的幻觉评测基准，主要是把单次模型回复分类为"事实"或"幻觉"。这个二元范式对于构建可靠Agent来说，没有触及最关键的问题：幻觉在多步骤执行流程里是从哪里来的、为什么会发生。

在聊天场景里，幻觉的位置是终点：模型生成了一段有错误的内容，人读到了，可以发现，可以纠正，代价止于此。

Agent执行场景里，幻觉的位置是起点。

* * *

## 同一个幻觉，放进执行链里是另一件事

Agent执行一个任务，不是生成一段内容就结束。它要规划步骤、调用工具、把上一步的输出交给下一步。每一步的输入，来自上一步的输出。

在多步骤工作流里，中间步骤的错误会沿链条传播，最终拖累整个任务的结果。比如，规划阶段的幻觉错误定义了某个关键变量，这个错误定义随后被带入工具调用的参数，导致工具在错误的基础上执行，输出错误的最终结果。

这是三种传播模式里最基础的一种——继承式传播：前一步的幻觉成为后一步的事实前提，错误被完整继承，然后在正确的逻辑框架下继续推进，越跑越远。

第二种是工具调用放大。幻觉驱动了工具调用，工具在错误指令下执行的是真实操作——发出去的邮件、修改了的文件、触发了的API请求。工具不会判断指令对不对，它只会执行。幻觉在这里从"错误信息"升级成了"错误行动"。

第三种是多Agent传染。一个Agent的幻觉输出，成为下一个Agent的输入。在多轮交互场景里，幻觉率会随对话轮次增加明显攀升。多Agent系统里，同样的机制跨Agent传播，而且每个Agent都不知道上游出了问题。

* * *

## 幻觉出现在哪里，比幻觉出现多少更重要

一个幻觉率只有5%的模型，如果幻觉集中发生在任务规划阶段，它在Agent执行场景里的可靠性，可能远不如一个幻觉率10%但幻觉都发生在输出阶段、容易被验收发现的模型。

数字本身没有告诉你幻觉出现在哪里，也没有告诉你它能不能被发现、被拦住。

降低Agent执行场景里的幻觉危害，真正有效的是结构设计，不是换一个幻觉率更低的模型：

**分段验证节点**：长任务里，每隔几步设一个检查点，验证中间结果是否符合预期。幻觉发生了，尽早暴露，代价还在可控范围里。

**不可逆操作前加人工确认**：发邮件、修改文件、触发支付——这类操作执行了就很难撤，在触发之前加一个人工确认节点，是在幻觉变成错误行动之前最后一道拦截。

**工具调用前做参数验证**：Agent生成的工具调用参数，在实际执行前做格式和逻辑检查。用确定性规则拦住概率性错误。

* * *

## 写在最后

选模型时，幻觉率是有参考价值的指标，但它是聊天场景的表现，不是Agent执行可靠性的保证。

**幻觉出现多少是模型问题，幻觉出现了能不能早发现是结构设计问题。** 后者，选哪个模型解决不了，只有执行结构的设计才能解决。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
