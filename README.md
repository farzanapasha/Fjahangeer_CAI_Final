## 🛠️ Technologies & Tools

- Terraform (v1.5+)
- AWS (VPC, EC2, S3, DynamoDB)
- GitHub
- CLI (Command Line Interface)

---

## 🚀 Deployment Steps

Add AWS credentials before running the below steps

### 1. **Clone the repository**

   First, clone the repository to your local machine:
   ```bash
   git clone https://github.com/farzanapasha/Fjahangeer_CAI_Final.git
   cd Fjahangeer_CAI_Final
   ```

### Initialize AWS Resources

The script scripts/init-s3-bucket.sh will create the necessary AWS resources (S3 bucket and DynamoDB table) for managing the Terraform state.

Run the initialization script:
```
sh scripts/init-s3-bucket.sh
```

### Initialize Terraform
Next, initialize the Terraform configuration to set up the provider and prepare the backend:
```
terrafrom init
```

### Preview the Infrastructure Plan
Before applying the changes, preview what Terraform plans to create, modify, or destroy:
```
terrafrom plan
```

### Apply Infrastructure
Apply the configuration to create the resources defined in the Terraform files:
```
terrafrom apply
```

### Run below command to destroy the created resorses using terraform 
```
terraform destroy
```

