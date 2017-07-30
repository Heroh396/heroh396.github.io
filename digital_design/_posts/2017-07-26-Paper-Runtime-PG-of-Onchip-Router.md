---
layout: post
title:  Paper Run-time Power-Gating of On-chip Router Using Look-ahead Routing
date:   2017-07-26 10:41
teaser: This is a paper in power-gating project.
image: https://heroh396.github.io/imgs/typing_keyboard.jpg
author: heroh396
comments: true
redirect_from: "/buzz/2017/07/26/look-agead-routing-pg/"
shortUrl: 
---

## Overview

### Concept
run-time 	: thoi gian hoat dong 
look-ahead 	: nhin xa 
injection 	: su phun 
attractive solutions	: hap dan 
short-term sleep	: giac ngu ngan 

### Abtract
Purpose: sleep control method based on look-ahead routing that detects the arrival of packets two hops ahead
-  hide the wake-up delay; and reduce the short-term sleeps of channel 


## Feature

### Intro
Power consumption = dynamic switch power + static leakage power 
- Switch power : use (clk gating, operand isolation), smaller when scaled down
- Leakage power : use (multi-threshold voltages, PG), increase
Architecture and pipeline:
- ![arch_pipe]({{site.url}}/imgs/digital_design/look-ahead-arch_pipeline.png)
