output "id" {

    description = "The ID o the security group"
    value=aws_security_group.create_security_group.id
  
}

output "arn" {
    description = "The arn of the security group"
    value = aws_security_group.create_security_group.arn
  
}

output "name" {
    description = "The name of the security group"
    value = aws_security_group.create_security_group.name
  
}

output "description" {
    description = "the VPC ID."
    value = aws_security_group.create_security_group.name
  
}