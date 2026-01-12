#!/bin/bash
# Phase 3A Part 4: Linux Production Debugging + Networking Real-World
# Doks-compatible, safe frontmatter

set -e

echo "Creating Phase 3A Part 4: Linux Production + Networking Real-World..."

mkdir -p content/docs/linux/production
mkdir -p content/docs/networking/production

# Linux Production
cat > content/docs/linux/production/_index.md << 'EOF'
---
title: "Linux in Production"
description: "Real-world Linux debugging and incidents"
contributors: ["Deepak"]
---

This section focuses on Linux issues you will face in real production systems.
EOF

cat > content/docs/linux/production/oom-debugging.md << 'EOF'
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
EOF

cat > content/docs/linux/production/disk-full.md << 'EOF'
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
EOF

cat > content/docs/linux/production/zombies.md << 'EOF'
---
title: "Zombie Processes"
description: "Understanding defunct processes"
contributors: ["Deepak"]
---

Zombie processes occur when parent does not reap children.

Use:
```bash
ps aux | grep Z
```
EOF

# Networking Production
cat > content/docs/networking/production/_index.md << 'EOF'
---
title: "Networking in Production"
description: "Real-world networking scenarios"
contributors: ["Deepak"]
---

This section focuses on networking issues faced in real systems.
EOF

cat > content/docs/networking/production/load-balancing.md << 'EOF'
---
title: "Load Balancing"
description: "L4 vs L7 load balancing"
contributors: ["Deepak"]
---

Load balancing distributes traffic.

- L4: TCP/UDP
- L7: HTTP/HTTPS

Examples:
- Nginx
- HAProxy
- ALB
EOF

cat > content/docs/networking/production/reverse-proxy.md << 'EOF'
---
title: "Reverse Proxies"
description: "How reverse proxies work"
contributors: ["Deepak"]
---

Reverse proxies sit in front of servers.

Use cases:
- SSL termination
- Caching
- Security
EOF

cat > content/docs/networking/production/mtls.md << 'EOF'
---
title: "mTLS"
description: "Mutual TLS explained"
contributors: ["Deepak"]
---

mTLS authenticates both client and server.

Used in service meshes.
EOF

echo "Phase 3A Part 4 complete."
echo "Run: npm run dev"
