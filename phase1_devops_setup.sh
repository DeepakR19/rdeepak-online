#!/bin/bash
# Phase 1 DevOps Content Setup for Doks
# Tested structure, Doks-compatible frontmatter, safe defaults

set -e

PROJECT_ROOT="$(pwd)"

echo "Using project root: $PROJECT_ROOT"

mkdir -p content/docs/{linux,git,docker,kubernetes}
mkdir -p content/blog

# Homepage
cat > content/_index.md << 'EOF'
---
title: "Deepak's DevOps Hub"
description: "Practical DevOps learning from beginner to advanced"
---

Welcome to my DevOps knowledge base.

Topics covered:
- Linux
- Git
- Docker
- Kubernetes
- CI/CD (coming next)
- Cloud (coming next)
EOF

# Linux section
cat > content/docs/linux/_index.md << 'EOF'
---
title: "Linux"
description: "Linux fundamentals for DevOps"
contributors: ["Deepak"]
---

Linux is the backbone of DevOps and cloud systems.
EOF

cat > content/docs/linux/filesystem.md << 'EOF'
---
title: "Linux Filesystem"
description: "Understanding the Linux directory structure"
contributors: ["Deepak"]
---

## What is the Linux filesystem?

Linux uses a hierarchical directory structure.

| Directory | Purpose |
|----------|---------|
| /        | Root |
| /bin     | Essential commands |
| /etc     | Config files |
| /home    | User data |
| /var     | Logs & variable data |

### Useful commands

```bash
ls -l
df -h
du -sh *
```
EOF

# Git section
cat > content/docs/git/_index.md << 'EOF'
---
title: "Git"
description: "Version control system"
contributors: ["Deepak"]
---

Git is used to track changes and collaborate on code.
EOF

cat > content/docs/git/basics.md << 'EOF'
---
title: "Git Basics"
description: "Introduction to Git"
contributors: ["Deepak"]
---

## What is Git?

Git is a distributed version control system.

```bash
git init
git clone
git status
git add .
git commit -m "message"
git push
```
EOF

# Docker section
cat > content/docs/docker/_index.md << 'EOF'
---
title: "Docker"
description: "Containerization platform"
contributors: ["Deepak"]
---

Docker allows you to package and run applications in containers.
EOF

cat > content/docs/docker/intro.md << 'EOF'
---
title: "Docker Introduction"
description: "What is Docker?"
contributors: ["Deepak"]
---

Docker packages apps with their dependencies.

```bash
docker build -t myapp .
docker run -p 80:80 myapp
```
EOF

# Kubernetes section
cat > content/docs/kubernetes/_index.md << 'EOF'
---
title: "Kubernetes"
description: "Container orchestration"
contributors: ["Deepak"]
---

Kubernetes automates container deployment, scaling, and management.
EOF

cat > content/docs/kubernetes/pods.md << 'EOF'
---
title: "Pods"
description: "Smallest unit in Kubernetes"
contributors: ["Deepak"]
---

A Pod is the smallest deployable unit in Kubernetes.
EOF

# Blog post
cat > content/blog/my-devops-journey.md << 'EOF'
---
title: "My DevOps Journey"
description: "Why I started learning DevOps"
date: 2026-01-11
contributors: ["Deepak"]
---

I am documenting my DevOps journey from scratch.
EOF

echo "Phase 1 content created successfully."
echo "Now run: npm run dev"
