terraform {
  backend "s3" {
    bucket         = "caltech-terraform-state-x733"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "caltech-terraform-state-lock-table"
  }
}
