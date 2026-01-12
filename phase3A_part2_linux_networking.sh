#!/bin/bash
# Phase 3A Part 2: Linux Advanced + Networking Fundamentals (Course-Level)
# Doks-compatible, safe frontmatter

set -e

echo "Creating Phase 3A Part 2: Linux Advanced + Networking Fundamentals..."

mkdir -p content/docs/linux/advanced
mkdir -p content/docs/networking/core

# Linux Advanced
cat > content/docs/linux/advanced/_index.md << 'EOF'
---
title: "Linux Advanced Concepts"
description: "Production-grade Linux knowledge"
contributors: ["Deepak"]
---

This section covers advanced Linux topics used in real-world systems.
EOF

cat > content/docs/linux/advanced/systemd.md << 'EOF'
---
title: "systemd Deep Dive"
description: "Understanding systemd"
contributors: ["Deepak"]
---

systemd is the init system used by most modern Linux distributions.

Key responsibilities:
- Service management
- Logging
- Boot targets
- Dependency handling

Commands:
```bash
systemctl status
systemctl start nginx
systemctl enable docker
```
EOF

cat > content/docs/linux/advanced/permissions-acl.md << 'EOF'
---
title: "Permissions, ACLs & Capabilities"
description: "Advanced Linux security model"
contributors: ["Deepak"]
---

Linux permissions are based on:
- User
- Group
- Others

ACLs provide fine-grained permissions.

Capabilities break root privileges into smaller pieces.
EOF

cat > content/docs/linux/advanced/logging.md << 'EOF'
---
title: "Linux Logging"
description: "journald and rsyslog"
contributors: ["Deepak"]
---

Logs are critical for debugging.

Tools:
- journalctl
- /var/log

Production systems rely on central log aggregation.
EOF

cat > content/docs/linux/advanced/performance.md << 'EOF'
---
title: "Performance Tuning"
description: "Optimizing Linux systems"
contributors: ["Deepak"]
---

Topics:
- CPU bottlenecks
- Memory leaks
- Disk I/O
- Network latency

Tools:
- top
- iotop
- vmstat
- perf
EOF

# Networking Core
cat > content/docs/networking/core/_index.md << 'EOF'
---
title: "Networking Core"
description: "Foundations of networking"
contributors: ["Deepak"]
---

This section builds a deep foundation of networking concepts.
EOF

cat > content/docs/networking/core/osi-tcpip.md << 'EOF'
---
title: "OSI vs TCP/IP"
description: "Networking models explained"
contributors: ["Deepak"]
---

OSI has 7 layers.
TCP/IP has 4 layers.

Understanding layers helps in debugging.
EOF

cat > content/docs/networking/core/tcp-handshake.md << 'EOF'
---
title: "TCP Handshake"
description: "How TCP establishes connections"
contributors: ["Deepak"]
---

TCP uses a 3-way handshake:
1. SYN
2. SYN-ACK
3. ACK

This ensures reliable connections.
EOF

cat > content/docs/networking/core/dns.md << 'EOF'
---
title: "DNS Internals"
description: "How DNS resolution works"
contributors: ["Deepak"]
---

DNS translates domain names into IP addresses.

Key records:
- A
- AAAA
- CNAME
- MX
- TXT
EOF

cat > content/docs/networking/core/http.md << 'EOF'
---
title: "HTTP & HTTPS"
description: "Web protocols"
contributors: ["Deepak"]
---

HTTP is stateless.
HTTPS adds TLS encryption.
EOF

echo "Phase 3A Part 2 complete."
echo "Run: npm run dev"
