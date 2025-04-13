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

