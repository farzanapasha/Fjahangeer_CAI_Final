terraform {
  backend "s3" {
    bucket         = "fjah1872-lab-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "fjah1872-terraform-state-lock-table"
  }
}

