output "iam_instance_profile" {
    value = aws_iam_instance_profile.ec2_profile.name
  
}
output "id" {
    value = module.myec2-instance.id
  
}
output "vpcid" {
  value = module.myvpc.id
}

output "subetid" {
    value = module.mysubnet.id
  
}
output "securitygroupid" {
  value = module.securitygroup.id
  
}