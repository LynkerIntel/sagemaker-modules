output "sagemaker_security_group_id" {
    description = "The ID of the SageMaker security group"
    value       = aws_security_group.sagemaker_sg.id
}

output "sagemaker_execution_role_arn" {
    description = "The ARN of the SageMaker execution role"
    value       = aws_iam_role.sagemaker_execution_role.arn
}

output "sagemaker_domain_id" {
    description = "The ID of the SageMaker domain"
    value       = aws_sagemaker_domain.sagemaker_domain.id
}

output "sagemaker_domain_arn" {
    description = "The ARN of the SageMaker domain"
    value       = aws_sagemaker_domain.sagemaker_domain.arn
}