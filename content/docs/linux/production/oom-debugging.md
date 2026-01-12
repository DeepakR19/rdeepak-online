---
title: "OOM Debugging"
description: "Out of Memory troubleshooting"
contributors: ["Deepak"]
---

## What is OOM?

OOM happens when the system runs out of memory.

### How to debug
- dmesg
- journalctl
- free -m
- vmstat

### Common causes
- Memory leaks
- Huge caches
- Misconfigured containers
