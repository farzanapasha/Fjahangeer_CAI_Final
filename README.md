### One time initial setup
Add AWS credentials before running the below scripts
```
sh scripts/init-s3-bucket.sh
terrafrom init
```

### Apply Changes
1. Add AWS credentials
2. Run terraform plan
'''
terraform plan
```
3. Run terraform apply
```
terrafrom apply
```

### Destroy resorses
```
terraform destroy
```

# 🚀 AWS Infrastructure Automation with Terraform

## 📌 Overview

This project demonstrates how to automate the provisioning of AWS infrastructure using **Terraform**, focusing on Infrastructure as Code (IaC) best practices. The infrastructure includes a custom VPC, EC2 instances, S3 bucket for remote state, and DynamoDB for state locking.

---

## 📁 Project Structure

