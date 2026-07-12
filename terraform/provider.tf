provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Terraform Ansible Lab"
      Environment = "Lab"
      ManagedBy   = "Terraform"
      Owner       = "Moug-lab"
    }
  }
}