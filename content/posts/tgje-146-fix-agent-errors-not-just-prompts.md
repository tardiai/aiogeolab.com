---
title: Agent出错了，改提示词就能修复？丨Agent误解系列
date: 2026-06-11
draft: false
coverKeyword: Agent出错分两种类型
description: Agent出错了，第一反应是改提示词？这是误解校正系列第16篇。提示词只影响Agent的行为倾向，改不了工具缺失、权限不足、验收标准缺失这类结构性问题。本文拆解出错的两种类型，给出一个在改提示词之前先做诊断的简单方法，帮你把修复时间花在真正有效的地方。
tldr: |-
  Agent跑偏了，打开提示词开始修改——这个反应几乎是本能的，而且有时候确实奏效。但有一类出错，提示词改多少遍都没用，因为问题根本不在那里。提示词能影响的是行为倾向：任务理解方向、输出格式、语气风格。提示词影响不了的是执行条件：工具有没有、权限够不够、验收标准在不在。


  出错分两种类型。行为问题：Agent做的和你说的有偏差，表达更清楚、约束写成可验证形式，提示词能修复。结构问题：工具缺失、权限不足、任务边界没设计好，执行条件没变，提示词改再多问题还在原地。同一个症状可能来自两种根源——Agent总是用错收件人，可能是理解问题，也可能是权限问题，修复方向完全不同。

  出错之后先问两个问题：换一种表达方式，这个错误能避免吗？这个错误，是因为Agent缺少某种能力或信息才发生的？前者是行为问题，改提示词；后者是结构问题，去动执行环境。提示词改了两三遍还没用，是一个信号——不是表达问题，是问题类型判断错了。改对地方，比改得快更重要。
tags:
  - 出错类型
  - Agent
  - 判断工程
  - 智能体
  - 生成式引擎
  - AI
  - GEO
  - 误解系列
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
  image: /images/cover/AioGeoLab-cover-tgje-146-fix-agent-errors-not-just-prompts.png
  alt: tgje-146-fix-agent-errors-not-just-prompts
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-146-fix-agent-errors-not-just-prompts c n f uv i w b
publish:
  slug: tgje-146-fix-agent-errors-not-just-prompts
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-146-fix-agent-errors-not-just-prompts-修复AI
      Agent：提示词陷阱.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-146-fix-agent-errors-not-just-prompts-Agent
      问题诊断修复指南.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-146-fix-agent-errors-not-just-prompts-AI出错别只改提示词.mp3
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/06/1781046426-tgje-146-fix-agent-errors-not-just-prompts-Agent%20%E9%97%AE%E9%A2%98%E8%AF%8A%E6%96%AD%E4%BF%AE%E5%A4%8D%E6%8C%87%E5%8D%97_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-146-fix-agent-errors-not-just-prompts-Agent
      问题诊断修复指南_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao35yMKr6K1eFVCkA8evz4irx_Mhr4rDQE6QrBWMbARuOm
    video_vid: wxv_4554244386825748481
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNUAn8HjIUO5hJ6flx2rvsI0pK102krqI4mzCfib8DzAPmMS88LEjWBtStkyYo8fn3Qib0gKRfmiaaUcrwG6WOmJN7aDSfQItfZicgE/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/sz_mmbiz_jpg/nzSUaViczUNVAohqaLWQSVVHvoStOLRia3etMH89OSPU1g9uwsy5r3W5IMg5ibjkHzna2Y6emUWUicLb4d8OQnvtPoywGw95YMTpbGDtG1CAytw/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao31Bkv3uQILraFXR7IE5nohhzBkB9Phk4owCCE66CczDg
    draft_created_at: 2026-06-10 07:07
    video_media_id: lEmH66TSP501Rw-1R2Ao35B-QXp9HI7sJDOIaAg61tMSNPLs6n-F7Mr9c9HNo4SJ
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-06-10 07:07
---
# Agent出错了，改提示词就能修复？丨Agent误解系列
<!-- infographic-start -->
![信息图](https://p.vibcx.com/x/2026/06/1781046426-tgje-146-fix-agent-errors-not-just-prompts-Agent%20%E9%97%AE%E9%A2%98%E8%AF%8A%E6%96%AD%E4%BF%AE%E5%A4%8D%E6%8C%87%E5%8D%97_1280_714.jpg)
<!-- infographic-end -->


Agent跑偏了，你本能反应是修改提示词，有时候确实奏效——改完再跑，问题消失了。于是这个动作就固定下来了：出错了，先改提示词。

但有一类出错，提示词改多少遍都没用。不是你没找到正确的表达方式，是问题根本不在那里。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmq78rqjz00qu01x816244jg2" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 为什么提示词成了默认修复工具

提示词是人与Agent之间最直接的接触点，也是改起来门槛最低的地方——打开，修改，保存，重新跑一遍。整个过程不需要理解底层结构，不需要动配置，直接就能操作。

出错了改提示词，就像机器出了故障先检查开关。不是因为开关最可能有问题，是因为它最容易够到。

这个习惯不是错的，是不完整的。它把一个"先诊断再修复"的过程，压缩成了"直接修复"。跳过诊断的代价是：你在一个不会解决问题的地方，反复投入时间。

* * *

## 提示词能影响什么，影响不了什么

要判断改提示词有没有用，先要清楚提示词的边界在哪里。

**提示词能影响的**：Agent的行为倾向、任务理解方向、输出格式、语气风格。这些都是"怎么做"层面的事情——你希望它以什么方式、什么结构、什么语气完成任务。

**提示词影响不了的**：工具有没有、权限够不够、验收标准在不在、执行环境的结构性设计。这些是"能不能做"和"做完怎么判断"层面的事情。

两个例子可以把这条边界说清楚。

第一个：你配的Agent没有联网工具，提示词里写"请搜索最新数据后给出分析"。指令是清楚的，执行不了，因为工具不在。提示词改得再精确，Agent拿不到网上的数据，它只能用训练数据里有的东西生成一个看起来合理的回答——而你可能以为它真的搜了。

第二个：你让Agent整理报告，提示词里写"请确保输出准确"。这是一个没有依据的要求——"准确"对照什么标准？Agent没有你的验收标准，它唯一能做的是生成一个它自己认为合理的结果，然后认为任务完成了。提示词里的"准确"这个词，对最终结果的质量没有任何约束力。

* * *

## 出错的两种类型

区分出错类型，是决定改哪里的前提。

**行为问题**：Agent做的和你说的有偏差——理解方向跑偏、格式不对、语气不符合要求、重点抓错了。这类问题的根源是"你说的"和"它理解的"之间有落差，提示词是有效的修复工具。说得更清楚、把关键约束放到显眼的位置、把模糊要求改成可验证的形式——这些调整在这类问题上有效。

**结构问题**：工具缺失、权限不足、验收标准没有、任务边界没有设计好。这类问题的根源在执行环境，不在表达方式。提示词改再多，Agent的执行条件没有变，问题不会消失。

举个能把两种类型区分开来的例子：你让Agent发邮件，总是用错收件人。

如果是理解问题——你的指令里收件人信息不明确，Agent自己推断了一个——改提示词有效，把收件人信息写清楚，或者要求Agent在发送前确认一遍。

如果是权限问题——Agent拿到的通讯录权限不完整，它访问不到正确的联系人信息——改提示词没用，要去动权限配置，给Agent正确的数据访问范围。

同一个症状，两种根源，两个完全不同的修复方向。

* * *

## 出错之后，先诊断再修复

在改提示词之前，先问自己两个问题。

**第一个问题：换一种表达方式，这个错误能避免吗？**

如果答案是"可能"——说得更具体一点、把关键信息放到前面、把要求写成可验证的形式——这是行为问题，改提示词方向对了。

**第二个问题：这个错误，是因为Agent缺少某种能力或信息才发生的吗？**

它没有工具、权限不够、任务完成了但没有标准来判断对不对——这是结构问题，要去动执行环境，不是提示词。

两个问题加在一起，基本能判断问题类型。判断完了再动手，比一上来就改提示词，节省的时间和精力会比你想象的多。

* * *

## 提示词改了还是没用，说明什么

提示词改了两三遍，问题还在——这本身就是一个信号。

不是你表达能力的问题，大概率是问题类型判断错了。你在一个行为问题的框架里，处理一个结构问题。

这时候应该停下来，换一个角度看这个错误：Agent是没有被正确引导，还是根本没有能力或条件做到？

如果是后者，继续改提示词是一个成本越来越高、收益越来越低的循环。真正有效的修复，是找到结构性的缺口，然后补上去——补工具、调权限、加验收节点、把任务边界设计清楚。

这套思路有一个名字，叫Harness Engineering（可以理解为，执行环境工程）：每当Agent犯错，不只是调整当次的提示词，而是去设计一个让Agent不会再犯同样错误的执行结构。这是把修复从"治标"变成"治本"的过程。

* * *

## 写在最后

提示词是Agent行为的方向盘，不是执行环境的修复工具。

方向盘能决定往哪里走，决定不了路够不够宽、工具在不在、油够不够用。Agent出错之后，先花一点时间判断问题类型，再决定改哪里——是方向盘的问题，还是路和车的问题。

**改对地方，比改得快更重要。**

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」是基于GEO的价值SEO化，在AI从“说”到“做”的重要跃迁阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。