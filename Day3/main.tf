##############################
#       create VPC
##############################

resource "aws_vpc" "Guru_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "Guru_vpc"
  }
}
##############################
#    Public Subnet
##############################

resource "aws_subnet" "pub-sub-1" {
  vpc_id            = aws_vpc.Guru_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.zone}"

  tags = {
    Name = "pub-sub-1"
  }
}
##############################
#     Internet Gateway
##############################

resource "aws_internet_gateway" "Guru_igw" {
  vpc_id = aws_vpc.Guru_vpc.id

  tags = {
    Name = "Guru_igw"
  }
}

###############################
#    Route Table
###############################

resource "aws_route_table" "guru-rt" {
  vpc_id = aws_vpc.Guru_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Guru_igw.id
  }

  tags = {
    Name = "guru-rt"
  }
}

############################
#   RT Assocation
############################

resource "aws_route_table_association" "guru-rta" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.guru-rt.id
}


