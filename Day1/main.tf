provider "aws" {
  region = "us-east-1"
}

# Define an EC2 instance
resource "aws_instance" "Guri_Aman" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"
  availability_zone =  "us-east-1a"

  tags = {
    Name = "Guri_Aman"
  }
}

