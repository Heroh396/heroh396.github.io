---
layout: post
title:  Paper NoRD Node Router Decoupling for Effective Power-gating of On-Chip Routers
date:   2017-08-04 11:48
teaser: A paper about Power-gating technique.
image: /imgs/typing_keyboard_3.jpg
author: heroh396
comments: true
redirect_from:
shortUrl:
---

# Data
* [Paper](http://ieeexplore.ieee.org/document/6493626/)
* [Slide](http://slideplayer.com/slide/4703446/)

# Intro

NoRD: Node-Router Decoupling (canh ly).

Reason of PG problem: `the dependence between the node and route` - any packet (sent, received or forwarded) must wake up the router before being transferred, thus breaking the potentially long idle period into fragmented intervals.

The simulation shows that directly applying conventional power-gating techniques would cause frequent state-transitions and significant energy and performance overhead.

In this paper,we propose NoRD (Node-Router Decoupling), a novel power-aware on-chip network approach that provides for power-gating bypass to decouple the node’s ability for transferring packets from the powered-on/off status of the associated router, thereby maximizing the length of router idle periods.
Fundamentable problem of PG:

1. intermittent packet arrivals may cause a large number of idle periods to fall below the breakeven time needed to compensate for power-gating overhead, reducing the opportunity to apply power-gating techniques usefully.
2. packets encountering gated-off routers suffer additional transport latency to wait for routers to wake up and are likely to experience successive wakeup latencies on the critical path if routed over multiple hops.
3. a gated-off router essentially disconnects the associated node from the rest of the network, the power-gating opportunity is upper bounded by the local node’s traffic and none of the local resources (e.g., cache and directory) can be accessed by other nodes, unless connectivity is somehow supported another way (TODO: read).

Main contributation:
* NoRD (Node-Router Decoupling) - a novel approach that provides `separate power-gating bypass` to  decouple `the node’s ability for transferring packets` from `the status of the router`.


# Voc
- bypass: a secondary channel, pipe, or connection to allow a flow when the main one is closed or blocked.
- WU: wake-up
- VC: virtual channel
- confine: gioi han

- mitigate: diu nhe
- sufficiently: du, thich dang
- compensate: den bu
- potential: tiem luc
- decouple: tach roi
- bypass: bo qua
- ability: nang luc
- associate: lien ket
- critical: quan trong, gioi han
- draw: loi keo
- impact: tac dong
- cumulative: tich luy
- proof: su chung minh

- iscas: the conference
