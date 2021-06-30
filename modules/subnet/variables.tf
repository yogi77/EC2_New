
variable "region" {
     default = "us-east-1"
}
variable "tags" {
    default = ""
  
}

variable "availabilityZone" {
     default = ""
}
variable "map_public_ip_on_launch" {
    default = "true"
    description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false."

  
}

variable "cidr_block" {
    default = "10.0.0.0/24"
}

variable "vpc_id" {
    default = ""
  
}

# end of variables.tf