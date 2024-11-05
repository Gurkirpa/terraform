#Display output here
output "public_ip" {
  description = "Public IP address assigned to the host by EC2"
  value       = "${aws_instance.Guri_Aman.public_ip}"
}
