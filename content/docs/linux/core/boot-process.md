---
title: "Linux Boot Process"
description: "From power-on to login"
contributors: ["Deepak"]
---

## Boot Flow

1. BIOS/UEFI
2. Bootloader (GRUB)
3. Kernel init
4. systemd
5. Login shell

Each stage has failure points that DevOps engineers debug.
