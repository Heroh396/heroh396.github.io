---
layout: post
title:  Paper Run-time Power-Gating of On-chip Router Using Look-ahead Routing
date:   2017-07-26 10:41
teaser: This is a paper in power-gating project.
image: https://heroh396.github.io/imgs/typing_keyboard.jpg
author: heroh396
comments: true
redirect_from:
shortUrl: 
---

## Overview

### Concept
run-time 		: thoi gian hoat dong 
look-ahead 		: nhin xa 
injection 		: su phun 
attractive solutions	: hap dan 
short-term sleep	: giac ngu ngan 
wh (wormholle)	: wh routing, wh switching

### Abtract
Purpose: sleep control method based on look-ahead routing that detects the arrival of packets two hops ahead
-  hide the wake-up delay; and reduce the short-term sleeps of channel 


## Feature

### Intro
Power consumption = dynamic switch power + static leakage power 
-	Switch power : use (clk gating, operand isolation), smaller when scaled down
-	Leakage power : use (multi-threshold voltages, PG), increase

Architecture and pipeline:
![arch_pipe](https://heroh396.github.io/imgs/digital_design/look-ahead-arch-pipeline.png)

Look-ahead routing
-	Trong trường hợp router thông thường, 1 kênh output tại router hop thứ i được chọn bởi RC stage của chính router đó (router hop i). Fig 2 
-	Trong trường hợp one-hop look-ahead router, mặt khác, 1 kênh output của router hop thứ i được chọn bởi rouer hop (i-1). Tức là mỗi router thực hiện định tuyến cho hop tiếp theo (được biểu thị là NRC). Fig 4 

Basic sleep control 
-	Mỗi kênh input quảng lý 1 "request" signal, cho biết new packet đến kênh input, dùng để quyết định chuyển sang active mode. Và nếu kênh input kiểm tra request signal khi chuyển tiếp gói tin trong kênh, nếu kênh bị hủy thì chuyển về sleep mode. 
-	Hiểu suất penalty do wake-up delay phụ thuộc vào khả năng phát hiện sớm các new requests. 


Look-Ahead Sleep Control on Deterministic Routing
-	Routing algorithm phân loại thành:
	+	determistic (cố định)
	+	adaptive (thích nghi)
	+	This paper talk about dermistic routing 
-   ![request signal]({{ site.url }}/imgs/digital_design/request_signal_in_look-ahead-paper.png)
-   Call South channel of router 1 is "target". The target channel monitor (quan ly) request signal from input channel in router 3, 5, 7 to make decision. 
-   The *colored input channel* assert (xac nhan) their request signal for the target channel when packet destined for router 1. 
-   Critical path twice long (dai gap 2 lan), so can using 2 clock cycle to tranfer for target channel, khi do co the phat hien som hon 4 chu ki 
-   
