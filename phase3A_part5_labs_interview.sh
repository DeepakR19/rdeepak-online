#!/bin/bash
# Phase 3A Part 5: Linux & Networking Labs + Interview Mega Bank
# Doks-compatible, safe frontmatter

set -e

echo "Creating Phase 3A Part 5: Labs + Interview Bank..."

mkdir -p content/docs/linux/labs
mkdir -p content/docs/linux/interview
mkdir -p content/docs/networking/labs
mkdir -p content/docs/networking/interview

# Linux Labs
cat > content/docs/linux/labs/_index.md << 'EOF'
---
title: "Linux Labs"
description: "Hands-on Linux practice"
contributors: ["Deepak"]
---

This section contains step-by-step Linux labs.
EOF

cat > content/docs/linux/labs/process-lab.md << 'EOF'
---
title: "Process Debugging Lab"
description: "Hands-on with Linux processes"
contributors: ["Deepak"]
---

## Objective
Understand and debug Linux processes.

## Steps
```bash
ps aux
top
htop
kill -9 <pid>
```

## Tasks
- Start a background process
- Kill it
- Observe PID changes
EOF

cat > content/docs/linux/labs/memory-lab.md << 'EOF'
---
title: "Memory Debugging Lab"
description: "Investigating memory usage"
contributors: ["Deepak"]
---

## Commands
```bash
free -m
vmstat
top
```

## Goal
Understand memory consumption.
EOF

# Linux Interview
cat > content/docs/linux/interview/_index.md << 'EOF'
---
title: "Linux Interview Q&A"
description: "Linux interview preparation"
contributors: ["Deepak"]
---

This section contains Linux interview questions.
EOF

cat > content/docs/linux/interview/questions.md << 'EOF'
---
title: "Linux Interview Questions"
description: "Beginner to advanced Linux questions"
contributors: ["Deepak"]
---

### Beginner
Q: What is Linux?
A: An open-source operating system.

### Intermediate
Q: What is a zombie process?
A: A terminated process waiting for parent to reap it.

### Advanced
Q: Explain namespaces and cgroups.
A: Used for isolation and resource management.
EOF

# Networking Labs
cat > content/docs/networking/labs/_index.md << 'EOF'
---
title: "Networking Labs"
description: "Hands-on networking practice"
contributors: ["Deepak"]
---

This section contains networking labs.
EOF

cat > content/docs/networking/labs/dns-lab.md << 'EOF'
---
title: "DNS Debugging Lab"
description: "Hands-on DNS troubleshooting"
contributors: ["Deepak"]
---

## Commands
```bash
nslookup google.com
dig google.com
ping google.com
```

## Goal
Understand DNS resolution.
EOF

cat > content/docs/networking/labs/tcp-lab.md << 'EOF'
---
title: "TCP Debugging Lab"
description: "Understanding TCP connections"
contributors: ["Deepak"]
---

## Commands
```bash
ss -lntp
netstat -tulnp
tcpdump
```

## Goal
Observe TCP handshakes.
EOF

# Networking Interview
cat > content/docs/networking/interview/_index.md << 'EOF'
---
title: "Networking Interview Q&A"
description: "Networking interview preparation"
contributors: ["Deepak"]
---

This section contains networking interview questions.
EOF

cat > content/docs/networking/interview/questions.md << 'EOF'
---
title: "Networking Interview Questions"
description: "Beginner to advanced networking questions"
contributors: ["Deepak"]
---

### Beginner
Q: What is DNS?
A: Domain Name System.

### Intermediate
Q: What is NAT?
A: Network Address Translation.

### Advanced
Q: Explain TLS handshake.
A: A cryptographic protocol for secure communication.
EOF

echo "Phase 3A Part 5 complete."
echo "Run: npm run dev"
