---
title: Morello Platform Open Source Software
description: >
  Coming soon.
permalink: /
layout: flow
jumbotron:
  header_title: Welcome to the landing page for Morello Open Source Software
  class: flex-column expandable_jumbotron background-image morello
  include: morello_homepage_header_section.html
  image: /assets/images/content/iStock-1147065676.jpg
  first_section:
    image: /assets/images/content/iStock-1195413927.jpg
    image_alt: test image alt
    text: |-
      Morello is a research program led by Arm in association with partners and funded by the UKRI as
      part of the UK government [Digital Security by Design (DSbD) programme](https://www.ukri.org/innovation/industrial-strategy-challenge-fund/digital-security-by-design/) . It defines a new prototype security architecture based on CHERI (Capability Hardware Enhanced RISC Instructions).
  second_section:
    image: /assets/images/content/DSCF0218.jpg
    image_alt: second test image alt
    text: |-
      A DSbD technology platform prototype (the Morello board) provides a SoC implementation of the architecture. 
      This was created to enable software developers and researchers to explore real-world use cases and inform future development.      
dev_section:
  first_column:
    icon: /assets/images/content/icon-2.png
    title: The Morello code repositories
    url: https://git.morello-project.org/morello
    text: |-
      Please refer to the top level [Documentation](https://git.morello-project.org/morello/docs) repository to get started.
  second_column:
    url: https://www.arm.com/why-arm/architecture/cpu/morello
    icon: /assets/images/content/icon-1.png
    title: Arm's Morello pages
    text: |-
      Arm's [web pages](https://www.arm.com/why-arm/architecture/cpu/morello) provide curated resources for the Morello Program. Including Architecture specifications, platform model, 
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

            The Morello hardware development platform (available Q1 2022 onwards) is supported by the same range of software stacks as the existing Platform model. Availability of hardware will be limited - platforms will be restricted to partners involved in defined research activities.

            ![](/assets/images/content/DSCF0211-Edit.jpg){: width="400" }

            Support will evolve over time and specifics will be detailed via `release-notes.rst` in the Documentation code repository. Note that firmware pre-installed on boards should be updated to the latest versions immediately after first validation of boot.
      - format: text
        style: bg-white p-4 my-3
        text_content:
          text: |-
            ## Morello software enablement

            The diagram shows a high-level view of the software stacks targeting the Morello hardware and FVP platforms. Above the firmware, which environment is best suited for development is dictated by a range of factors relating to the specific aims of individual research projects. The CheriBSD port for Morello provides a mature environment for general research and userspace experimentation. However, the majority of commercial devices are based on Android and Linux, which is why Arm are also focused on exploring the application of the Morello prototype architecture to these environments.

            ![](/assets/images/content/Morello_Software_Stacks_Diagram_ST2_V2.png){:.img-fluid}

            These stacks and the supporting tooling are intended to provide a foundation for ecosystem research, enabling collaboration on existing work packages and new work on alternate RTOS/OS environments, tools and workloads. Functionality will evolve in stages throughout the lifetime of the Morello Program.

            Integrated stack releases (manifests, build scripts, documentation) and component forks associated with this page are available via `git.morello-project.org`. Please start with the top level code repository [Documentation](https://git.morello-project.org/morello/docs).
                        
            ## Bare-metal Enablement

            Bare-metal development is supported by exit from the firmware stack at two points:
            * Post SCP execution: System level IP is initialised, development is possible from Application processor reset. Supports true bare-metal scenarios.
            * Post TF-A execution: Lead Application processor is initialised and runtime services are available. Supports ports of new RTOS environments and more complex bare-metal workloads.

            Please refer to `standalone-baremetal-readme.rst` in the Documentation repository.

            [Arm Development Studio Morello Edition](https://developer.arm.com/architectures/cpu-architecture/a-profile/morello/development-tools#arm-development-studio) provides a development environment for bare-metal configurations and includes a "hello world" example.

            ## Android Enablement

            An evolving Android environment has been available for Morello since the first release in October 2020. 

            This includes a minimal (nano) headless system Android (64-bit) profile suitable for use with the FVP. Full Android boot is supported on the Morello hardware platform

            Support for pure capability (purecap) applications (along with several example ports) is provided by a Morello ACK (Android Common Kernel) and Bionic library variants built using the CHERI LLVM/Clang toolchain.

            For more information on the status of the Android environment, please refer to `android-readme.rst` in the Documentation repository.

            Further information on the timeline for ongoing work in the Morello Kernel and the use of libshim in C libraries is available below.

            ## Linux Enablement (2022 onwards)

            Support for a Morello Linux environment is still under development. 

            An initial prototype Linux development environment is available to support the Morello board. This is built using the existing Morello LLVM toolchain and includes a purecap musl libC port and applications integrated into a standard (64-bit) rootfs. A second software release in the first half of 2022 will provide a more complete rootfs and transitional PCuABI implementation: Introducing a Morello Kernel into a standard (64-bit) Debian distribution. An expanding purecap userspace world can then gradually be built up inside a chroot. Both Linux environments will allow native (Arm on Arm) development on the Morello board.
            
            ### Examples of planned work packages, 2022 onwards:          
            * Further evolution of musl libC support & purecap userspace application ports
            * Staged introduction of Morello Kernel PCuABI features
            * Introduction of a Morello GCC/GlibC based environment
            * Proof of concept work to demonstrate a Morello aware Distro framework

            Further information on ongoing work in the Morello Kernel and the use of libshim in C libraries is available below.

            ## CheriBSD

            A mature [CheriBSD](https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/cheri-morello-software.html) environment for Morello is implemented and hosted separately by the University of Cambridge Computer Laboratory. This provides a memory-safe kernel and userspace, as well as example ports of application frameworks, demonstrating more complete integration of CHERI (and Morello) support into an OS design.

      - format: text
        style: bg-white p-4 my-3
        text_content:
          text: |-
            ## Component support & tooling

            ### Firmware
            Platform ports of standard open source firmware components: SCP firmware, Trusted Firmware TF-A, UEFI EDK II are available for the Morello platform. These are AArch64 platform ports, with some additional low level hardware initialization to enable support of capabilities in higher level software.

            ### Morello Linux kernel (under development)

            Arm’s work on the Linux Kernel is focused on developing a new kernel-user ABI to support pure capability userspace software development. The aim is to replace all pointers at the kernel-user interface with capabilities, instead of 64-bit integers. This work is linked to development of associated C libraries (Bionic, Musl, GlibC) and developed against a PCuABI (pure capability kernel-user ABI) specification. Enabling Android and Linux environments capable of supporting a mix of pure capability and “COMPAT” standard 64-bit userspace components. (32-bit applications will not be supported)

            Initial Linux Kernel implementations (releases throughout 2021) rely on a lightly modified ACK (Android Common Kernel), supported by a temporary libshim translation layer in C libraries.

            Throughout 2022 PCuABI support will be introduced in stages:

            #### Stage1: Functional support

            Provide native support for user-space applications built against the purecap ABI
            * A transitional PCuABI will support an initially limited set of syscalls, expanded over time. (Both transitional and draft full ABI specifications will be published ahead of hardware platform availability.)
            * Allows incremental reduction of functionality in the corresponding C library libshim (currently used to "bridge" syscalls to the standard Kernel ABI)

            #### Stage2: Memory safety & security

            Improve memory safety at the kernel-user boundary, leveraging the properties of capabilities

            ### Morello LLVM toolchains & libraries

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

            ### Morello GCC toolchain & libraries (under development)

            Development of a GCC-based open-source toolchain and associated GlibC is ongoing.

            An initial proof of concept release is expected mid 2022, with expanded functionality (dynamic linking, C++, etc) emerging throughout the year.

            ### Graphics Enablement (under development)

            Media support for Morello hardware (Mali-D35 display processor and Mali-G76 GPU) is based around Open Source Software.

            The display processor relies on an existing upstream Kernel driver. GPU support is based on the Panfrost open-source driver framework for Mali Bifrost GPU architectures, enabling public ecosystem development

            Initial UI support in development environments will be based on software rendering. The aim is to validate an initial Morello platform port of a 64-bit Panfrost GPU driver in a Linux/Mesa graphics framework in the first half of 2022. This provides a foundation for Android graphics development and also support longer term investigation into the application of the security architecture to graphics stacks.
---
