
provider "aws" {
  region = "us-east-1"
}

module "aws_caltech_infrastructure" {
  source     = "./modules/aws_caltech_infrastructure"
  for_each   = toset(var.states)
  state_name = each.value
}
