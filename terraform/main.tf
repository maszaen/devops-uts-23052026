terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "app_config" {
  content  = <<EOT
APP_NAME=${var.app_name}
ENVIRONMENT=${var.environment}
PORT=3000
EOT
  filename = "../output/app-config.env"
}

resource "local_file" "deploy_info" {
  content  = "Deployed: ${var.app_name} to ${var.environment}"
  filename = "../output/deploy-info.txt"
}