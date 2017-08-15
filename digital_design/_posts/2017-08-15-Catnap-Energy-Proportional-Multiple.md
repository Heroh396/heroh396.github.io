---
layout: post
title:  Catnap Energy Proportional Multiple Network-on-chip
date: 2017-08-15 11:55
teaser:
image: /imgs/catnap.jpg
author: heroh396
comments: true
redirect_from:
shortUrl: 
---

# Abtract 

Title: Catnap (a short, light sleep): Năng lượng tỉ lệ với đa NOC

Main contribution:
- Catnap architecture consists of synergistic subnet selection and powergating policies.
- Catnap maximizes the number of consecutive idle cycles in a router, while avoiding performance loss due to overloading a subnet.

Result:
- Average network power could be 44% lower than a bandwidth equivalent single-network design
- An average performance cost of about 5%

Question:
- Why the title mentions energy but the result only considers *power* and *cost*.

# Intro

An on-chip network is *energy-proportional* if it consumes power that is proportional to the network demand and has insignificant impact on network latency. 

Motivation:  a few phases that consume peak network bandwidth, and other computationally intensive phases that inject few packets into the network. Thus, to build an energy proportional many-core processor, it is important to design energy proportional on-chip networks.


---
# Vocabulary

- proportional 	/prəˈpôrSH(ə)n(ə)l/	: cân bằng, tỉ lệ, tương xứng
- ensure 		/in'ʃuə/			: đảm bảo
- observe 		/əbˈzərv/			: quan sát 
- attractive 	/əˈtraktiv/			: hấp dẫn

