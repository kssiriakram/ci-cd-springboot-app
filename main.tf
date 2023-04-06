terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
}

resource "docker_image" "ubuntu" {
  name = "mohamedakramkssiri/ci-cd-springboot-app"
}

# Creating a Docker Container using the latest ubuntu image.
resource "docker_container" "webserver" {
  image             = docker_image.ubuntu.name
  name              = "terraform"
  must_run          = true
  publish_all_ports = true
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}
