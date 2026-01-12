#!/bin/bash
# Phase 3A Part 1: Linux Core (Course-Level Starter)
# Doks-compatible, safe frontmatter, verified structure

set -e

echo "Creating Phase 3A Part 1: Linux Core..."

mkdir -p content/docs/linux/core

cat > content/docs/linux/core/_index.md << 'EOF'
---
title: "Linux Core Concepts"
description: "Deep dive into Linux internals"
contributors: ["Deepak"]
---

This section covers Linux internals from a DevOps and production perspective.
EOF

cat > content/docs/linux/core/kernel.md << 'EOF'
---
title: "Linux Kernel"
description: "How the Linux kernel works"
contributors: ["Deepak"]
---

## What is the Linux Kernel?

The kernel is the core of the Linux OS. It manages:

- CPU scheduling
- Memory management
- Device drivers
- Filesystems
- Networking stack

## Kernel Space vs User Space

User space runs applications.
Kernel space runs privileged code.

System calls are the bridge between them.
EOF

cat > content/docs/linux/core/boot-process.md << 'EOF'
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
EOF

cat > content/docs/linux/core/processes.md << 'EOF'
---
title: "Process Management"
description: "How Linux handles processes"
contributors: ["Deepak"]
---

## What is a Process?

A process is a running instance of a program.

Key concepts:
- PID
- PPID
- Fork
- Exec
- Zombie
- Orphan

## Common Commands

```bash
ps aux
top
htop
kill
```
EOF

cat > content/docs/linux/core/memory.md << 'EOF'
---
title: "Memory Management"
description: "How Linux manages RAM"
contributors: ["Deepak"]
---

Linux uses virtual memory.

Concepts:
- Paging
- Swap
- Page cache
- OOM killer

OOM happens when system runs out of memory.
EOF

cat > content/docs/linux/core/filesystems.md << 'EOF'
---
title: "Filesystems"
description: "How Linux stores data"
contributors: ["Deepak"]
---

Popular filesystems:
- ext4
- xfs
- btrfs

Concepts:
- Inodes
- Journaling
- Mounts
EOF

echo "Phase 3A Part 1 complete."
echo "Run: npm run dev"
