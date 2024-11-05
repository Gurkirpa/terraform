# Define an EC2 instance
resource "aws_instance" "Guri_Aman" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone =  "${var.zone}"

  tags = {
    Name = "Guri_Aman"
  }
}

