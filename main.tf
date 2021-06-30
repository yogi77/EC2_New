provider "aws" {
  region     = "us-east-1"
  profile = "terraform_iam_user"
  #access_key = var.AWS_ACCESS_KEY
  #secret_key = var.AWS_SECRET_KEY
  
}

data "aws_availability_zones" "available" {}

data "aws_caller_identity" "current" {}

#terraform {
  #backend "s3" {
    #bucket = "terraform-state231"
    #key    = "apps/ec2/terraformec2.tfstate"
	#profile = "terraform_iam_user"
    #region = "us-east-1"
  #}
#}
 
resource "aws_volume_attachment" "attachebsvolume" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.createebsvolume.id
  count = "${length(module.myec2-instance.id)}"
  instance_id = "${element(module.myec2-instance.id, count.index)}"
}

resource "aws_ebs_volume" "createebsvolume" {
  availability_zone = "us-east-1e"
  size              = 1
}


module "myvpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block_vpc
  enable_dns_support=var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
   #gives you an internal host name
  enable_classiclink = var.enable_classiclink
  instance_tenancy = var.instance_tenancy  
}
module "mysubnet" {
  source = "./modules/subnet"
    vpc_id = module.myvpc.id
    cidr_block = var.subnetcidr_block
    map_public_ip_on_launch = var.map_public_ip_on_launch //it makes this a public subnet
   # availability_zone = var.availability_zone
    tags=local.mysubnet_tags 
}

module "securitygroup" {
  source = "./modules/securitygroup"
  name=var.securitygroupname
  vpc_id=module.myvpc.id
  tags=local.tags
  description=var.description
  
}
resource "aws_internet_gateway" "prod-igw" {
    vpc_id = module.myvpc.id
    
}

resource "aws_route_table" "prod-public-crt" {
    vpc_id = module.myvpc.id
    
    route {
        //associated subnet can reach everywhere
        cidr_block = "0.0.0.0/0" 
        //CRT uses this IGW to reach internet
        gateway_id = aws_internet_gateway.prod-igw.id
    }
    
  
}

/*resource "aws_route_table_association" "prod-crta-public-subnet-1"{
    subnet_id = module.mysubnet.id
    route_table_id = aws_route_table.prod-public-crt.id
}*/

module "myec2-instance" {
  source="./modules/ec2-instance"
  ami = var.ami
  #ec2_names="testig"
  #instance_count=var.instance_count
  instance_type=var.instance_type
  #iam_instance_profile = var.iam_instance_profile
  ebs_volume_size=var.ebs_volume_size
  ebs_volume_type=var.ebs_volume_type
  ebs_optimized=var.ebs_optimized
  root_volume_type=var.root_volume_type
  root_volume_size=var.root_volume_size
  encrypted=var.root_encrypted
  env=var.env
  owner=var.owner
  dataclass=var.dataclass
  disable_api_termination=var.disable_api_termination
  subnet_name=var.subnet_name
  subnet_id=module.mysubnet.id
  vpc_security_group_ids = [module.securitygroup.id]
  iam_instance_profile=aws_iam_instance_profile.ec2_profile.name
  tags=local.ec2_tags
    
}
