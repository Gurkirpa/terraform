##########################
#    Create VPC
##########################

resource "aws_vpc" "guru-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "guru-vpc"
  }
}

###########################
#      Subnet
###########################

resource "aws_subnet" "guru-pub-sub" {
  vpc_id                  = aws_vpc.guru-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "${var.zone}"
  map_public_ip_on_launch = true

  tags = {
    Name = "guru-pub-sub"
  }
}

############################
#     Security Group
############################

resource "aws_security_group" "guru-sg" {
  name        = "example_security_group"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.guru-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "guru-sg"
  }
}

###############################
#    Create EC2 Instance
###############################

resource "aws_instance" "Guri_Aman" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone =  "${var.zone}"
  subnet_id     = "${aws_subnet.guru-pub-sub.id}"

  vpc_security_group_ids = ["${aws_security_group.guru-sg.id}"]

  tags = {
    Name = "Guri_Aman"
  }
}


