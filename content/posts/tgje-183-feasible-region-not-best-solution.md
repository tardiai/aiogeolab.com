---
title: 为什么很多AI项目，从立项那天就已经失败了？丨FDE重新理解工程可行域
date: 2026-07-18
draft: false
coverKeyword: 技术边界和现实边界
description: IBM Watson for Oncology曾经问题成立、预算成立、技术成立、市场成立——最后还是失败了，而失败原因几乎没有一条跟模型能力有关。这篇文章重新理解AI项目里的可行域：一个问题值不值得解决，和它在现实里存不存在解，是两个独立的问题。
tldr: |-
  2012年IBM与MSK癌症中心合作开发Watson for Oncology，问题成立、预算成立、技术成立、市场成立，最后还是失败了——被曝光的失败原因，几乎没有一条是模型能力不够。

  "只要问题重要，技术团队总能找到办法"不是盲目乐观，是真实经验支撑的判断。真正的错误，是把"技术上存在理论解"等同于"现实中存在能走通的工程解"。

  可行域不是一张清单，是一只木桶——数据、成本、时延、监管、组织能力，只要一条不满足，解就不存在。Watson撞上的，是训练数据来源太窄、医学知识迭代太快、不同医疗体系无法套用、以及没有人愿意为AI的错误负责这几条约束。

  问题值不值得解决，和它有没有现实里的解，是两个独立的问题。下一个问题是：如果可行域本身就这么窄，组织是不是也该学会主动放弃一些看起来值得做的项目？
tags:
  - 工程可行域
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
  image: /images/cover/AioGeoLab-cover-tgje-183-feasible-region-not-best-solution.png
  alt: tgje-183-feasible-region-not-best-solution
  caption:
schema:
  type: BlogPosting
  wordCount: auto
  dateModified: auto
ShowToc: true
TocOpen: true
image:
commands: /Users/wyh/baidusync/OneAILtd/VibCX/tarditools/apublish/pub.sh tgje-183-feasible-region-not-best-solution c n f uv i w b
publish:
  slug: tgje-183-feasible-region-not-best-solution
  status: wx_draft_created
  paths:
    cover_img: null
    video: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-183-feasible-region-not-best-solution-耗资百亿的AI巨头：IBM
      Watson的陨落.mp4
    infographic: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-183-feasible-region-not-best-solution-AI项目失败深度解析.png
    audiocover: null
    audio: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/Audio/tgje-183-feasible-region-not-best-solution-顶配AI为何必败.mp3
    slides: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality.pdf
    slides_images:
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/01页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/02页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/03页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/04页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/05页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/06页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/07页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/08页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/09页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/10页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/11页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/12页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/13页.png
    - /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/ppt/tgje-183-feasible-region-not-best-solution-AI
      Engineering Reality/14页.png
  cdn:
    infographic_url: https://p.vibcx.com/x/2026/07/1784240837-tgje-183-feasible-region-not-best-solution-AI%E9%A1%B9%E7%9B%AE%E5%A4%B1%E8%B4%A5%E6%B7%B1%E5%BA%A6%E8%A7%A3%E6%9E%90_1280_714.jpg
    infographic_1280: /Users/wyh/baidusync/OneAILtd/aiogeolab.com/myfiles/infographic/tgje-183-feasible-region-not-best-solution-AI项目失败深度解析_1280_714.jpg
  wechat:
    cover_media_id: lEmH66TSP501Rw-1R2Ao3xSJ8AjLoNgbura8SCnB4ThOIHziNycTiWi_-WVdHh-E
    video_vid: wxv_4607837503554093057
    video_cover_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNWPsr6mmezfkJouh0zxb8z6b5aqHhdFHEH8KBhD87OKusUsWuRAyPhqwTeibPHn0DT6V2P3KoUIp2wPYxDeH2nelVLHtdOr4moQ/0?wx_fmt=jpeg
    infographic_wx_url: http://mmbiz.qpic.cn/mmbiz_jpg/nzSUaViczUNULiajriazOPex0SMsk0r4XnxjCXST65ibVUqziciapOHoyLic1s51siaND73Q1hX6up2IK8JWcmtJLK9YTxLDtYnZgQ1eJrqyAGUtsjA/0?from=appmsg
    draft_media_id: lEmH66TSP501Rw-1R2Ao3_OoZrlIAPwrMTAToxRrWGB4QImnz0v9hBmUWpJPkFLS
    draft_created_at: 2026-07-17 07:32
    video_media_id: lEmH66TSP501Rw-1R2Ao31DQx1Rsgh8MevHXTtAxaP34z_lz1nu5dOe67HH0wc8m
    body_image_cache:
      https://p.vibcx.com/x/2026/07/1784243627-02%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXHRmUTsaDeB2grbSKtQcjwHOlfhmrIsibiap6EBL1ceLC4RdWEbC1rIdcBsjGxCwtibYMYjTWGzUIAeDqrHJxMR3eiaGQRToQXsdU/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784244295-03%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNU8zIvKMJP1WUAoUAIxt9icPmvXwSoibDicGqPpodRQS6KIeib519N1zahS0bmmbQ8hxDoNfPZ2XEzJtNvRXqqibhZPc1dSadvFJnoE/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784243700-04%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNXdg1AyRjXADY8wL4eP0KibDXRZ21NucwoaJeTqx1QRLX2zib6AbDAZp6sUd1ferAJiaCBVdUf08pladNpZVr88yGv7Yg83RKyZico/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784243847-05%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWTeK9WrvnuFopS6Jeje8l8W9sR8NeoAIduk24opia5HMlOwV1EjG9VQ2fib7wofdZibZgSBjcoCZqL9iaIvhenZAnX88jzgqRiaFI0/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784243880-06%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVJSpQTtXCbSPKSFwOiaKmobYwu8GUTrDufN4XfpKT3ruS252r3wLhAlsB5WNJInoaAicGLIqOHEEIKviczfdibUcMzYOQFXyNRS1E/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784243975-07%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUCU7rrUWic6MSqyqxVk1YahXRCPTCzmNmAaFzM9LOlP790hbtjBH8WBPiaAl4ZpGiaicKGJUZdFUia4fqpawQND9EFLHOBVR0MrJDE/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784243996-08%E9%A1%B5.png: http://mmbiz.qpic.cn/mmbiz_png/nzSUaViczUNXne5DdkElgH4qCzwRp9uzPo1QhG7ksa6luwrOXwt2ddSM9icdiaYpA7ZibvfBCiaGelUjwmibhYOZBqGEo56KBibHKbQZV04T4lQ6nM/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784244004-09%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWicLRgiceChBVibX1jjJbHmfXcHfdYROErJY4dtHstic6piaEibxEb4rc2gL9tDJPLgXtMUibSpEM6D5f5xKINKt82kntqnZr86Av2h4/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784244012-10%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNUGXYIMtiaLZTaex45sV3rTw8BGnLrKongCmPQ9vWOb0aQtJ6ibUKTbX1Ewcmo7iaCLd2nev4KY9aTiakdx0SiaUuf10JoF73q9zj5E/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784244188-11%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNWCo70ibRAG19YdzhUveSau9hmiaMzqB1PmedFtUa7tEFmVLNiajjibDDicFmKFpYvywWaUc7dl9R37OXTVIpNibANCCrpbZolCTDibTo/0?from=appmsg
      https://p.vibcx.com/x/2026/07/1784244086-12%E9%A1%B5.png: http://mmbiz.qpic.cn/sz_mmbiz_png/nzSUaViczUNVPwComSI3rcWTT95dwqTBpB7ct3SFQClbn3bk29WyzInzblg9YLBYiaA0f3qpSwzHXb13DJmUpuR8SoAS7gTBv8Nzl2fUSQxBg/0?from=appmsg
  wx_article:
    digest: null
    original: false
    comment: true
  blog_published_at: 2026-07-17 07:32
---
# 为什么很多AI项目，从立项那天就已经失败了？丨FDE重新理解工程可行域

2012年，IBM与Memorial Sloan Kettering癌症中心（MSK）合作，开发一套辅助肿瘤医生制定治疗方案的系统——Watson for Oncology。2015年，IBM把它做成独立的Watson Health部门，推向全球，先后进入印度Manipal Hospitals等多家医院。

![02页.png](https://p.vibcx.com/x/2026/07/1784243627-02%E9%A1%B5.png)


问题成立——癌症治疗方案的选择，直接关系生死，重要性毋庸置疑。

预算成立——IBM在Watson Health上的收购和建设投入，以数十亿美元计。

技术成立——这是一套刚刚在Jeopardy节目上击败人类冠军的系统，行业公认的顶尖AI。

市场成立——全球医院排着队想要这套系统，愿意为此付费。

![03页.png](https://p.vibcx.com/x/2026/07/1784244295-03%E9%A1%B5.png)


然后，它失败了。2017年和2018年，STAT News两次基于IBM内部文件的调查报道披露，Watson for Oncology给出过"不安全、不正确"的治疗建议。同一时期，IBM与MD Anderson癌症中心合作的另一个独立项目——不涉及MSK、走的是完全不同的团队和路径——也在花费超过6000万美元、耗时三年多后被叫停。两个团队、两套方法，遇上的却是同一类问题，这不太像是某一家医院执行不到位。2022年，IBM把Watson Health资产打包卖给私募股权公司Francisco Partners，重组为Merative，Watson for Oncology本身停止服务。

**给出的失败原因分析，几乎没有一条，是模型能力不够。**


<!-- audiovideo-start -->  
> <small>NotebookLM的音视频概览，解读的比较通俗易懂，对于时间比较紧张的读者朋友，可以听听，会有启发。
</small>
<iframe title="AioGeoLab" src="https://open.firstory.me/embed/story/cmro2ujif0f6u01xbeiadaf27" height="180" width="500" frameborder="0" scrolling="no"></iframe>
<!-- audiovideo-end -->

* * *

## 技术边界和现实边界，从来不是同一条边界

"只要问题足够重要，技术团队总能找到办法"——这个预期不是盲目乐观。过去二十年，技术确实在不断突破原有边界，组织有充分的真实经验支撑这套判断。真正的问题出在后半句：组织在不知不觉中，把"技术上存在理论解"，等同于"现实中存在一条能走通的工程解"。

**理论技术边界和工程现实边界，从来不是同一条边界。**

![04页.png](https://p.vibcx.com/x/2026/07/1784243700-04%E9%A1%B5.png)


Watson撞上的，不是模型能力的天花板，而是现实约束先于模型能力，提前变成了那道更矮的瓶颈。它的推荐质量确实存在泛化不足、数据偏差这些问题——但这些问题本身，也是"训练数据从哪来""组织能不能持续喂给它足够多样的真实病例"这类现实约束逼出来的结果，而不是算法能力天生不够。Watson被曝光时，是被MSK少数几位医生提供的"假设病例"训练出来的，不是被真实世界里成千上万个病人的数据训练出来的——这从一开始，就不是一个模型能力问题。

* * *

## FDE重新理解工程可行域

**真正的工程建设，从来不是寻找理论最优解，而是在数据、成本、时延、监管、组织能力共同形成的约束空间里寻找解。** 这就是工程可行域（Feasible Region）。

![05页.png](https://p.vibcx.com/x/2026/07/1784243847-05%E9%A1%B5.png)

可行域不是一张需要逐项打勾的清单，而是一只“木桶”——盛水的高度，由最短的那块木板决定。数据满足，预算满足，模型满足，需求满足，只要其中任何一条约束不满足，这个解在现实里就不成立。工程世界的逻辑是"并且"，不是"或者"：不是五条里做对大多数就够了，是五条必须同时成立，解才真正存在。

![06页.png](https://p.vibcx.com/x/2026/07/1784243880-06%E9%A1%B5.png)


* * *

## Watson撞上的四条约束线

数据约束：Watson用来训练的，是MSK少数几位医生提供的"假设病例"，而不是真实世界里大规模、多样化的病人数据。一家医院的诊疗风格，被当成了整个学科的知识来源。

![07页.png](https://p.vibcx.com/x/2026/07/1784243975-07%E9%A1%B5.png)

组织能力约束：MSK的医生和IBM的工程师，花了近六年时间，才把Watson训练到能覆盖七种癌症。而癌症治疗指南本身迭代得极快——曾有一次，全球肺癌治疗的指南在一场学术会议之后，一周之内就整体改变。用六年追赶一周就能变化的知识，这条约束线从一开始就没打通。

![08页.png](https://p.vibcx.com/x/2026/07/1784243996-08%E9%A1%B5.png)

实践差异约束：MSK这一家美国顶尖医院的治疗偏好，无法直接套用到其他国家、其他医疗体系里——不是因为数据不够多，而是因为诊疗习惯、医保支付方式、当地能买到的药物和检查手段，本来就是不同的现实。哪怕Watson学会了全世界所有的真实病例，这条约束依然存在，因为它要适配的不是"知识够不够全"，而是"这套知识能不能套进另一个完全不同的医疗现实"。

![09页.png](https://p.vibcx.com/x/2026/07/1784244004-09%E9%A1%B5.png)

激励约束：如果AI给出的治疗建议错了，谁负责？这是医院、医生、保险公司、法务共同构成的责任结构问题，不是技术问题。即使模型准确率做到很高，现实里也可能没有人愿意承担"听从AI建议、结果出了事"这份责任。**有时候阻止一个方案进入现实世界的，不是能力不足，而是没有人愿意承担错误发生后的责任。**

![10页.png](https://p.vibcx.com/x/2026/07/1784244012-10%E9%A1%B5.png)

这四条约束线，只要有一条走不通，整个项目就无法真正落进可行域，哪怕其余几条都已经打通。Watson for Oncology几乎在每一条上都留下了缺口——这也是为什么"问题重要、预算充足、技术存在、市场愿意买单"这四个看似构成成功条件的因素，合在一起也没能换来一个真正能落地的解。

* * *

## 不是值不值得解决，而是现实世界里有没有解

过去，模型能力增长慢，"能不能做出来"这件事本身就很难，组织的注意力自然都放在推动技术往前走。现在，模型能力增长的速度已经远远超过组织建设的速度——技术上能不能做，几乎不再是问题；真正拦住一个项目的，是数据从哪来、组织能不能跟上迭代节奏、谁来为错误负责这些约束。

![11页.png](https://p.vibcx.com/x/2026/07/1784244188-11%E9%A1%B5.png)

一个问题值不值得解决，和这个问题在现实里存不存在解，是两个独立的问题，前者成立不代表后者也成立。真正该问的是：这个方案在数据、成本、时延、监管、谁来负责错误这几条约束线上，有没有一条，无论投入多少资源都跨不过去？

* * *

## 写在最后

问题重要、预算充足、技术存在、市场愿意买单，这些条件加在一起，只回答了"值不值得做"，没有回答"有没有一条现实里走得通的路"。可行域从来不是五个可以逐项优化的维度，而是一整块由最短那条约束决定的“木桶”——找不到解，往往不是哪一条能力不够，而是某一条约束，从立项那天起就没有人真正去验证过。

![](https://p.vibcx.com/x/2026/07/1784244086-12%E9%A1%B5.png)

可如果可行域本身就这么窄，是不是意味着，组织真正该学会的，不只是判断一个问题有没有解，还要学会主动放弃一些看起来值得做、技术上也走得通，但资源投入下去收益依然有限的项目？

* * *
*<small>感谢你看到最后，如果你觉得有启发，随手点个赞、在看、转发吧，如果想第一时间收到推送，也可以给我加个星标⭐我们下期见。</small>*

> 我是「**AioGeoLab**」主理人塔迪Tardi，AioGeoLab是深度洞察AI第一性原理和应用实践的前瞻性研究实验室，目前有两个主要研究方向： <br>
> 「**塔迪GEO判断工程**」在AI从“说”到“做”进化阶段，试图回答，如何让AI敢于行动、不因为责任问题而畏手畏脚，而做的一个前沿研究项目。<br>
> 「**塔迪硅基禅心**」是传统东方智慧、未来AI前沿、当下应用实践，深层共鸣的探索。不是用AI解读经典，也不是用经典指导AI。 这是一场跨越2500年的对话，在算法与古老智慧之间，照见意识、智能与存在的本质。<br>  塔迪的微信 - **tardyai2025**。