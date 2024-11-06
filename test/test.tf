provider "aws" {
  region = "us-west-2"
}

module "sagemaker_domain" {
  source = "../modules/sagemaker-domain"

  # Add any required variables for the sagemaker_domain module here
  # For example:
  # domain_name = "example-domain"
}