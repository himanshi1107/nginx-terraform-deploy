# 🚀 Deploy Nginx on AWS with Terraform

Welcome to the **Nginx Terraform Deploy** project! This repository demonstrates how to automate the deployment of an Nginx server on AWS using **Terraform**. Perfect for learning, testing, or as a starting point for production-grade deployments.

---

## 🌟 Features

✔️ Provision an EC2 instance with Nginx pre-installed.  
✔️ Secure setup with a custom VPC and security group.  
✔️ Highly modular and reusable Terraform configurations.  
✔️ Accessible via a public IP with HTTP enabled.

---

## 🛠️ Prerequisites

Before you start, make sure you have the following:

1. **Terraform** installed ([Get Terraform](https://developer.hashicorp.com/terraform/tutorials)).
2. **AWS CLI** installed and configured ([Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)).
3. An **AWS Account** with IAM permissions to manage EC2, VPC, and networking.

💡 How It Works

        Internet
          |
    Internet Gateway
          |
    +-------------+
    |   Public    |
    |   Subnet    |
    +-------------+
          |
    +-------------+
    |   EC2       |
    | Nginx Server|
    +-------------+

## 🗂️ Project Structure

```plaintext
📦 nginx-terraform-deploy
├── 📄 main.tf              # Terraform provider definitions
├── 📄 ec2.tf               # EC2 instance setup with Nginx
├── 📄 vpc.tf               # VPC, subnets, Internet Gateway, and routes
├── 📄 security-grp.tf      # Security group configuration
├── 📄 providers.tf         # AWS region configuration
└── 📄 README.md            # Interactive project documentation

