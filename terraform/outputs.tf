
output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "ecr_repository_url" {
  description = "ECR repo URL for pushing images"
  value       = aws_ecr_repository.foodtruck.repository_url
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "github_actions_role_arn" {
  description = "Role ARN for the GitHub Actions workflow"
  value       = aws_iam_role.github_actions.arn
}