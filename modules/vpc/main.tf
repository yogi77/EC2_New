resource "aws_vpc" "create_vpc" {
    cidr_block = var.cidr_block
    enable_dns_support = var.enable_dns_support #gives you an internal domain name
    enable_dns_hostnames = var.enable_dns_hostnames #gives you an internal host name
    enable_classiclink = var.enable_classiclink
    instance_tenancy = var.instance_tenancy
    tags=var.tags
    
}


