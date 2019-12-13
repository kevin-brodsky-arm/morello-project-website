---
title: FAQ
permalink: /faq/
description: >
    This page answers frequently asked questions about the Morello Project.
layout: flow
flow:
    - row: main_content_row
---
## What is the Morello Project ?

Morello is an industrial demonstrator of a capability architecture: a prototype System-on-Chip (SoC) and development board, developed by Arm, implementing a CHERI-extended ARMv8-A processor, GPU, peripherals, and memory subsystem, to ship in late 2021.

## Digital Security by Design

Morello is part of a research program called Digital Security by Design. Morello was announced in the Collaborators Workshop, archive material was posted on the 17th October 2019.

The homepage containing slides and videos for all the presentation is at: [https://ktn-uk.co.uk/news/digital-security-by-design-collaborators-workshop](https://ktn-uk.co.uk/news/digital-security-by-design-collaborators-workshop)

The Morello presentation from Arm's Chief architect Richard Gristhenthwaite is:

- [slides](https://www.slideshare.net/KTNUK/digital-security-by-design-technology-platform-richard-grisenthwaite-arm)

- [video](https://vimeo.com/366246134)

Arm's website contains an article on Morello at https://www.arm.com/blogs/blueprint/digital-security-by-design

## CHERI

Morello is an implementation of the CHERI protection model (roughly as in CHERIv7) on AArch64. The concepts are the same although the implementation choices may be different. A lot of detailed information about how capabilities work and what they can be used for can be found by reading the CHERI research papers.
The CHERI homepage at Cambridge University is [https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/](https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/)

Of particular interest are:

CHERI v7 architecture [https://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-927.pdf](https://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-927.pdf)

Page of information on Morello and how it relates to CHERI [https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello.html](https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello.html)

## FAQ

For brevity [SLIDES - number]  refer to a slide number in [https://www.slideshare.net/KTNUK/digital-security-by-design-technology-platform-richard-grisenthwaite-arm](https://www.slideshare.net/KTNUK/digital-security-by-design-technology-platform-richard-grisenthwaite-arm)

#### What are current tasks for Morello?
[Answer] The current tasks are finalizing the specifications for what Morello will be, architecture, hardware, SoC etc. The existing models, toolchain and software will need to be modified to meet the finalized specification.
#### Where are git repos for Morello support located?
[Answer] Currently all Morello git repos are internal to Arm. There is an intent to move development to public repos when they implement enough of the final Morello specification. This is likely to be early next year.
#### What functional and Performance test is needed for Linux / Android by the time the silicon arrives. Is it relevant to do power regression tests, secular performance
[Answer]  One of the primary motivations behind Morello is to get a realistic estimate of the impact on performance of many different usage models. Measurements of the early capability aware platforms versus AArch64 will likely be one of those use cases. Given that Android is a primary target of Morello [SLIDES - 13], the impact on power use will be of significant interest although power measurement is not a major priority [SLIDES - 14].
#### How do we get involved in writing security tests to prove the arch actually  provides better security
[Answer] It is too early to give a useful answer. The early focus is on board bring up, tools development and low-level software.
#### When can Linaro employees play around with this? We’ve heard that FVP might be available in October next year, is that correct?
[Answer] Yes it is correct that the FVP of the Morello board is aiming at Q4 next year [SLIDES - 14].
#### [Question - 6] How will other partners test, can they benefit from Linaro publishing test results, or aggregating them from all the players ?
[Answer] From [SLIDES - 13] The primary focus is FreeBSD, and Android; Secondary Windows PE and Yocto; Tertiary Linux distributions. There may be some scope for a reference implementation of these projects that is tested. As the main focus of Morello is a research prototype - Morello will be the only physical implementation of the prototype architecture - it may be that each partner chooses their own area of investigation.
#### Will TrustZone exist in Morello or will that be totally gone in favor for the new security features?
[Answer] Morello [SLIDES - 11] will be backwards compatible with v8.2 AArch64 only, TrustZone is a part of that. Looking forwards capabilities provide an alternative method to implementing TrustZone like secure environments, the main advantages being a finer grained control of what memory can be accessed. Morello is a platform that can be used for researching how to write such a system [SLIDES - 15].
#### Do we have an estimate of the code size increase and the pressure on the cache ?
[Answer] With an immature compiler at -O2 we are looking at a rough average of 5% code-size increase for compiling using pure capabilities (every pointer is a capability). This does not include the increase in data size due to larger pointer sizes. Disclaimer, this is not the result of a detailed investigation, it is rough and we'd expect to change. On the cache, there isn’t any data for Morello yet, for CHERI there are some research papers that cover this. For example [https://www.cl.cam.ac.uk/research/security/ctsrd/pdfs/2019tc-cheri-concentrate.pdf](https://www.cl.cam.ac.uk/research/security/ctsrd/pdfs/2019tc-cheri-concentrate.pdf) and [http://fm.csl.sri.com/SSFT19/20190523-ssft-cheri.pdf](http://fm.csl.sri.com/SSFT19/20190523-ssft-cheri.pdf) have some figures for CHERI. I think it is a reasonable assumption that the results for 128-bit Capabilities should be comparable to Morello. In summary: 128-bit capabilities have a 1 - 2 % increase in L1 D-Cache miss rate. Pointer chasing workloads suffer more. In both cases L2 misses increased.
#### Which capability implementation has been chosen for Arm ISA ?
[Answer] Morello will be using 128-bit Capabilities [SLIDES - 7].
#### Are you using dedicated capability registers or extending the integer registers ?
[Answer]  Details aren't public at the moment. The decision isn't visible architecturally to software.



===

To find out more about this project please visit: [https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello.html]( https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello.html)
