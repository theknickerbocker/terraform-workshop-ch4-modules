variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type = number
  default = 8080
}

variable "alb_http_port" {
  description = "The port the ALB will listen for HTTP requests on"
  type = number
  default = 80
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type = string
}

variable "db_remote_state_bucket" {
  description = "The name of the s3 bucket for the database's remote state"
  type = string
}

variable "db_remote_state_key" {
  description = "The path of the s3 bucket for the database's remote state"
  type = string
}

variable "instance_type" {
  description = "The type of EC2 instance to run (eg. t2.micro)"
  type = string
}

variable "min_size" {
  description = "The minimum number of EC2 instances in the ASG"
  type = number
}

variable "max_size" {
  description = "The maximum number of EC2 instances in the ASG"
  type = number
}

locals {
  http_port = 80
  any_port = 0
  any_protocol = "-1"
  tcp_protocol = "tcp"
  http_protocol = "HTTP"
  all_ips = ["0.0.0.0/0"]
}
