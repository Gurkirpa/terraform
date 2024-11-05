#Display output here


# Output for the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.Guru_vpc.id
}

# Output for the Subnet ID
output "subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.pub-sub-1.id
}

#Output for Internet Gateway
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.Guru_igw.id
}

# Output for the Route Table ID
output "route_table_id" {
  description = "The ID of the route table associated with the public subnet"
  value       = aws_route_table.guru-rt.id
}

