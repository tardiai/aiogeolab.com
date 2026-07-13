---
title: 为什么同样的模型，结果差距却越来越大？丨FDE重新理解AI竞争力
date: 2026-07-13
draft: false
coverKeyword: 工程系统决定结果下限
description: 2026年AI编程工具市场出现一个反常现象：Cursor和GitHub Copilot背后调用的是同一批前沿模型，市场结果却天差地别——一个份额下滑，一个成为史上增速最快的SaaS公司之一。这篇用这个几乎教科书级的案例，拆解一个正在发生的迁移：AI竞争的战场，已经从模型层挪到了工程层。
tldr: |-
  2026年GitHub Copilot在专业开发者中的使用份额从67%跌到51%，同期Cursor不到两年做到20亿美元年化收入——反常的地方在于，两者背后调用的是同一批前沿模型。

  行业默认解释"谁的模型更强谁就赢"在这个案例里直接失灵，因为模型本身相同；这也不是孤例，国内多个行业信号显示基础模型正在快速收敛，模型接入权正在贬值成入场券，不再是护城河。

  真正的差距发生在模型之外那层工程壳层——怎么组织提示词、怎么设计任务规划、怎么筛选上下文，这层东西决定了同一个模型能不能被挖出应有的表现；Copilot装机量最大但份额下滑，说明存量优势和真实竞争力正在脱钩。

  模型决定能力上限，工程系统决定结果下限——企业评估AI战略该问的不是"模型够不够先进"，是"这套工程系统有没有在持续被打磨"。
tags:
  - AI竞争力
  - FDE落地工程
  - AI落地
  - Agent
  - 判断工程
  - 智能体
  - AI交付
  - AI
  - FDE
  - 企业AI落地
  - ClaudeCode
  - AIAgent
  - LLM
  - 大语言模型
  - Hermes
  - OpenClaw
categories: AIAgent
author: 塔迪Tardi
cover:
  image: /images/cover/AioGeoLab-cover-tgje-178-same-model-different-outcome.png
  alt: tgje-178-same-model-different-outcome
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-178-same-model-different-outcome c n f uv i w b
publish:
  slug: tgje-178-same-model-different-outcome
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-178-same-model-different-outcome-伟大的AI悖论：Cursor与Copilot.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-178-same-model-different-outcome-重新理解AI核心竞争力.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-178-same-model-different-outcome-同样的模型Cursor凭什么赢.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2).pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-178-same-model-different-outcome-The
      Engineering Moat (2)/11页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1783809849-tgje-178-same-model-different-outcome-%E9%87%8D%E6%96%B0%E7%90%86%E8%A7%A3AI%E6%A0%B8%E5%BF%83%E7%AB%9E%E4%BA%89%E5%8A%9B_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-178-same-model-different-outcome-重新理解AI核心竞争力_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3y7-B8Ln9nUY2udcQ1IKIGWN40JWnWX7Mm7q0Yyqot_p
    video_vid: wxv_4600606642894897153
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNV8xoOxoaMUVMYXG3pLNCrrg1TD0qRRhH0H5kPzibL6BKgicXwsWF0ZeiaTxNn5CsVXgU1pKEBf6pMwN0dTCMMqSdibtMWQZ3De4no/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWwQJ0vColHVY5UpZib6IonlYw97m5yWYuuQFIeQjPibZnRn1FAbsG6NPJNO8bbg0TjwuKjKiciah0eiaJaEgY0gwBgSic5nG7lbibE9U/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao32MwImQKgJ9XwPCz8dnL4Bocqo8qyYpvrWzZB2TBn89X
    draft_created_at: 2026-07-12 07:36
    video_media_id: lEmH66TSP501Rw-1R2Ao37-1hvptJ1VbhkPm7Uoz_3CJDizKD_3Jbk4DBcTsANRK
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1783812486-02%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXLVXS9VJlK3yVQMrq9LUV75qwBicKQvr5xhRBzuohjqWg9wsSaMTxaq3E7sHYPa6T03CicibWwX9lHasLNIz3ssoJQLj7tPtGywo/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812505-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXTpOZkic68ET2ictJrWN4tQaN0sjjqSa4Xvu5vuia8aBGVWbsRVIyVOLzwE4FiaRE87MdvDAxx8TUymZ6bEtB4L0fXgmrdRpt8DRY/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812540-04%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNW2u6SAVYjydxxjegNn0iaIOpGxic9Df2Mtlkz8XWWnn6GLGhQHmP4Z7ib3N6AqOJRHVmb78mydzEPBjWhZqlARia8BGgKkp5wsEeM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812577-05%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNWal3OpG1ZgIiaZL7XkwINduP8MQINPV2ic3rlPqmDUboSOhJ8sI2Z3N6S1ymEnbm4CFic4z14lf098XRqSfslm3bMTt5s4nIAJlg/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812621-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWzr6H7tERmQcbUef0bNZ0KYjicCBiax2BIKEFzYuzdBTvv8WicrlY2mTYhrOEhDGm2Mz98SeW5Wfj5iblcGzicGueLlbngIC9LY3Os/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812642-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUe4rsPsKAqLXagicu4mF7alAM4F0PUN65FHpjs8XyiarhCPgjkAicqA4oW7dVfJ88JSibjzwy4lTcvTnjZ6Wy4FafniaDtjYxvZDAs/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812667-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNUk2j2o7aTVg5EYX12vvKlyhBsgvSeib2r1tmxfTHTCgKZ4owebqPw3kXX9seFfAEl3QYBbh2Fy3C5pjAictOOt8KKHwcQAhgtTI/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812705-09%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXaNjoGqrD1JDZZia1h8Yh2zghoZOlfkGm8UnUXypCDjHtb6sibyeJSR20SxCbEdCwc4OodTvrrpMYj7AsE5Hpm0MwNBWEVnwAsA/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1783812780-10%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXwo32jZJrQ9ApbDwBPUfpBiaaLibibrN7wZG0YtE7PekBAWibricRkk7gMENp71SrwajianEUm0MzEIm35pjV4QeF2TOLanUG7ZRjSw/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-12 07:37
---
# 为什么同样的模型，结果差距却越来越大？丨FDE重新理解AI竞争力

2026年，Stack Overflow对开发者的年度调查显示了一个反常的数字：GitHub Copilot在专业开发者里的使用份额，从67%跌到了51%。

同一时间段，另一家公司几乎是从零起步，不到两年做到20亿美元年化收入，成为SaaS历史上增速最快的公司之一，三分之二的世界500强都是它的客户——这家公司是Cursor。

![02页.png](https://p.vibcx.com/x/2026/07/1783812486-02%E9%A1%B5.png)

反常的地方不在于有人涨有人跌，市场竞争本该如此。反常在于：这两个工具背后调用的，是同一批前沿模型。Cursor的模型菜单和Copilot的模型菜单几乎完全重合，同样能调用市面上最新一代的几家主力模型。换句话说，一直以为决定输赢的那个变量——模型——是相同的。


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmrgy8wfh01l701tv0ompcifg" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 模型相同，为什么行业默认的解释失灵了

过去几年，解释AI产品竞争力最省事的一句话是："谁接入的模型更强，谁就赢。"这句话在过去基本成立——早两年，Copilot锁定OpenAI一家模型，谁能拿到更强模型的独家或优先接入权，谁就有明显优势。

![03页.png](https://p.vibcx.com/x/2026/07/1783812505-03%E9%A1%B5.png)


但2026年的Cursor和Copilot案例里，这句话直接失灵了。两家公司能调用的模型几乎一样新、一样强，结果却是一个份额下滑、一个增速全行业领先。如果"模型领先"是唯一的解释变量，这个结果不该出现。

这不是孤例。今年国内的几个行业信号，指向的是同一个判断：基础模型的数量正在收敛。百度创始人李彦宏判断，未来AI领域只会剩下少数几个基础模型，但应用层会出现大量在不同方向上成功的参与者——机会真正在那里。中国信通院的报告也是同一个结论：基础模型数量持续收敛，真实场景里的应用效果才是关注重点。

![04页.png](https://p.vibcx.com/x/2026/07/1783812540-04%E9%A1%B5.png)

AI下半场的竞争焦点，已经从"算法精度的天花板之争"，转向"工程落地颗粒度的比拼"。

**模型接入权，正在快速贬值成一张入场券，而不再是一条护城河。** 大家都能拿到差不多的模型，这件事本身不再能解释谁赢谁输。

* * *

## Cursor和Copilot：同样的模型，为什么结果天差地别

Cursor是一家做AI原生代码编辑器的公司，产品建立在VS Code的基础上，主打让开发者用自然语言描述需求，由AI自主完成多文件的代码修改、重构和调试。GitHub Copilot则是微软旗下的老牌AI编程助手，2021年就已经上线，靠着和GitHub、Visual Studio、JetBrains全家桶的深度绑定，长期占据最大的装机量。这是一个规模相差悬殊、但赛道完全重叠的对局：一边是初创公司里增长最快的样本之一，一边是背靠微软全部企业客户关系的既有霸主。

两者都支持在多个前沿模型之间切换，模型菜单高度重合。一份专门测评这两款产品的行业报告点破了这一点：当两个工具背后是同一批模型时，真正被比较的其实已经不是模型本身，是"Harness"（工具围绕模型搭建的工程壳层）——工具怎么组织提示词、怎么设计任务规划的循环、怎么调用外部工具、怎么筛选和组织代码上下文。这层东西，决定了同一个模型能不能被真正激发出它应有的表现。

![05页.png](https://p.vibcx.com/x/2026/07/1783812577-05%E9%A1%B5.png)


这层"壳层"具体体现在哪里？比如面对同一个"重构整个代码库里一个共用函数"的任务，两个工具处理上下文的方式完全不同——一个需要显式命令去扫描全项目，另一个能直接用大白话描述需求，自动定位所有受影响的文件并逐个展示改动。再比如面对超大型代码仓库（几十万个文件量级），两个工具处理上下文检索的稳定性和质量也有明显差距。这些差异，全部发生在"调用模型"这个动作之外——模型收到的请求、模型给出的结果、结果被怎样组织和呈现，中间的每一步都是工程决策，不是模型能力。

![06页.png](https://p.vibcx.com/x/2026/07/1783812621-06%E9%A1%B5.png)


结果上的分化非常直接：Copilot的社区反馈里，持续出现响应变慢、建议质量下滑的抱怨，专业开发者的选择份额一年内跌了16个百分点；Cursor几乎在同一时间窗口里冲到20亿美元年化收入。

但如果只看装机量：Copilot依然拥有超过2600万注册用户，在世界财富100强企业里的渗透率高达90%——这是过去多年企业采购关系和微软生态绑定带来的存量优势，短期内很难被撼动。这个反差恰恰是这篇文章真正想指出的地方：**装机量是过去积累下来的存量优势，和"今天谁能持续把模型用出好结果"，正在变成两件不再同步的事情。** 存量客户还在，但真实的、正在发生的选择，已经明显偏向了另一边。

![07页.png](https://p.vibcx.com/x/2026/07/1783812642-07%E9%A1%B5.png)


* * *

## FDE重新理解AI竞争力

行业一直习惯把AI竞争力理解成一场模型竞赛——谁的模型参数更大、更新更快、跑分更高，谁就赢。这个理解曾经成立，因为几年前模型能力差距确实巨大，接入到更强模型本身就是决定性优势。

![08页.png](https://p.vibcx.com/x/2026/07/1783812667-08%E9%A1%B5.png)

但Cursor和Copilot的案例说明，这个因果链已经悄悄在改变。过去是：模型能力差异，直接导致结果差异。现在是：模型能力已经趋同到不再能解释结果差异，真正拉开差距的，是企业有没有能力持续打磨模型之外那层工程系统——怎么组织任务、怎么管理上下文、怎么把模型的输出变成用户真正能用、愿意用的东西。这套系统不是一次搭建就一劳永逸，需要跟着真实使用不断调整、不断打磨，这也是为什么它比"接入哪个模型"难复制得多。

**模型决定能力上限，工程系统决定结果下限。** 模型好不好，决定了这个产品理论上能做到多好；工程系统扎不扎实，决定了这个产品实际能稳定交付到什么水平。企业之间的AI竞争，早就不是在比谁摸到了更高的上限，是在比谁能把下限做得更扎实、更持续。

![09页.png](https://p.vibcx.com/x/2026/07/1783812705-09%E9%A1%B5.png)

这也是为什么"AI竞争"这个说法本身容易被误读——竞争当然存在，但战场早就从模型层挪到了工程层。搞不清这一点的企业，会把大量精力和预算继续投在"追新模型"上，而真正决定胜负的那部分投入，反而被忽略了。

对企业来说，这意味着评估自己AI战略的问题需要换一个问法：不该问"我们用的模型够不够先进"，该问"我们组织模型输出的这套工程系统，有没有持续在打磨"。这套系统好不好，不来自采购决策，来自能不能把每一次真实使用中发现的问题，持续喂回到工程本身——这也是之前文章「为什么真正的AI能力，都长在项目之外？」里讲过的那条链条：现场经验先变成能被识别的模式，再变成能被工程系统直接吸收的原语。一家企业能不能在AI竞争里站稳，最终看的正是这条链条转不转得动。这层能力能不能被沉淀下来、被复用到下一个产品上，也正是之前的文章「FDE产品化：FDE和外包最本质的分水岭」里讨论过的，FDE和外包之间那条分水岭。

![10页.png](https://p.vibcx.com/x/2026/07/1783812780-10%E9%A1%B5.png)

* * *

## 写在最后

模型会持续迭代，价格会持续下降，能接入哪个模型这件事，会越来越像一张所有人都能买到的入场券。真正决定谁能留在牌桌上的，从来不是模型上限摸到了多高，是那层组织模型、打磨模型的工程系统，有没有被持续投入、持续迭代。

模型决定能力上限，工程系统决定结果下限——护城河早就搬到了下限这一侧。

如果这层工程系统才是真正稀缺的东西，那接下来一个更直接的问题是：谁有能力搭建和持续打磨这套系统？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。