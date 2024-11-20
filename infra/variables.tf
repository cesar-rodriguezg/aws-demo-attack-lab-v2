resource "random_string" "unique_id" {
  length    = 5
  min_lower = 5
  special   = false
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "deployment_name" {
  default = "cesar-eks"
}

variable "security_namespace" {
  default = "twistlock"
}

variable "app_namespace" {
  default = "spring-app"
}

variable "app_image" {
  default = "davidaavilar/springapp"
}

variable "app_image_tag" {
  default = "general"
}

variable "app_container_port" {
  default = 8080
}

variable "app_expose_port" {
  default = 80
}

variable "build_image" {
  type    = bool
  default = false
}

variable "force_image_rebuild" {
  type    = bool
  default = false
}