
resource "aws_ecr_repository" "foodtruck" {
  name                 = "${var.project_name}-foodtruck"
  image_tag_mutability = "IMMUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = var.project_name
  }
}