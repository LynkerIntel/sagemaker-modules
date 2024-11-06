provider "aws" {
  region = "us-west-2"
}

module "sagemaker_domain" {
  source = "../modules/sagemaker-domain"
  vpc_id = "vpc-12345678"
  subnet_id=    "subnet-12345678"

  # Add any required variables for the sagemaker_domain module here
  # For example:
  # domain_name = "example-domain"
}