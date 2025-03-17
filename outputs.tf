output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.ec2_vm.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_vm.public_ip
}
