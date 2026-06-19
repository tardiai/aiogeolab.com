---
title: FDE裁定接口设计：不是审批流程，是风险边界丨部署阶段交给判断工程的那份图纸
date: 2026-06-20
draft: false
coverKeyword: FDE裁定接口设计
description: FDE落地工程系列第05篇。拆解裁定接口设计的核心逻辑：它不是审批流程，而是风险边界的系统表达。区分HITL与HOTL的适用场景，揭示审批疲劳这一常见失效模式，提出四个触发裁定的标准和裁定接口的四个设计要素。同时显式连接判断工程系列，说明认知框架如何在FDE部署阶段转化为系统级控制点。
tldr: |-
  大多数企业把HITL（人类在环）当成了审批流程来建，结果是审批疲劳——每个输出都要确认，审批者训练成了无脑点击，真正重要的决策和无害查询得到同样的反应。这不是更安全，是把风险控制机制变成了形式。

  正确的设计逻辑从风险出发：在AI出错的代价超过人类介入代价的地方，才放裁定节点。四个触发标准：不可逆、高代价、受监管、高爆炸半径。符合这四个标准的决策点，需要人类真实介入；其余的，放开给系统自主处理。

  一个完整的裁定接口包含四个要素：可量化的触发条件、完整的上下文打包、同步或异步的介入方式、明确的责任归属。这四件事必须在部署阶段就设计清楚，上线后再改代价很高。

  这份设计是FDE交给判断工程的那道桥：判断工程定义了应该在哪里有人类判断，裁定接口设计定义了系统怎么让人类判断在那里真实发生。认知框架不落进系统设计，只是纸面原则。
tags:
  - 裁定接口设计
  - FDE落地工程
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
  image: /images/cover/AioGeoLab-cover-tgje-155-fde-hitl-design-risk-boundary-not-approval-process.png
  alt: tgje-155-fde-hitl-design-risk-boundary-not-approval-process
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-155-fde-hitl-design-risk-boundary-not-approval-process c n f uv i w b
publish:
  slug: tgje-155-fde-hitl-design-risk-boundary-not-approval-process
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-155-fde-hitl-design-risk-boundary-not-approval-process-裁定接口设计：构建AI风险边界.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-155-fde-hitl-design-risk-boundary-not-approval-process-FDE裁定接口设计进化.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-155-fde-hitl-design-risk-boundary-not-approval-process-避开AI审批地狱.mp3
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1781843872-tgje-155-fde-hitl-design-risk-boundary-not-approval-process-FDE%E8%A3%81%E5%AE%9A%E6%8E%A5%E5%8F%A3%E8%AE%BE%E8%AE%A1%E8%BF%9B%E5%8C%96_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-155-fde-hitl-design-risk-boundary-not-approval-process-FDE裁定接口设计进化_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao31qmADt3ybPmOCVY49XJwdjsPoM_55Od9VlxbhMlhSBw
    video_vid: wxv_4567623354605731841
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVJerhPfbaIgcfI0SHicpZMWZLkxia72MB22KZZRftib7bTRJWOSngpHUDAKf4iach2Zc4KkuAbpKZgf9bmpMylgDmdiaCeAw7ET6ZE/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNX9FgletnAH6xj1Bv7SYE5OBUq8KwKPGP1pcR7XCSvgeMHiafUdjmyLO746y36ElRzF26B8fhc1HmEEmyj12fdThYkJJicqu1s2M/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3-_zHLub7J-2jrb1nbdsXbzAD99pJrpoFJ0_3G80_WQq
    draft_created_at: 2026-06-19 13:33
    video_media_id: lEmH66TSP501Rw-1R2Ao36tWViNix9jjsKg7yWA5LZmQbrCJ8ywxInIvbok1Hhcu
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1781844632-%E7%AC%AC%205%20%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWZJcUkoZcr7oYPJpvkTfh21TgTQ9unIueJW4gOLKbHYrJ608j2qNpbmtfjp1A3jtY48sgLKkGS4iaOxRnFicsHuiarNok1rcbnZM/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781844698-%E7%AC%AC%203%20%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXnZicGgOl5Jm1AgibgNoUWrOp9qib4z3QdROXBbC4Cgm6Pgh510l8ekiaD2Fic3ugR4tdR2I396l1TZpoUuc8Nyw61JIiciaibhtfTd70/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781844768-%E7%AC%AC%207%20%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVabJbW4NpibtYoDzIw6f7sdlBA37waBTib3rNGyNQySNOZ7r5zoBCXJgiaiaHOKDxXT1Ae8jKhR4nWCqwRqhS1taB78YKY2eALzc0/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1781844825-%E7%AC%AC%209%20%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUj8G4CSF86zdZJWznvUfBOsIxC2C4q2alx8LfZVzkVEjsyjCInONkmER5bx5p5JCRmzpZ2IiapXWN5QicOn8m6nPHwXdbzISMsM/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-06-19 12:56
---
# FDE裁定接口设计：不是审批流程，是风险边界丨部署阶段交给判断工程的那份图纸
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1781843872-tgje-155-fde-hitl-design-risk-boundary-not-approval-process-FDE%E8%A3%81%E5%AE%9A%E6%8E%A5%E5%8F%A3%E8%AE%BE%E8%AE%A1%E8%BF%9B%E5%8C%96_1280_714.jpg)
<!-- infographic-end -->


上一篇讲集成墙，最后说到身份权限墙的应对方向之一是"建立权限边界"。这篇深挖这条线怎么划——哪些决策AI可以自主做，哪些必须交给人类，这条边界画在哪里、由谁来画、怎么在系统里落地。

先说一个很常见的处理方式：搭一套审批系统，遇到AI不确定的输出就发给人审，人批了就继续，人没批就等。听起来合理，实际上这是把一个设计问题当成了流程问题来解决。

两者的区别，这篇重点来讲一下。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqkfpqdi05r901xcduarbxpe" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## HITL和HOTL：先搞清楚这两件事

在讲裁定接口之前，需要先把两个概念区分开。

HITL（Human-in-the-Loop）要求人类在AI系统执行之前批准或授权一个行为，系统在定义好的检查点暂停并等待。HOTL（Human-on-the-Loop）允许AI自主行动，人类监控输出，保留事后介入的能力。

这不是非此即彼的选择，一个真实的业务工作流里，不同节点会用不同的模式。比如日常客服问询走HOTL加抽样审计，但超过1000美元的退款请求触发强制HITL审批。同一个系统，同一个流程，不同的决策节点，不同的监督密度。

这里有一个容易被忽视的复杂性：Agent在同一个工作流里可能既做低风险决策又做高风险决策。它订了一张机票（低风险），然后在同一个工作流里谈了一份供应商合同（高风险）。监督模式必须是动态的、策略驱动的，而不是给整个Agent贴一个标签然后一刀切。

这就是为什么"搭一套审批系统"不够用——审批系统解决的是流程问题，但在哪些节点触发审批、触发什么级别的审批，这是设计问题，比审批系统本身更重要。

![第 5 页.png](https://p.vibcx.com/x/2026/06/1781844632-%E7%AC%AC%205%20%E9%A1%B5.png)


* * *

## 审批疲劳：最常见的错误设计

在讲正确的设计之前，先说一个在实践中反复出现的错误。

很多企业在引入AI系统的初期，出于谨慎，把审批设置得很密——几乎每一个输出都要人确认。逻辑上听起来没问题：多一道人工审核，多一层保障。

但实际运行起来，会发生一件事。

如果每一个低风险的只读查询都要人确认，你是在训练审批者“无脑点击”。等到真正重要的高风险决策需要批准时，得到的是和无害查询一样的条件反射式确认。

这个现象叫审批疲劳（Approval Fatigue）。审批者每天面对几十上百个确认请求，绝大多数都没有问题，时间久了，审批这个动作本身就变成了一个习惯性的点击，不再包含真实的判断。当一个真正需要仔细审查的决策混进来，得到的也是同样的反应速度、同样的关注程度、同样的条件反射。

这让HITL从一个风险控制机制，退化成了一个徒有形式的合规动作——人确实在审批，但人的判断力实际上已经不在那里了。

审批疲劳有三种常见的触发方式：

第一种是全量审批——所有输出都经过人工确认，不区分风险高低。这是最直接的触发方式，审批量一旦超过审批者能认真处理的上限，疲劳就开始积累。

第二种是事后补洞——先让系统跑，出了问题再加审批节点。这种方式加的审批点，往往不是真正的风险点，而是上次出问题的地方——把历史故障当成了风险地图，而不是从系统逻辑出发来设计。

第三种是位置错位——审批节点和真实风险点没有对齐。审了不该审的，反而漏了真正需要人类判断的地方。这种错误最难发现，因为系统表面上有HITL，但保护的不是真正需要保护的位置。

![第 3 页.png](https://p.vibcx.com/x/2026/06/1781844698-%E7%AC%AC%203%20%E9%A1%B5.png)


* * *

## 正确的设计逻辑：从风险出发，不从流程出发

HITL是在自主运行的工作流中，在特定决策点刻意置入人类监督——在AI出错的代价超过人类介入的代价的地方。

![第 7 页.png](https://p.vibcx.com/x/2026/06/1781844768-%E7%AC%AC%207%20%E9%A1%B5.png)


这句话是裁定接口设计的起点。

设计的问题不是"哪些输出需要人审"，而是"在那个决策点，如果AI判断错了，后果的严重程度是什么"。这两个问题看起来相似，出发点完全不同——前者从流程出发，后者从风险出发。

四个触发裁定的标准：

**不可逆**：做了之后很难撤回的动作。删除数据、发出外部通信、修改系统权限、触发支付——这类操作一旦执行，撤回的代价很高，有些根本撤不回来。不可逆性本身就是需要人类确认的理由，不用考虑其他条件。

**高代价**：后果的代价超过了某个阈值。财务支出、合同承诺、影响大量用户的配置变更——代价不只是金钱，还包括声誉、关系、合规风险。这类决策需要设置可量化的触发阈值，不能靠AI自己判断"这个金额算不算大"。

**受监管**：涉及合规要求的决策需要有人类责任人签字。欧盟AI法案第14条要求高风险AI系统的设计必须支持自然人的有效监督，2026年8月生效。合规不是可选项，涉及监管要求的节点，HITL是强制的，不是设计选择。

**高爆炸半径**：单个决策的错误会连锁影响下游多个系统或流程。IT运维里，禁用MFA（多因素身份验证）、轮换密钥、修改防火墙规则、分配管理员权限——这类操作的错误会扩散到整个系统；数据层面，写入生产数据库、修改客户属性、删除记录——影响范围可能覆盖几十万条记录。爆炸半径越大，越需要在执行前有人确认。

FDE在部署阶段要做的，是把客户的业务流程过一遍，把符合以上四个标准的决策点逐一标记出来，为每个节点确定用HITL还是HOTL，以及触发条件是什么。

这份标记，就是交给判断工程的那份图纸。

* * *

## 图纸的四个要素

知道在哪里放裁定节点之后，还需要把每个节点的细节设计清楚。一个完整的裁定接口设计，包含四个要素。

**触发条件**

什么情况下系统暂停，等待人类介入。

触发条件必须是可执行的，不能是"遇到不确定的时候"——不确定是主观判断，没有办法被系统执行。需要翻译成具体的、可量化的规则：金额超过多少、影响用户数超过多少、涉及哪类数据、动作类型是否在预定义的高风险列表里。

触发条件越清晰，系统的行为就越可预测，审批者也知道什么情况下会收到通知，不会被意外打断。

**上下文打包**

系统暂停之后，给人类审批者呈现什么信息。

审批延误通常来自路由不畅和上下文不完整，而不是人类审批这个步骤本身。审批者收到一条"请审批这个操作"的通知，但没有足够的背景信息来判断，他们要么去找信息（慢），要么就直接批了（不安全）。

上下文打包要回答四个问题：AI在做什么，为什么触发了这个审批节点，可能的选项是什么，不同选择的后果分别是什么。把这四个问题的答案打包给审批者，审批的质量和速度都会显著提升。

**介入方式**

同步还是异步。

同步HITL：系统暂停，等待审批者确认之后才继续。适合高风险、时间敏感、后果不可逆的节点——系统必须等到人类确认才能动。

异步HOTL：系统记录这个决策，继续执行，审批者在规定时间内可以复查和干预。适合中等风险、速度重要、错误可以在一定时间内纠正的场景。

同步和异步的选择会直接影响工作流的效率——一个需要实时响应的客服系统，不能在每个判断节点都同步等待人工确认。这个选择需要和客户的业务目标对齐，不能只从风险角度看。

**责任归属**

这个裁定节点，谁有权批，谁的审批不算数。

这不只是系统配置的问题，是组织层面的决策。同一个审批节点，可能需要不同部门、不同级别的人来处理，取决于决策的性质——财务支出需要财务负责人批，合规相关需要法务确认，系统权限修改需要IT主管签字。

![第 9 页.png](https://p.vibcx.com/x/2026/06/1781844825-%E7%AC%AC%209%20%E9%A1%B5.png)


这件事必须在部署阶段就和客户的管理层确认清楚，写进系统设计里。等到系统上线之后再协商，会发现各方的理解出入很大，而此时系统已经在跑了，改起来代价高。

* * *

## 裁定接口和判断工程的连接

判断工程是认知框架层面的问题：谁来判断，判断什么，什么时候必须有人类裁定，裁定权应该设计在哪里。这是在系统建设之前需要想清楚的问题——把权力结构、判断边界、责任归属在认知层面理清楚。

FDE在部署阶段设计的裁定接口，是把这个认知框架转化成系统里真实存在的控制点。触发条件是"在哪里触发裁定"的系统表达，上下文打包是"给裁定者足够信息"的系统表达，介入方式是"裁定如何发生"的系统表达，责任归属是"谁的裁定有效"的系统表达。

两者的关系是：判断工程定义了应该在哪里有人类判断，裁定接口设计定义了系统怎么在那个地方让人类判断真实发生。

认知框架不落进系统设计，就只是纸面上的原则。系统设计没有认知框架的支撑，就只是一堆没有逻辑的审批节点。两者需要对齐，才能构成一个真正有效的治理机制。

这也是为什么裁定接口设计是FDE在部署阶段最重要的交付物之一——它不只是技术文档，是认知框架和工程实现之间的桥梁。

![第 12 页.png](https://p.vibcx.com/x/2026/06/1781844890-%E7%AC%AC%2012%20%E9%A1%B5.png)


* * *

## 写在最后

裁定接口不是审批系统，不是风控模块，也不是合规要求的形式化应对。

它是一份图纸，画的是：在这个系统里，什么地方AI不应该自己决定，什么地方需要人类真正介入，介入的信息足不足够，介入之后的责任归谁。

设计对了，系统在大多数时候高效自主运行，在真正需要人类判断的地方可靠地暂停，审批者的注意力被保护起来，用在值得用的地方。设计错了，要么陷入审批疲劳，人的判断力形同虚设；要么在错误的地方过度自主，在真正需要人类的地方反而没有刹车。

下一篇进陪跑阶段——集成墙打通了，裁定接口设计好了，系统技术上已经能跑。但让用户真正信任并用起来，是另一件事，也是部署阶段最后、最容易被低估的一关。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
