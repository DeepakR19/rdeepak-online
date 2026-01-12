#!/bin/bash
# Phase 3A Part 3: Linux Internals + Networking Deep Dive
# Doks-compatible, safe frontmatter

set -e

echo "Creating Phase 3A Part 3: Linux Internals + Networking Deep Dive..."

mkdir -p content/docs/linux/internals
mkdir -p content/docs/networking/deep

# Linux Internals
cat > content/docs/linux/internals/_index.md << 'EOF'
---
title: "Linux Internals"
description: "How Linux works under the hood"
contributors: ["Deepak"]
---

This section explains how Linux works internally, which is critical for debugging production issues.
EOF

cat > content/docs/linux/internals/namespaces.md << 'EOF'
---
title: "Namespaces"
description: "Process isolation in Linux"
contributors: ["Deepak"]
---

Namespaces provide isolation for processes.

Types:
- PID
- NET
- MNT
- UTS
- IPC
- USER

Used heavily by containers.
EOF

cat > content/docs/linux/internals/cgroups.md << 'EOF'
---
title: "cgroups"
description: "Resource management in Linux"
contributors: ["Deepak"]
---

Control groups limit CPU, memory, and I/O.

Used by Docker and Kubernetes.
EOF

cat > content/docs/linux/internals/network-stack.md << 'EOF'
---
title: "Linux Networking Stack"
description: "From NIC to socket"
contributors: ["Deepak"]
---

Packets travel from NIC → kernel → socket → application.

Tools:
- ss
- ip
- tcpdump
- strace
EOF

# Networking Deep
cat > content/docs/networking/deep/_index.md << 'EOF'
---
title: "Networking Deep Dive"
description: "Advanced networking for DevOps"
contributors: ["Deepak"]
---

This section focuses on production-grade networking.
EOF

cat > content/docs/networking/deep/subnetting.md << 'EOF'
---
title: "Subnetting"
description: "IP addressing and CIDR"
contributors: ["Deepak"]
---

Subnetting divides networks.

CIDR example:
- 10.0.0.0/16
- 10.0.1.0/24
EOF

cat > content/docs/networking/deep/nat.md << 'EOF'
---
title: "NAT"
description: "Network Address Translation"
contributors: ["Deepak"]
---

NAT translates private IPs to public ones.
EOF

cat > content/docs/networking/deep/firewalls.md << 'EOF'
---
title: "Firewalls & iptables"
description: "Packet filtering"
contributors: ["Deepak"]
---

Firewalls control traffic.

Tools:
- iptables
- nftables
EOF

cat > content/docs/networking/deep/tls.md << 'EOF'
---
title: "TLS Handshake"
description: "How HTTPS security works"
contributors: ["Deepak"]
---

TLS ensures encrypted communication.

Steps:
- ClientHello
- ServerHello
- Certificate validation
- Key exchange
EOF

echo "Phase 3A Part 3 complete."
echo "Run: npm run dev"
