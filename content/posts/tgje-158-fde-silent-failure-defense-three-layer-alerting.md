---
title: FDE沉默失败防线：让AI系统自己报警，比你想的难丨三道防线，覆盖传统监控的盲区
date: 2026-06-23
draft: true
coverKeyword: FDE沉默失败防线
description: FDE落地工程系列第08篇。以"仪表盘全绿但系统正在出错"切入，说明传统报警对AI沉默失败无效的根本原因，建立三道防线框架（上线前评测门控、生产流量持续质量评测、用户反馈信号），拆解Agent系统步骤级可见性的四类必追踪指标，以及交接阶段需要移交的三件事。显式连接Agent误解系列的沉默失败概念。
tldr: |-
  让AI系统在出问题时主动报警，比听起来难——因为沉默失败的定义就是系统不知道自己出了问题。HTTP 200、延迟正常、仪表盘全绿，不代表输出是对的。传统监控看的是系统在不在跑，看不到跑出来的结果对不对。

  三道防线覆盖三个时间维度：上线前的评测门控拦截主动引入的失败，生产流量上的持续质量采样评测发现上线后的漂移，用户反馈信号覆盖自动化评测遗漏的约18%的问题。三道防线各有分工，缺任何一道都有盲区。

  Agent系统需要步骤级的可见性——工具调用准确率、上下文保持完整性、检索质量、循环终止条件。只评测最终输出，知道结果是错的，但不知道哪一步出了问题，修复无法定向。

  交接阶段移交的不是仪表盘访问权限，是三件事：评测标准的维护能力、报警响应的处理流程、领域专家参与的质量评审机制。三件事都移交出去，客户团队才有能力独立维护系统质量。
tags:
  - 沉默失败
  - FDE落地工程
  - 可观测性
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
  image: /images/cover/AioGeoLab-cover-tgje-158-fde-silent-failure-defense-three-layer-alerting.png
  alt: tgje-158-fde-silent-failure-defense-three-layer-alerting
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-158-fde-silent-failure-defense-three-layer-alerting c n f uv i w b
publish:
  slug: tgje-158-fde-silent-failure-defense-three-layer-alerting
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-158-fde-silent-failure-defense-three-layer-alerting-FDE沉默失败防线：AI系统的三道报警机制.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI系统三道质量防线.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-158-fde-silent-failure-defense-three-layer-alerting-破解AI系统的沉默失败.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI
      Silent Failure Defense/12页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782087257-tgje-158-fde-silent-failure-defense-three-layer-alerting-AI%E7%B3%BB%E7%BB%9F%E4%B8%89%E9%81%93%E8%B4%A8%E9%87%8F%E9%98%B2%E7%BA%BF_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-158-fde-silent-failure-defense-three-layer-alerting-AI系统三道质量防线_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao30usTMiRbylnR1_3Wk_IKle1po6bxgdJox3t0OwxdBqc
    video_vid: wxv_4571706652826976257
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWeibfRaZBNGxe3ySjNBicvNeicRkTfuTw5bqgB1uY5cRPSDU1EmKhfeZZr2H9XAoTQ0rTYvL7x8OamrYxfwgXVqqgrWzb8fj3vS4/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNVasvTXH0cvyAl8AzlNPib1NyQePw8PFeUooEUfIL9PW5FXdXb7qdibuMZGNjqnS8B5mta9JsGSsQpuicG7TGemjPQabUvyjSY6E4/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao389zfT50vLVgWMx8MZAfCvUJ3K6y26BcVw8_0cP_OO97
    draft_created_at: 2026-06-22 11:16
    video_media_id: lEmH66TSP501Rw-1R2Ao31B66l3Cky7CYz5KjANV_bGrKWY3HJmZ2c1v6hHjKkra
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782097726-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWaibpW7AZcIW30aYr9jRvHVEqfj4Via9kNNH7ib7QUtrcUIvBdVlazchdzwZH0bibSkGcjlfIhRN004ZwXvDMTSmuUDGNAh9oJ49A/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782097791-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVLlEOChYBS48icHMLbcQnBAsZ2g3wp0tcP2rgUfgoj5MU7zQ5Ls774YcEPceICQdksIGlyYlRvpiaGJvXiaicJTlyoibE3gBO0gWBs/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782097797-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUFxZVzZW1ic8eNp40iaia3ByW9AX3De2esLBctIgzIiaNff87icIS6YXh8E04wKJfUuJYpGDNRWvHIYsxAURUT3d7COUS1rywCRDnI/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782097846-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUuqC0M3F10G7PicHHeKBfROjFsP6HDgKSgxZh6SQ4LibRoXOd4lMR4bIFicjIs21icTlOC0iaMaCwicjOxicOvicqo5riatFVFwCbnvxEQ/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782097992-12%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVoOO1XS5QErhPVfPHALo8CTfqFzzPp0Ihyzc1wjIUNOwFB7sFCMz0Rgelob7vXYgiahcDyrOIZOe1WAkaRtuRgFOzt4ePyC45E/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# FDE沉默失败防线：让AI系统自己报警，比你想的难丨三道防线，覆盖传统监控的盲区

上一篇说，可观测性是FDE在部署阶段必须主动设计的东西，是顺利移交的前提。这篇讲更具体的一个问题：系统真的出问题了，怎么让它主动发出信号？

先看三个失败场景。

客服机器人告诉用户，退款申请可以在48小时内处理——但这个政策根本不存在，是模型编出来的。RAG系统找到了正确的文档，但综合出了一个错误的答案。Agent选择了正确的工具，但传入了格式错误的参数，后续步骤全部基于这个错误的参数继续跑。

三种失败，每个请求都返回HTTP 200，延迟正常，仪表盘全绿。

没有一个传统监控工具会在这种情况下报警。从传统监控角度看，这三次请求都成功了。

这就是沉默失败的核心难点：失败本身不产生可以被监控的异常信号。让系统在这种情况下"自己报警"，需要的不是更灵敏的监控阈值，而是一套完全不同逻辑的防线。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqognoxb02ay01vqhmuj17aa" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 为什么传统报警，对沉默失败无效

传统报警的逻辑是：设定阈值，超出阈值触发告警。内存超过80%，报警；响应时间超过2秒，报警；出现5xx错误，报警。

这套逻辑有一个前提：失败会产生可测量的异常信号。

沉默失败偏偏不满足这个前提。模型输出了一个语法正确、格式完整、语气自信的答案，只是内容错了。从监控系统的角度，这是一次完美的成功请求——200响应，延迟正常，没有任何异常。

2026年对37个商业LLM的基准测试发现，幻觉率从15%到52%不等。在法律领域，顶级模型的幻觉率达到69%到88%。这些错误的输出，在传统监控系统里全部记录为正常响应。

![03页.png](https://p.vibcx.com/x/2026/06/1782097726-03%E9%A1%B5.png)


Agent系统的情况更复杂。单次LLM调用出错，至少还能在最终输出上看出来。Agent的失败跨越多个步骤：工具调用返回了意外的数据结构，上下文在步骤之间传递时丢失了关键状态，循环在不该终止的时候提前退出，检索步骤找到了语义相近但事实错误的文档。这些失败全都在悄悄降低最终输出的质量，简单的提示日志根本捕捉不到。

传统监控能看到的，是系统在不在跑、跑得快不快、有没有崩溃。它看不到的，是系统跑出来的结果对不对。这是两件不同性质的事，需要两套不同的机制来保障。

* * *

## 三道防线，覆盖三个时间维度

沉默失败的克星不是一个更灵敏的报警规则，是三道分别工作在不同时间点的防线。

**第一道防线：上线前的评测门控**

![05页.png](https://p.vibcx.com/x/2026/06/1782097791-05%E9%A1%B5.png)

每次系统发生变化——提示词修改、模型版本更新、检索配置调整——在变更上线之前，先跑一遍评测。

用黄金测试集对每个输出评分：事实准确性、幻觉率、格式合规。当一次提示词改写让事实准确率下降，评测在变更上线前就捕捉到了退化。

这道防线防的是主动引入的失败。AI系统不像传统软件，一个看起来很小的改动——比如提示词里加了一句话——可能在某类场景下触发意想不到的输出变化。如果没有这道门控，每次更新都是在给生产环境引入未知风险。

具体操作：维护一个覆盖真实业务场景的测试集，包括正常案例和边缘案例。每次变更前跑全量评测，设定质量门槛，低于门槛不允许上线。这个测试集要随着业务变化持续更新，否则会逐渐失去代表性。

**第二道防线：生产流量上的持续质量评测**

![06页.png](https://p.vibcx.com/x/2026/06/1782097797-06%E9%A1%B5.png)

上线前的评测是静态的，只能覆盖已知的场景。真实用户的使用方式总会超出测试集的预期，沉默失败可能在上线之后的真实流量里才会暴露。

对生产流量进行持续的质量评测：忠实度、幻觉、相关性、安全性。当评测分数下降时报警触发——而不只是延迟上升或者出现5xx错误时才报警。

这道防线的关键设计是采样，而不是全量评测。对每一个请求都跑质量评测，成本太高，也没有必要。在生产流量上按比例采样，对采样到的请求跑完整的质量评测，在可接受的成本下提供足够密度的质量信号。

报警触发的标准不是某个绝对值，而是相对基线的偏移。任何质量指标偏离滚动基线超过两个标准差时触发报警。这个设计的好处是自适应——系统质量本来就会随时间小幅波动，触发不必要的报警会造成报警疲劳；偏离基线才触发，保证了每一个报警都指向真实的异常。

**第三道防线：用户反馈信号**

![07页.png](https://p.vibcx.com/x/2026/06/1782097804-07%E9%A1%B5.png)

前两道防线都是自动化的，但自动化评测有覆盖不到的地方。用户反馈循环能帮助识别自动化系统遗漏的幻觉。用户在真实使用中感受到的"哪里不对"，和自动化评测的覆盖是互补的，不是替代关系。

用户反馈信号有两类。

显式信号：点赞踩、纠错标记、用户主动报告的问题。这类信号质量高，但覆盖率低——大多数用户即使发现问题，也不会主动反馈。

隐式信号：用户修改了AI的输出、用户重新提问而不是接受第一次的答案、用户绕过系统另找答案。这类信号不需要用户主动做任何事，通过行为数据就能捕捉，覆盖率更高。

在陪跑阶段建立的用户反馈收集机制，在产品化阶段成为持续质量输入。两个阶段之间，是同一套机制在不同阶段发挥不同的作用。

* * *

## Agent系统需要步骤级的可见性

对单次LLM调用，三道防线基本够用——失败通常能在最终输出上被评测出来。

Agent系统不一样。Agent跨多步骤完成任务，失败的根源可能在第二步，但最终输出在第七步才体现出来。如果只评测最终输出，知道结果是错的，但不知道哪一步出了问题，修复就很难定向。

![08页.png](https://p.vibcx.com/x/2026/06/1782097846-08%E9%A1%B5.png)

你需要每个Agent决策步骤的可见性。具体来说，四类步骤级指标是必须追踪的：

工具调用准确率：Agent选择了正确的工具吗，传入的参数格式正确吗，工具返回的结果被正确解析了吗。这是Agent执行链路里最容易出错的环节，也是最容易被忽略的。

上下文保持完整性：多步骤任务里，上下文从一步传到下一步的过程中，有没有关键信息被丢失或者被错误覆盖。上下文丢失是Agent系统沉默失败的高频原因之一。

检索质量：RAG场景里，检索到的文档是语义相关还是事实正确，这是两件不同的事。语义相关的文档可能包含过时的信息，或者在细节上和当前问题不匹配。

循环终止条件：Agent在应该继续的时候提前退出，或者在应该停止的时候陷入循环，这两类问题都是沉默失败——不报错，只是任务没有按预期完成。

步骤级的评测数据，也是改进系统最有价值的输入——不只是知道哪次任务失败了，而是知道失败发生在哪一步，下一次迭代可以精准地在那个环节做改进。

* * *

## FDE要移交的，不只是工具访问权限

这套三道防线的机制，在交接阶段要移交给客户团队。但移交不是给他们一个仪表盘的登录账号。

需要移交的是三件事。

**评测标准的维护能力。** 业务在变，用户的使用方式在变，评测标准也需要跟着更新。一套今天合适的测试集，六个月后可能已经不能代表真实的使用场景了。客户团队需要理解评测标准是怎么设计的，有能力在业务变化时独立更新它，而不是等FDE回来帮忙。

**报警响应的处理流程。** 收到报警之后，谁来看，怎么判断严重程度，什么情况下需要立即处理，什么情况下可以排进下一个迭代周期，什么情况下需要升级给更高层级的决策者。这套流程要在交接前和客户团队一起演练，不能只是写进文档里。

**用户反馈信号的持续收集和分析。** 让领域专家参与到定期的质量评审里，不只是让工程师看仪表盘。领域专家能发现工程师看不出来的问题——一个在技术指标上合格的输出，在业务场景里可能是完全不可接受的。这种判断只有领域专家能做。
![11页.png](https://p.vibcx.com/x/2026/06/1782097927-11%E9%A1%B5.png)


三件事都移交出去，客户团队才有能力在FDE撤出之后，独立维护系统的质量。这不只是把防线交出去，是把维护防线的能力交出去。

* * *

## 写在最后

沉默失败这个概念，在Agent误解系列里讲的是"为什么会发生"——AI系统不知道自己出错了，所以不会主动告诉你。这篇讲的是"FDE怎么在系统层面解决它"——用三道防线，在失败发生前、发生时、发生后分别建立发现机制。

日志告诉你系统做了什么，评测告诉你做得对不对。两者合在一起，才是真正意义上的可观测性。

![12页.png](https://p.vibcx.com/x/2026/06/1782097992-12%E9%A1%B5.png)


下一篇进产品化阶段的核心——个性化的交付经验，怎么提炼成下一次可以直接复用的通用能力。这一步是FDE和外包最本质的分水岭。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。

