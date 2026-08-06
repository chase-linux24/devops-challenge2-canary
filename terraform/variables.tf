
variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-2"
}

variable "project_name" {
  description = "Project tag prefix"
  type        = string
  default     = "tc2-canary"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "tc2-canary-eks"
}