---
layout: post
title:  "Paper: Run-time PG of On-chip Router Using Look-ahead Routing"
subtitle: "A paper about power gating"
date:   2017-07-25
categories: [lab]
tags: [power gating, noc]
permalink: /blogging/run-time-pg/
bigimg: "/assets/img/blogging/lessons/jekyllhomepage.png"
---

## Overview

### Concept
- run-time 		: thoi gian hoat dong
- look-ahead 	: nhin xa
- injection 	: su phun
- attractive solutions	: hap dan
- short-term sleep	: giac ngu ngan

### Abtract
- Purpose: sleep control method based on look-ahead routing that detects the
  arrival of packets two hops ahead
  	=>  hide the wake-up delay; and reduce the short-term sleeps of channel 


## Feature

### Intro
- Power consumption = dynamic switch power + static leakage power 
	+ Switch power : use (clk gating, operand isolation), smaller when scaled down
	+ Leakage power : use (multi-threshold voltages, PG), increase
- Architecture and pipeline:
![arch_pipe](img/look-ahead-architecture_pipeline.png)


