resource "aws_subnet" "createsubnet" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
    map_public_ip_on_launch = "true" //it makes this a public subnet
   # availability_zone = var.availability_zone
    tags=var.tags
    
}