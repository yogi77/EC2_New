
variable "region" {
     default = "us-east-1"
}
variable "enable_dns_support" {
    default = "true"
    description = "(Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  
}

variable "enable_dns_hostnames" {
    default = "true"
    description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
      
}

variable "enable_classiclink" {
    default = "false"
    description = "(Optional) A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic. See the ClassicLink documentation for more information. Defaults false."
      
}

variable "instance_tenancy" {
    default = "default"
    description = "(Optional) A tenancy option for instances launched into the VPC. Default is default, which makes your instances shared on the host. Using either of the other options (dedicated or host) costs at least $2/hr."
      
}

variable "vpcname" {
    default = "myfirstvpc"
  
}

variable "cidr_block" {
  default = "10.0.0.0/16"
  
}

variable "tags"{

    type = "map"
    description = "tagson the resources"
    default = {
        "system_number"="00000"
    }
}
# end of variables.tf