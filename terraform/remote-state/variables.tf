variable "preferred_region" {
  description = "Region in which to create the S3 bucket for Terraform state backend storage."
  type        = string
  nullable     = false
  default = "us-west-1"
}

variable "tfstate_s3_bucket_name" {
  description = "Bucket name to use for Terraform state backend."
  type        = string
  nullable     = false
  default = "ioos-test-mykel-terraform-state"
}
