#!/bin/bash
# Phase 2 DevOps Content Setup for Doks
# Adds Networking, CI/CD, Jenkins, GitHub Actions, Terraform, AWS, Monitoring, Security, Interview Q&A

set -e

echo "Starting Phase 2 content generation..."

mkdir -p content/docs/{networking,cicd,jenkins,github-actions,terraform,aws,monitoring,security,interview}

# Networking
cat > content/docs/networking/_index.md << 'EOF'
---
title: "Networking"
description: "Networking fundamentals for DevOps"
contributors: ["Deepak"]
---

Networking is core to DevOps. This section covers OSI, TCP/IP, DNS, HTTP, and load balancing.
EOF

cat > content/docs/networking/osi-vs-tcpip.md << 'EOF'
---
title: "OSI vs TCP/IP"
description: "Understanding networking models"
contributors: ["Deepak"]
---

## OSI Model
7 layers: Physical, Data Link, Network, Transport, Session, Presentation, Application

## TCP/IP Model
4 layers: Network Access, Internet, Transport, Application
EOF

# CI/CD
cat > content/docs/cicd/_index.md << 'EOF'
---
title: "CI/CD"
description: "Continuous Integration and Deployment"
contributors: ["Deepak"]
---

CI/CD automates build, test, and deployment.
EOF

cat > content/docs/cicd/pipelines.md << 'EOF'
---
title: "Pipelines"
description: "CI/CD Pipelines explained"
contributors: ["Deepak"]
---

A pipeline automates code flow from commit to production.
EOF

# Jenkins
cat > content/docs/jenkins/_index.md << 'EOF'
---
title: "Jenkins"
description: "Automation server"
contributors: ["Deepak"]
---

Jenkins is used to build CI/CD pipelines.
EOF

cat > content/docs/jenkins/freestyle-vs-pipeline.md << 'EOF'
---
title: "Freestyle vs Pipeline"
description: "Jenkins job types"
contributors: ["Deepak"]
---

Freestyle is simple. Pipelines are code-based.
EOF

# GitHub Actions
cat > content/docs/github-actions/_index.md << 'EOF'
---
title: "GitHub Actions"
description: "CI/CD using GitHub"
contributors: ["Deepak"]
---

GitHub Actions automates workflows.
EOF

cat > content/docs/github-actions/workflows.md << 'EOF'
---
title: "Workflows"
description: "GitHub Actions workflows"
contributors: ["Deepak"]
---

Workflows are YAML-defined automation pipelines.
EOF

# Terraform
cat > content/docs/terraform/_index.md << 'EOF'
---
title: "Terraform"
description: "Infrastructure as Code"
contributors: ["Deepak"]
---

Terraform is used to provision infrastructure.
EOF

cat > content/docs/terraform/basics.md << 'EOF'
---
title: "Terraform Basics"
description: "Intro to Terraform"
contributors: ["Deepak"]
---

Terraform uses HCL to define infra.
EOF

# AWS
cat > content/docs/aws/_index.md << 'EOF'
---
title: "AWS"
description: "Amazon Web Services"
contributors: ["Deepak"]
---

AWS is the most popular cloud provider.
EOF

cat > content/docs/aws/ec2.md << 'EOF'
---
title: "EC2"
description: "Elastic Compute Cloud"
contributors: ["Deepak"]
---

EC2 provides virtual servers in the cloud.
EOF

# Monitoring
cat > content/docs/monitoring/_index.md << 'EOF'
---
title: "Monitoring"
description: "Observability tools"
contributors: ["Deepak"]
---

Monitoring ensures system health.
EOF

cat > content/docs/monitoring/prometheus.md << 'EOF'
---
title: "Prometheus"
description: "Metrics monitoring"
contributors: ["Deepak"]
---

Prometheus collects metrics.
EOF

# Security
cat > content/docs/security/_index.md << 'EOF'
---
title: "Security"
description: "DevSecOps fundamentals"
contributors: ["Deepak"]
---

Security must be built-in.
EOF

cat > content/docs/security/basics.md << 'EOF'
---
title: "Security Basics"
description: "Intro to DevSecOps"
contributors: ["Deepak"]
---

Security in CI/CD pipelines.
EOF

# Interview
cat > content/docs/interview/_index.md << 'EOF'
---
title: "Interview Q&A"
description: "DevOps interview prep"
contributors: ["Deepak"]
---

Common DevOps interview questions.
EOF

cat > content/docs/interview/linux.md << 'EOF'
---
title: "Linux Interview"
description: "Linux interview questions"
contributors: ["Deepak"]
---

Q: What is a process?
A: A running instance of a program.
EOF

echo "Phase 2 content created successfully."
echo "Now run: npm run dev"
