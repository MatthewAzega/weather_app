resource "aws_ecr_repository" "default" {
  name = "softserv_app"

  image_scanning_configuration {
    scan_on_push = true
  }

}

output "repository_url" {
  value = aws_ecr_repository.default.repository_url
}