#Display output

# Output for the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.guru-vpc.id
}


# Output for the Subnet ID
output "subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.guru-pub-sub.id
}


#Output for Security-group
output "security_group_id" {
  value = aws_security_group.guru-sg.name
  description = "The ID of the security group"
}

# Output for Instance ID
output "instance_id" {
  value = aws_instance.Guri_Aman.id
  description = "The ID of the EC2 instance"
}


# Output for Instance Public IP
output "instance_public_ip" {
  value = aws_instance.Guri_Aman.public_ip
  description = "The public IP of the EC2 instance"
}


# Output for Instance Private IP
output "instance_private_ip" {
  value = aws_instance.Guri_Aman.private_ip
  description = "The private IP of the EC2 instance"
}

