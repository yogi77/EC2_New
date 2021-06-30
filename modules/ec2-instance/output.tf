output "id" {
    value = aws_instance.ec2.*.id
  
}
output "arn" {
    value =aws_instance.ec2.*.arn
  
}
output "availability_zone" {
    value = aws_instance.ec2.*.availability_zone
  
}
output "placement_group" {
    value = aws_instance.ec2.*.placement_group
  
}

output "password_data" {
        value =aws_instance.ec2.*.password_data
  
}
output "public_dns" {
    value=aws_instance.ec2.*.public_dns

}
output "public_ip" {
    value = aws_instance.ec2.*.public_ip
  
}
output "primary_network_interface_id" {
    value=aws_instance.ec2.*.primary_network_interface_id
  
}
output "private_dns" {
    value = aws_instance.ec2.*.private_dns
  
}
output "private_ip" {
    value = aws_instance.ec2.*.private_ip
  
}

output "instance_state" {
    value = aws_instance.ec2.*.instance_state
  
}

output "subnet_id" {
    value = aws_instance.ec2.*.subnet_id
  
}


