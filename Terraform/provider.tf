provider "aws" {
    region = "us-east-1"
    profile = "jhorvi-aws"
}   

terraform {
    backend "s3" {
        bucket = "jav-terraform-devops-backend-file"
        region = "us-east-1"
        key = "terraform.tfstate"
        encrypt = true
        use_lockfile = true
        profile = "jhorvi-aws"
    }
}
