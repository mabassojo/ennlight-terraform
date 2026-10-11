
terraform {
  backend "s3" {
    bucket       = "ennie-terra-1003-tfstate"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
