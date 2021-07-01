variable "name" {
  description = "My EC2 instance"
  default="myfirstistace"
}

variable "instance_type" {
  description = "Instacetype"
  default     = "t2.micro"
}
variable "ami" {
    type="string"
    default="ami-02b8cccf335ee66fb"
}
variable "env" {
  type = "string"
  default = "dev"


}

variable "encrypted"{
    default="false"
}

variable "root_encrypted"{
    default="false"
}

variable "AWS_ACCESS_KEY" {
  default = "AKIAVT3J7MX2XH2A4HE6"


}
variable "AWS_SECRET_KEY" {
  default="141T5T0iR/vlc0LnC8n4hKHewwsKyxBgs/o0Q+OC"


}
variable "owner" {
  type = "string"
  default = "sriram"


}

variable "ebs_optimized" {
  default="false"
}
variable "root_volume_size" {
  type = "string"
  default = "30"


}
variable "root_volume_type" {


    default = "gp2"
}
variable "iampolicyname" {
  default = "ec2policy"


}
variable "availability_zone" {
    default = "us-east-1a"
}variable "map_public_ip_on_launch" {
  default = "true"
  
}
variable "iamrolename" {
  default = "createiamrole"



}

variable "description"{
    type = "map"
    default = {
        "ingress_group"=["default ingress group"]
        "egress-group"=["default egress group"]
    }
}
variable "enable_dns_hostnames" {
    default = "true"
    description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC.
Defaults false."




}

variable "enable_classiclink" {
    default = "false"
    description = "(Optional) A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic. See the ClassicLink documentation for more information. Defaults false."



}

variable "instance_tenancy" {
    default = "default"

    description = "(Optional) A tenancy option for instances launched into the VPC. Default is default, which makes your instances shared on the host. Using either of the other options (dedicated or host) costs at least $2/hr."



}
variable "cidr_block" {
    default = "10.0.0.0/16"
}
variable "enable_dns_support" {
    default = "true"
    description = "(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults true."


}

variable "subnetcidr_block" {
    default = "10.0.1.0/24"
}

variable "ebs_volume_type" {
  default = "gp2"
  type = "string"



}
variable "ebs_volume_size" {
  default = "260"



}
variable "instance_count" {
  default = "1"


}
variable "subnet_name" {
  default = "app-ec2-1"


}
variable "dataclass" {
  default = "internal"


}
variable "disable_api_termination" {
  default = "false"



}

variable "cidr_block_vpc" {
  default = "10.0.0.0/16"


}
variable "securitygroupname" {
  default = "myfirstsecuritygroup"


}

variable "backends3_bucket" {
  default = "store-terraform-state-poc"


}
variable "backends3prefix" {
  default = "dev/myapp/terraform.tfstate"



}
variable "region" {
  default = "us-east-1"



}
locals {



  tags={
    Environment=var.env
    region=var.region

  }
  iam_role_tags={



   Environment=var.env
    region=var.region


  }
  ec2_tags={




    Environment=var.env
    region=var.region


  }

  mysubnet_tags={
    Environment=var.env
    region=var.region
  }
}