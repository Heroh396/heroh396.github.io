---
layout: post
title: MP3 Minimizing Performance Penalty for Power-gating of Clos Network-on-Chip
date: 2017-08-30 11:55
teaser: A hard paper centrals Clos Network
image: /imgs/others/mp3.jpg
author: heroh396
comments: true
redirect_from:
shortUrl: 
---

# INTRO

MP3 (Minimal Performance Penalty Power-gating), which is able to achieve minimal (i.e., near-zero) performance penalty and save more static energy than conventional power-gating applied to Clos networks.

MP3 is able to completely remove the wakeup latency from the critical path, reduce long-term and transient contention, and actively steer network traffic to create increased power-gating opportunities.

Difficult to power-gate mesh networks effectively [7, 23], node-router dependence. Then show the advantage of Close network via Meshes network (mitigate the energy and performance overhead compared with meshes), but there are significant performance penalty when use conventionally PG (state-of-the-art) in Clos network (38% increase in average packet latency and 15% increase in execution time).

Compared to an optimized conventional power-gating technique applied to Clos, MP3 achieves a reduction of 36.8% in network performance penalty while saving 9.8% more router static energy. When compared with not using power-gating, MP3 reduces router static energy by 47.7% while incurring only 0.65% increase in execution time.

# MOTIVATION

Power-gating is a promising technique for enabling tradeoffs between static energy savings and performance : the effectiveness of power-gating is determined by two aspects: net energy savings and performance penalty.
- Net energy savings  : the BET value is around 10 cycles.
- Performance penalty : need to wakeup - wakeup latency is usually a few nanoseconds (or around 5-15 cycles depending on the frequency).

Limitation of Mesh network :
- Compared with Clos, there are two distinctive properties of Mesh networks that greatly limit the effectiveness of applying power-gating: _dependence between each PE-router pair_ and _less path diversity_.
- For an 8x8 mesh, the number of idle periods having a length less than the BET constitutes more than 67.2% of the total number of idle periods



# QUESTION

- close network vs direct network (such as meshes) ?


# KEYWORD

- CMPs			: chip multiprocessors
- PEs			:processing elements (PEs), in PEs, NIs, R

- promise	/präməs/		: trien vong
- mitigate 	[ˈmɪtɪɡeɪt]		: make less severe, serious, or painful
- potential /pəˈten(t)SHəl/	: having or showing the capacity to become or develop into something in the future (tiem nang)
- decouple 	/dēˈkəpəl/		: tach ra

- imperative /əmˈperədiv/	: bat buoc
- devise 	/dəˈvīz/Submit	: phat minh ra, nghi ra
- compensate /ˈkämpənˌsāt/	: bu dap
- majority 	/məˈjôrədē/		: phan lon
- express					: bieu dien
- obtain 	[əbˈteɪn]		: dat duoc
- scheme	[skiːm] 		: a plan or system for doing or organizing sth
- process	[ˈproʊses] 		: a series of things that are done in order to achieve a
  particular result
- naive		 [naɪˈiːv]		: chat phac
- approximate	[əˈprɒksɪmət]	: xap xi
- /I/ with smile face, /i:/ not laugh (it vs eat)
- figure	 [ˈfɪɡə(r)]		:  a number representing a particular amount, especially
  one given in official information


