terraform {
  required_version = ">= 1.6.0"

  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

provider "null" {}

resource "null_resource" "control_plane" {
  triggers = {
    message = "CI/CD is the only execution plane"
  }
}