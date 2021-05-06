terraform {
  # optional - stores terraform state in AWS S3 
  backend "s3" { 
    bucket = "panlab-tf-state" 
    key = "panlab/web-cluster/terraform.tfstate" 
    region = "us-west-2" 
    dynamodb_table = "panlab-tf-lock" 
    encrypt = true 
  }
}

provider "aws" {
  region     = "${var.aws_region}"
}
