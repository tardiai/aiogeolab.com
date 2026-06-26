---
title: FDE迭代设计：下次更快，靠的不是记忆，是机制丨把五个主体阶段串起来的那根线
date: 2026-06-27
draft: true
coverKeyword: 现场经验反哺系统设计
description: FDE落地工程系列第12篇。大多数AI落地团队有复盘，没有迭代——经验流失是结构性问题，不是态度问题。本文拆解信号捕获、信号转化、验证闭环三个层次，以及每天/每阶段/每项目三段迭代节奏，帮助FDE团队把现场经验真正反哺进系统设计。
tldr: |-
  项目结束开了复盘会，三个月后新团队进场还是踩同样的坑——这不是没认真，是经验住在人脑里，没有进入任何一个下次能自动起作用的地方。

  经验流失有三个结构性根因：存储介质是人脑、复盘产出是结论而非信号、最有价值的细节只在现场存在。更认真地开复盘会，解决不了这三个问题。

  解法分三层：信号捕获（什么值得记、记在哪里、谁来记）、信号转化（从观察到系统变更提案）、验证闭环（下个项目确认变更真的起作用了）。三层之外，还要有三段节奏：轻量捕获、中度归纳、深度资产化，对应每天/每阶段/每项目三个时间粒度。

  迭代是五阶段方法论的闭环。完成一个项目，和建设一个越来越强的落地能力，三年前看起来差不多，三年后差异巨大。
tags:
  - FDE迭代
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
  image: /images/cover/AioGeoLab-cover-tgje-162-iteration-by-design-not-memory.png
  alt: tgje-162-iteration-by-design-not-memory
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-162-iteration-by-design-not-memory c n f uv i w b
publish:
  slug: tgje-162-iteration-by-design-not-memory
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-162-iteration-by-design-not-memory-FDE迭代设计：靠机制，不靠记忆.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-162-iteration-by-design-not-memory-FDE
      迭代设计机制转化.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-162-iteration-by-design-not-memory-破解AI落地的结构性失忆.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-162-iteration-by-design-not-memory-FDE
      Iterative Mechanism/11页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1782430830-tgje-162-iteration-by-design-not-memory-FDE%20%E8%BF%AD%E4%BB%A3%E8%AE%BE%E8%AE%A1%E6%9C%BA%E5%88%B6%E8%BD%AC%E5%8C%96_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-162-iteration-by-design-not-memory-FDE
      迭代设计机制转化_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao37GAH3bpxGV9Nsc-F18xHyMnAS2_KbqiT9E4WxPxXe20
    video_vid: wxv_4577469775420686339
    video_cover_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNV54KKlggzB13fiaKLGbewTOkQ5ZIhpzIIBnG1okqibQwsrxj9TyAarRF3QxlVjoFsyiaj5UgHUncZTPrx4mlJIibZDyEVaCZdLmeA/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNV9ndbK2Olduia72a3Wv11nYLzjCfHQ24YGtpjhCoDLJHJ3b0e8noCJBG5PUaGwISNVy6qFMXIhKy8zkSbUwSz84VHwaX8FJkss/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3wPMhwMZyDVnCfWSci-mjLENquPpj5CvrAH2CgL1fUeT
    draft_created_at: 2026-06-26 08:42
    video_media_id: lEmH66TSP501Rw-1R2Ao3xjxZybrqPn0TWCnsUrEggMhfDp1OQrI08UBZJRSC9qU
    body_image_cache:
      https://p.vibcx.com/x/2026/06/1782433859-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUn1fp8hRcictfZQ5iaCdv998v3VZ2ctriaM2jiauhCZa5wKlOuvrBnPDPHhMCTzGiazKKSTVmAToX5yhNlgNTic1vczJqdf4IS5grV8/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782433877-03%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNX8cSrC6BXu3c8EDYA2UrEneSGoyhaotSVLgpNSpOu8c08v7tCAWEHeEcT1Ggow7SuOLfNRPibcRc92cbv3dk0SOzaqsunAKJhc/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782433897-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVTDMwcrgRDsaiaVKsTOEBoGicjZjsAzGoeMJUgsBMOC4rk4oKIVtZGfwzpib5Z4ALhbU9KdDDIb88bAogK4Y0A7RoqMHeWHib58fg/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782434087-06%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUl1MLYoYmlGK19w5MSskaZqqUEyRxr0Nc5h2rjWd0ZKtUXBh7kQR6RuDqsTftd5xmXsrfnBowes97EYdIbdh2PgB61iabLVnuE/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782434164-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNU5A8rhebPdniaXO37q0x44u0m374VT8hYVNRqrUXb5ZnLZDNouwb5aUv5nsCUNFA4MREFGsLWoSU16XmPLh8JGcd2WSFWGhoKw/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782434189-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXmoHibHiapSP40XPYgfJRQJe9ksp5fpQciaIYjxtTK38OGWwraRjQ8nP3xQW5R7EILHDd9nboEgpeuGiaOwDDBkjlAXO3EySnupwI/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782434249-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNVdia2s63PaicBXFgFQ7icTh5PcWibbs0iac0WUMvG9Oic9vLHUZXKIqdQicF4qU01u4122VYFKTIiaUq7cWUeNhACBSSoTXSmwpk9g04o/0?from=appmsg
      https://p.vibcx.com/x/2026/06/1782434273-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVPM1q05WKcM4ic8RfHxia45MdvXVftvYQOMWVcicmTs0Fhxyqb9unp7pickntBWymMZVqicMdVKicXSSBBkTiaplicPhPnNZkqVqdtxYY/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
---
# FDE迭代设计：下次更快，靠的不是记忆，是机制丨把五个主体阶段串起来的那根线

上一篇我们讲了FDE的价值量化——量化不是项目结束后的总结，是第一天就要设计的机制。

这一篇是这个逻辑的延伸，也是整个系列的收口。

价值量化解决的是"这个项目值不值"的问题。迭代设计解决的是另一个问题：**这次学到的东西，下次能不能真正用上。**

这两件事听起来都像常识，但几乎所有FDE团队在两件事上都会翻车。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmqu56wm10q8501yvhny15dd9" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 一个几乎所有团队都经历过的失落

项目刚结束的那段时间，团队状态通常很好。

大家刚经历了五个月的陪跑，从发现阶段的需求翻译，到原型阶段踩的那些坑，到部署阶段夜里收到的告警，到最后用户终于开始自己接管系统。

然后开了一个两小时的复盘会。

有人分享了评测标准建立得太晚的教训，有人总结了和IT团队对齐节奏的经验，有人提炼了陪跑期间找到内部推动者的关键时机。大家都觉得很有收获。记录文档发到了群里。

![02页.png](https://p.vibcx.com/x/2026/06/1782433859-02%E9%A1%B5.png)


三个月后，新项目。新的客户，类似的行业背景，结构上非常接近上一次。

新的FDE进场。

第六周，他们在IT集成上卡住了。第九周，他们发现评测标准建立得太晚，已经来不及在用户验收前补上。第十三周，陪跑阶段推进乏力，找不到内部推动者。

这不是能力问题，也不是态度问题。上次的经验在文档里，在记忆里，就是没有进入任何一个下次能自动起作用的地方。

* * *

## 经验流失是结构性问题

大多数团队遇到这个情况，会把责任归到"没有做好知识沉淀"，然后决定"下次要更认真地复盘"。

这个诊断是错的。

![03页.png](https://p.vibcx.com/x/2026/06/1782433877-03%E9%A1%B5.png)


认真程度不是根本问题。即便复盘做得再认真，仍然有三个结构性原因让经验无法进入系统：

**第一，经验住在人脑里。**

只要没有被转化成某种外部结构——评测框架的一条规则、连接器文档的一个注意事项、陪跑SOP里的一个触发条件——它就依赖人来传递。人离职，带走；人换组，带走；人忙，顾不上传，也带走。这不是个人问题，是存储介质的问题。

**第二，复盘产出的是结论，系统需要的是信号。**

"下次要更早和IT对齐"是一个结论，听起来有道理，但它进不了任何系统。它没有告诉你：在什么具体场景下，IT介入延迟会带来集成风险？怎么识别这个场景正在发生？触发什么行动？

![04页.png](https://p.vibcx.com/x/2026/06/1782433897-04%E9%A1%B5.png)

能驱动系统变化的不是结论，是**带条件的观察**：当客户IT团队在第三周还没有指定对接人的时候，后续集成阶段平均延迟11天。这样的信号，才能变成评测流程里的一个检查项，或者陪跑SOP里的一个预警条件。

**第三，最有价值的信号只在现场存在。**

项目结束三个月后，很多细节已经不存在了。用户第一次绕过系统是在哪一天、当时说了什么、前后发生了什么——这些在现场是鲜活的观察，在复盘会上已经是模糊的印象。

事后回忆提炼的经验，粒度不够，细节已丢失。真正的信号，只能在它还热的时候捕获。

* * *

## 迭代反哺的三个层次

理解了流失的根本原因，解法就比较清楚了。

不是要更努力地复盘，而是要在**信号还热的时候把它捕获，并且把它转化成系统能识别和使用的格式，最后验证它真的在下一次起作用了**。

这是三件不同的事，分三个层次来设计。

### 层次一：信号捕获——什么值得记，记在哪里，谁来记

![06页.png](https://p.vibcx.com/x/2026/06/1782434087-06%E9%A1%B5.png)

大多数团队的记录习惯是随机的：想到了就记，没想到就算了，记在自己顺手的地方，没有人负责这件事。

随机捕获等于没有捕获。

信号捕获需要三个设计决策：

**什么值得记。** 不是所有观察都值得进入系统。值得捕获的信号有一个特征：它揭示了某个你的方法论没有预料到的情况，或者确认了某个你预判的风险真实发生了。具体来说：用户行为偏离了你的预期（绕过、拒绝、使用方式不对）；系统表现偏离了评测基线；某个阶段的推进阻力来自你没有预判到的地方。感觉良好的正常推进，不需要特别记录。

**记在哪里。** 要记在下次能被找到的地方，而不是个人笔记里。每个项目需要一个共享的现场日志，日志的格式是结构化的——至少包含：日期、阶段、发生了什么（事实描述，不是结论）、当时的判断和处理、后续影响。这个日志在项目内部可见，项目结束后归档到团队级别。

**谁来记。** 不能靠自觉。要有人对这件事负责——通常是该阶段的负责FDE，而不是轮流或自愿。记录不是额外任务，是交付物的一部分。

* * *

### 层次二：信号转化——从观察到系统变更

![07页.png](https://p.vibcx.com/x/2026/06/1782434164-07%E9%A1%B5.png)

捕获之后是转化。这一步是最容易被跳过的，也是三个层次里最难的。

信号转化的问题是：**谁来判断这个信号值不值得改变系统设计，怎么改？**

靠个人判断是不够的，个人的优先级总是被当前项目占满。要有机制。

篇09产品化阶段提到了每周产品化评审机制——这个机制在这里也发挥作用。信号转化的触发点，是在每个阶段结束时的中度归纳环节，把这个阶段累积的现场日志拿出来，做一件具体的事：**识别哪些观察可以转化为系统设计变更**。

转化的判断标准只有一个：**如果把这个观察加入评测框架/连接器设计/陪跑SOP，下次遇到类似情况，结果会不一样吗？** 如果答案是会，就转化；如果只是"很有意思"但改不了任何东西，就归档备用，不进系统。

转化的格式很重要。不是"经验总结"，是变更提案：

-   **变更对象**：哪个具体的资产（评测框架第几条、哪个连接器的文档、哪段SOP）
-   **变更内容**：加什么、改什么、删什么
-   **触发条件**：在什么场景下这个变更会起作用
-   **来源信号**：哪个项目的哪次观察

这个格式本身就是知识沉淀——它是可以被下一个FDE直接使用的，不需要靠记忆传递。

* * *

### 层次三：验证闭环——确认这次的改变真的起作用了

![08页.png](https://p.vibcx.com/x/2026/06/1782434189-08%E9%A1%B5.png)

信号转化完成之后，还有一个层次：**验证**。

不验证，就不知道这次的系统设计变更是真的改善了问题，还是只是让大家感觉做了些什么。

验证的方法很简单：在下一个类似项目开始时，把上次做的系统设计变更明确告知进场的FDE，并且在项目推进中对相应环节做定点观察——这个场景发生了吗，这次的结果和上次有什么不同，变更是否起到了预期的作用？

这个验证动作不需要消耗很多时间，它只需要在进场准备阶段加一个步骤：**查一下这个客户所属的行业和场景，有没有来自历史项目的待验证变更**。有就带上。

没有验证闭环，迭代就是单向的——只有输入，不知道输出。你不知道自己是在建设能力，还是在积累文档。

* * *

## FDE团队的迭代节奏设计

![09页.png](https://p.vibcx.com/x/2026/06/1782434249-09%E9%A1%B5.png)

三个层次解决了"做什么"的问题。"什么时候做"同样需要设计。

这里有一个容易掉进去的陷阱：把迭代当成项目结束后才开始的事情。等到项目结束，最好的信号已经消失了。

迭代节奏有三段，分别对应不同的粒度和动作：

**每天/每周：轻量捕获。**

这是成本最低、时效性最强的一层。每天的现场日志更新，不需要判断，只需要记录：今天发生了什么值得注意的事，用一两句话描述事实。这件事如果不形成习惯，所有后续动作都是在沙地上建楼。

**每个阶段结束：中度归纳。**

每过完一个阶段（发现、原型、部署、产品化、交接），把这个阶段的现场日志拿出来做一次集中回顾。这时候阶段经验还新鲜，细节还在。问两个问题：这个阶段有哪些观察值得转化为系统变更？哪些在下个阶段还需要继续观察？这一步产出的是具体的变更提案，不是经验总结。

**每个项目结束：深度资产化。**

这是三段里成本最高的一层，也是唯一需要系统性时间投入的一层。产出是更新后的资产版本：评测框架迭代、连接器文档更新、陪跑SOP修订。

三段节奏的分工是清晰的：轻量捕获保证信号不流失，中度归纳把信号转化为变更提案，深度资产化把变更真正写入系统。三段缺一，闭环就断在某个地方。

* * *

## 写在最后

到这里，FDE落地工程的五个主体阶段全部走完了一遍，每个阶段的具体细节，之后我们进一步展开。

发现、原型、部署、产品化、交接——每个阶段都有自己的方法论逻辑。但它们是一个整体，不是五件独立的事。把它们串起来的那根线，就是迭代。每次现场学到的东西，如果没有进入下一次的发现、原型、部署，那就只是完成了一个项目。

![10页.png](https://p.vibcx.com/x/2026/06/1782434273-10%E9%A1%B5.png)


下一期，我们看一下国内到底有没有FDE，谁在扮演这个角色。

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。
