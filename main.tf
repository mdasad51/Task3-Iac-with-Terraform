# Pulling Nginx image from Docker Hub using Terraform

resource "docker_image" "nginx_image" {
	name = "nginx:latest"
	keep_locally = false
}

# Now running Nginx container using Terraform

resource "docker_container" "nginx_ctr" {
	image = docker_image.nginx_image.name
	name = "Nginx_Automated_Container"
	ports {
       	      internal = 80
	      external = 80
}
}
