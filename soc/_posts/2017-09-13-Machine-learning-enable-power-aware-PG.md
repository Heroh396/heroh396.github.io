---
layout: post
title:  Paper Machine Learning Enabled Power-Aware Network-on-Chip Design
date:  2017-09-13 11:57
teaser: Adaptive routing algorithms (using machine learning) to route packets from source to destination through non-power-gated (possibly longer) paths. 
image: /imgs/machine_learning.jpg
author: heroh396
comments: true
redirect_from:
shortUrl: 
---
# Intro

Contribution:

- LESSON (Learning Enabled Sleepy Storage Links and Routers in NoCs) to reduce both static and dynamic power consumption by power-gating the links and routers at low network utilization and moving the data storage from within the routers to the links at high network utilization.
- We design the same channels to flow traffic in either direction
- Machine learning algorithms predict when to power-gate the channels and routers and when to increase the channel bandwidths such that power savings are maximized while performance penalty is minimized

With sub-nanometer techonology, a majority of NOC power consumption will be
domineted by static power consumption. Most of the proposed techniques either
target dynamic power or suffer from high performance penalties.

The key component: _sleepy link storage (SLS) units_, with various network load ranging from low to low-to-medium, to medium-to-high and high load. (NOTE: power savings at link and router storage levels)

- low network utilization			 : SLS are power-gated to save static power
- low-to-medium network utilization  : the network traffic increases, SLS can double as storage units to save dynamic power
- medium-to-high network utilization : SLS can switch the traffic direction to provide more bandwidth while saving both static and dynamic power consumption
- high network utilization			 : we optimize the performance by carefully storing data and reversing links to maximize power savings

Power-efficient crossbar: split the conventional uniform crossbar into several smaller crossbars which can be individually power-gated.

Machine learning algorithm (using decision treehave low overhead) can make accurate predictions by making comparisons on network information such as a history of link utilization and buffer utilization.

=> We design sleepy link storage (SLS) units which are capable of storing signals on the links, prop- agating signals in two directions with low power, and are able to shutdown on demand. Machine learning algorithms were utilized to predict traffic flow and link utilization. Based on these predictions, we can dynamically provide additional bandwidth when required in order to improve performance and we can accurately power-gate the links and buffers to improve power dissipation.


