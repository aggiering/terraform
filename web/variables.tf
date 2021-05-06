variable aws_region {
  description = "AWS Region for deployment"
  default     = "us-west-2"
}

variable server_port {
  description = "The port number server will use for HTTP requests"
  type        = number
  default     = 8080
}