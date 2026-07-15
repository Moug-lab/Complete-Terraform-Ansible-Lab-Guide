locals {
  project_name = "terraform-ansible-lab"
  environment  = "lab"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "Terraform"
    Owner       = "Moug-lab"
  }
}