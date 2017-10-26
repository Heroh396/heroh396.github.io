---
layout: post
title: Introduction about RICS-V instruction set Architecture
date: 2017-10-25 11:59
teaser: Today I research about Gcc Cross-compiler. Who have been knowned about cross-compiler
image: /imgs/riscv.jpg
author: heroh396
comments: true
redirect_from: http://wiki.osdev.org/GCC_Cross-Compiler
shortUrl: 
---

# Intro

This compiler is specially made to target exactly your operating system and is what allows you to leave the current operating system behind.

You need a cross-compiler for operating systems development, unless you are developing on your own operating system.

A cross-compiler is a compiler that runs on platform A (the host), but generates executables for platform B (the target)

Ubuntu 14.04 and does not provide packages for MIPS. Luckily, Debian (which Ubuntu is based off of) does provide packages, and these packages are compatible with Ubuntu. Un-luckily, Debian does not support little-endian MIPS (mipsel). Lucky us once again, as a different Debian derivative, Embedded Debian (emdebian) does provide those packages.

Mipsel: little-endian MIPS (debian-mipsel)
