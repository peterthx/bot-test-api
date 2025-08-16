terraform {
  required_version = ">= 1.6.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "httpbin" {
  name         = "kennethreitz/httpbin"
  keep_locally = false
}

resource "docker_container" "httpbin" {
  name  = "httpbin"
  image = docker_image.httpbin.latest
  ports {
    internal = 80
    external = 8080
  }
  # healthcheck แบบง่าย ๆ
  healthcheck {
    test     = ["CMD", "wget", "-q", "-O", "-", "http://localhost/health"]
    interval = "10s"
    timeout  = "2s"
    retries  = 3
  }
}

output "base_url" {
  value = "http://localhost:8080"
}
