output "introduction" {
  value = "${local.introduction} and ${var.likes_terraform ? "likes" : "doesn't like"} Terraform"
}

output "password" {
  value     = "Password: ${var.password}"
  sensitive = true
}
