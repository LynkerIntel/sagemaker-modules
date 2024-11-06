variable "domain_name" {
  description = "Name of the SageMaker domain"
  type        = string
  default     = "ioos-cloud-sandbox"
}

variable "subnet_id" {
  description = "Subnet ID for the SageMaker domain"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the SageMaker domain"
  type        = string
}
variable "nameprefix" {
  description = "Prefix to use for some resource names to avoid duplicates"
  type        = string
  default     = "ioos_cloud_sandbox"
}

variable "project_tag" {
  description = "Value of the Project tag for the EC2 instance"
  type        = string
  default     = "IOOS-SM-Notebook"
}

variable "availability_zone" {
  description = "Availability zone to use"
  type        = string
  default     = "us-east-2b"
}

variable "notebook1" {
  description = "Notebook1 config"
  type        = map(string)
  default = {
    "instance_type" = "ml.t3.xlarge"
    "create"        = <<EOF
            #!/bin/bash
            set -e
            # Add any commands you want to run on instance creation here
            yum -y update
#            yum -y install git gcc-c++ python3-devel which gcc-fortran
            EOF
    "start"         = <<EOF
            #!/bin/bash
            set -e
            # Add any commands you want to run on instance start here
            conda env create --quiet --file=https://raw.githubusercontent.com/ioos/ioos_code_lab/main
            EOF

  }
}
