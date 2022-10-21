---
layout: post
title: Introduction about RISC-V instruction set Architecture
date: 2017-10-25 11:59
teaser: Today I research about Gcc Cross-compiler. Who have been knowned about cross-compiler
image: /imgs/others/riscv.jpg
author: heroh396
comments: true
redirect_from: 
shortUrl: 
---

# Intro

This compiler is specially made to target exactly your operating system and is what allows you to leave the current operating system behind.

You need a cross-compiler for operating systems development, unless you are developing on your own operating system.

A cross-compiler is a compiler that runs on platform A (the host), but generates executables for platform B (the target)

Ubuntu 14.04 and does not provide packages for MIPS. Luckily, Debian (which Ubuntu is based off of) does provide packages, and these packages are compatible with Ubuntu. Un-luckily, Debian does not support little-endian MIPS (mipsel). Lucky us once again, as a different Debian derivative, Embedded Debian (emdebian) does provide those packages.

Mipsel: little-endian MIPS (debian-mipsel)

# Cross-compiler

This compiler is specially made to target exactly your operating system and is what allows you to leave the current operating system behind.

You need a cross-compiler for operating systems development, unless you are developing on your own operating system.

A cross-compiler is a compiler that runs on platform A (the host), but generates executables for platform B (the target)

Ubuntu 14.04 and does not provide packages for MIPS. Luckily, Debian (which Ubuntu is based off of) does provide packages, and these packages are compatible with Ubuntu. Un-luckily, Debian does not support little-endian MIPS (mipsel). Lucky us once again, as a different Debian derivative, Embedded Debian (emdebian) does provide those packages.


### Success version 


Local machine: using gcc 4.9 (using "alternative gcc ubuntu")

Binutils: 2.24

Gcc: 4.8.0


# SystemC

![SystemC build](/imgs/linux/systemc_build.gif)

![Bit operator](/imgs/linux/bit_operator.png)

# Linked and nomenclature

[Check available version between binutils and gcc.](http://wiki.osdev.org/Cross-Compiler_Successful_Builds)

[SystemC learning website.](http://www.asic-world.com/systemc/index.html)

Mipsel : little-endian MIPS (debian-mipsel)
