---
title: Morello Platform Open Source Software
description: >
  Coming soon.
permalink: /
layout: flow
jumbotron:
  header_title: Welcome to the landing page for Morello Platform Open Source Software
  class: flex-column expandable_jumbotron background-image morello
  include: morello_homepage_header_section.html
  image: /assets/images/content/iStock-1147065676.jpg
  first_section:
    image: /assets/images/content/iStock-178487234.jpg
    image_alt: test image alt
    text: |-
      Morello is a research program led by Arm in association with partners and funded by the UKRI as
      part of the UK government [Digital Security by Design (DSbD) programme](https://www.ukri.org/innovation/industrial-strategy-challenge-fund/digital-security-by-design/) . It defines a new prototype security architecture based on CHERI (Capability Hardware Enhanced RISC Instructions).
  second_section:
    image: /assets/images/content/iStock-1195413927.jpg
    image_alt: second test image alt
    text: |-
      A System on Chip (SoC) implementation of the architecture will provide a DSbD technology 
      platform prototype, enabling industry and academic partners to test real-world use cases and 
      inform future development.
dev_section:
  first_column:
    icon: /assets/images/content/icon-2.png
    title: The Morello code repositories
    url: https://git.morello-project.org/morello
    text: |-
      Please refer to the top level [Documentation](https://git.morello-project.org/morello/docs) repository to get started.
  second_column:
    url: https://developer.arm.com/morello
    icon: /assets/images/content/icon-1.png
    title: Arm's Morello Developer pages
    text: |-
      Arm's [Developer pages](https://developer.arm.com/morello) provide curated resources for the Morello Program. Including Architecture specifications, platform model, 
      technical reference manual, Morello forum and more.
flow:
  - row: container_row
    style: bg-primary
    sections:
      - format: custom_include
        source: dev_section.html
  - row: container_row
    style: bg-light morello-content
    sections:
      - format: text
        style: bg-white p-4 my-3
        text_content:
          text: |-
            ## Development Platforms

            ### Morello Platform Model

            The Morello Platform Model is an open access FVP (Fixed Virtual Platform) implementation aligned with the development board. It is available to download from Arm’s [Ecosystem FVP Developer page](https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps).

            FVPs use Arm binary translation technology to create a register level functional model of system hardware (including processor, memory and peripherals) that can be run as an executable in a development environment. They implement a programmer’s view model suitable for software development, enabling execution of full software stacks on a widely available platform.

            A walkthrough video of setting up the development environment is available - [/resources/morello-platform-model-and-android-stack-walkthrough/](/resources/morello-platform-model-and-android-stack-walkthrough/).

            ### Morello Hardware Development Platform

            The Morello hardware development platform becomes available from Q1 2022 onwards and will be supported by the same software stack. Availability of hardware will be limited - platforms will be restricted to partners involved in defined research activities.

            Software releases supporting initial board availability may not include complete support. For example: Support for DDR & PCIe may not initially be performant. Satellite peripherals (such as audio and video IPs) and features such as power management may not be supported at inception. Support will evolve over time and specifics will be detailed via `release-notes.rst` in the Documentation repository.

            Note that fimrware pre-installed on boards should be updated to the latest versions immediately after first validation of boot.
      - format: text
        style: bg-white p-4 my-3
        text_content:
          text: |-
            ## Morello software enablement

            The diagram shows a high-level view of the software stacks targeting the Morello hardware and FVP platforms.

            ![](/assets/images/content/Morello_Software_Stacks_Diagram_ST2_V2.png){:.img-fluid}

            These stacks and the supporting tooling are intended to provide a foundation for ecosystem research. Enabling collaboration on existing work packages and new work on alternate RTOS/OS environments, tools and workloads. Functionality will evolve in stages throughout the lifetime of the Morello Program.

            Integrated stack releases (manifests, build scripts, documentation) and component forks associated with this page are available via git.morello-project.org

            Please start with the top level code repository [Documentation.](https://git.morello-project.org/morello/docs).
                        
            ## Bare-metal Enablement

            Bare-metal development is supported by exit from the firmware stack at two points:
            * Post SCP execution: System level IP is initialised, development is possible from Application processor reset. Supports true bare-metal scenarios.
            * Post TF-A execution: Lead Application processor is initialised and runtime services are available. Supports ports of new RTOS environments and more complex bare-metal workloads

            Please refer to `standalone-baremetal-readme.rst` in the Documentation repository.

            [Arm Development Studio Morello Edition](https://developer.arm.com/architectures/cpu-architecture/a-profile/morello/development-tools#arm-development-studio) provides a development environment for bare-metal configurations and includes a "hello world" example.

            ## Android Enablement

            An evolving Android environment has been available for Morello since the first release in October 2020. 

            This includes a minimal (nano) headless system Android (64bit) profile suitable for use with the FVP. Full Android boot will be supported on the Morello hardware platform

            Support for Pure capability (Pure-cap) applications (along with several example ports) is provided by a Morello ACK (Android Common Kernel) and Bionic library variants built using the CHERI LLVM/Clang toolchain.

            For more information on the status of the Android environment, please refer to `android-readme.rst` in the Documentation repository

            Further information on the timeline for ongoing work in the Morello Kernel and the use of libshim in C libraries is available below.

            ## Linux Enablement (2022 onwards)

            Support for a Morello Linux environment is still under development. 

            ### Initial Proof of Concept Linux environment: Expected end of 2021 (on FVP)
            * Based around CHERI LLVM/Clang toolchain & Morello ACK.  Provides a prototype (shimmed) musl libC port and hello world userspace example integrated into a standard (A64) rootfs. 
            * This provides a starting point for incremental enhancements targeting both the Morello hardware and FVP platforms.

            ### Examples of planned work packages, 2022 onwards:

            * Initial Linux environment support for hardware platform (and support for native compilation)
            * Further evolution of musl lib C support & Pure-cap userspace application ports
            * Staged introduction of Morello Kernel PCuABI features
            * Introduction of a Morello GCC/GlibC based environment
            * Proof of concept work to demonstrate a Morello aware Distro framework

            Further information on the timeline for ongoing work in the Morello Kernel and the use of libshim in C libraries is available below.

            ## CheriBSD

            A mature [CheriBSD](https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello-software.html) environment for Morello is implemented and hosted separately by the University of Cambridge Computing Laboratory. This provides a memory-safe kernel and userspace, along with examples ports of application frameworks.

      - format: text
        style: bg-white p-4 my-3
        text_content:
          text: |-
            ## Component support & tooling

            ### Firmware
            Platform ports of standard open source firmware components: SCP firmware, Trusted Firmware TF-A, UEFI EDK II are available for the Morello platform. These are aarch64 platform ports, with some additional low level hardware initialization to enable support of Capabilities in higher level software.

            ### Morello Linux kernel (under development)

            Arm’s work on the Linux Kernel is focused on developing a new kernel-user syscall ABI to support Pure-capability userspace software development. The aim is to replace all pointers at the Kernel-user interface with 129-bit Capabilities, instead of 64-bit integers. This work is linked to development of associated C libraries (Bionic, Musl, GlibC) and developed against a PCuABI (Pure Capability kernel-user ABI) specification. Enabling Android and Linux environments capable of supporting a mix of Pure-capability and “COMPAT” standard 64 bit userspace components. (32bit applications will not be supported)

            Initial Linux Kernel implementations (releases throughout 2021) rely on a lightly modified ACK (Android Common Kernel), supported by a temporary libshim translation layer in C libraries.

            Throughout 2022 PCuABI support will be introduced in stages:

            #### Stage1: Functional support

            Provide native support for user-space applications built against the Pure-cap ABI
            * A transitional PCuABI will support an initially limited set of Syscalls, expanded over time. (Both transitional and draft full ABI specifications will be published ahead of hardware platform availability.)
            * Allows incremental reduction of functionality in the corresponding C library libshim (currently used to "bridge" Syscalls to the standard Kernel ABI)

            #### Stage2: Memory safety & security

            Improve memory safety at the kernel-user boundary, leveraging the properties of Capabilities

            ### CHERI LLVM toolchains & libraries

            Morello is supported by LLVM-based open-source toolchains based on the CHERI Clang/LLVM toolchain from the University of Cambridge. Please note, these are experimental toolchains and as such features may be missing.

            #### Bare-metal toolchain

            A prebuilt x86-hosted Morello CHERI LLVM toolchain is available to support architecture exploration.

            Includes a C/C++ compiler (clang), linker (lld), a standard C library (newlib), a standard C++ library (libc++, libc++abi) and various utilities (such as assembler & disassembler).

            #### Linux and Android toolchains

            Prebuilt x86-hosted and AArch64 hosted Morello CHERI LLVM toolchains are available.

            These include a C/C++ compiler (clang), linker (lld), debugger (lldb), various utilities (such as assembler & disassembler) and run-time libraries.

            The use of these toolchains is dependent upon C library support.

            #### Linux and Android C libraries

            To enable functional development & porting efforts in userspace ahead of full Kernel ABI support, C libraries have been initially implemented using the concept of a [libshim](https://git.morello-project.org/morello/android/platform/external/libshim/) translation layer. This does not provide a secure implementation, but allows support for a full set of system calls ahead of a mature PCuABI and related Kernel and C library implementations. Functionality handled in libshim will reduce over time as the Kernel and C library implementations mature.

            * Bionic: Supports Android
            * musl libc: Lightweight C library intended to support initial "embedded" Linux environments

            ### CHERI GCC toolchain & libraries (under development)

            Development of a GCC-based open-source toolchain and associated GlibC is ongoing.

            An initial proof of concept release is expected early in 2022, with expanded functionality (dynamic linking, C++, etc) emerging throughout the year.

            ### Graphics Enablement (under development)

            Media support for Morello hardware (Mali-D35 display processor and Mali-G76 GPU) is based around Open Source Software.

            The display processor relies on an existing upstream Kernel driver.  GPU support will be based on the Panfrost open source driver framework for Mali Bifrost GPU architectures.

            Initial UI support in development environments will be based on software rendering.

            Enabling Panfrost driver support for the Morello hardware platform and Pure-cap ports of graphics libraries will be an ongoing activity through 2022.
---
