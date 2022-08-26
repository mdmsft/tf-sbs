locals {
  resource_suffix = "${var.project}-${terraform.workspace == "default" ? "dev" : terraform.workspace}-${var.location.code}"
}
