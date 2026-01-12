---
title: "Disk Full Incidents"
description: "Handling 100% disk usage"
contributors: ["Deepak"]
---

Disk full errors break applications.

### Debug steps
```bash
df -h
du -sh /*
lsof +L1
```
