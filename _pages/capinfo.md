---
title: Capinfo
permalink: /capinfo/
description: Capability inspection tool.
layout: capinfo
extra:
  head: |
    <script type="text/javascript" defer nomodule>
      window.onload = function() {
        document.getElementById("capinfo").innerHTML =
          '<span style="text-align: center">Capinfo requires a browser with support for ES Modules and WebAssembly support.</span>';
      }
    </script>
    <script type="module">
      import init, { version, capinfo_version, append_capinfo_to } from '../assets/capinfo/capinfo_web.js';
      async function run() {
        await init();
        console.log('capinfo_web ' + version() + '.');
        console.log('capinfo ' + capinfo_version() + '.');
        append_capinfo_to(document.getElementById("capinfo"), "capinfo.svg");
      }
      run();
    </script>
    <style type="text/css">
      div#capinfo {
        margin: 0.5em;
      }
      div#capinfo svg {
        display: block;
        margin: 0px auto;
      }
      div#capinfo input {
        box-shadow:rgb(235, 235, 235) 0px 0px 10px 5px;
        display: block;
        margin: 1em auto;
        width: 28em;
        text-align: center;
        font-family: "DejaVu Sans Mono", monospace;
        font-size: 16px;
      }
      div#capinfo input.error {
        background-color: #ffdabf;
        border-color: #ff6b00;
      }
    </style>
---
