#Define variable here

variable "instance_type" {
  default     = "t2.micro"
}

variable "ami_id" {
  default = "ami-06b21ccaeff8cd686"
}

variable "zone" {
  default = "us-east-1a"
}

variable "region" {
  default = "us-east-1"
}
