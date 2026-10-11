
provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "test" {
  name  = "/devsecops-lab/oidc-test"
  type  = "String"
  value = "Deployed successfully using Terraform and GitHub Actions"

  tags = {
    Environment = "dev"
    Project     = "DevSecOpsLab"
    ManagedBy   = "Terraform"
  }
}
