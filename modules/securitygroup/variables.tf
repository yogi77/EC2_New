variable "region"{
    default=""
}
variable "name" {
    
    default = "mysecuritygroup"
  
}

variable "description"{
    default = ""
}

variable "vpc_id" {
    description = "vpc id (arn) of the VPC used"
    default = ""

  
}

variable "tags"{

    type = "map"
    description = "tagson the resources"
    default = {
        "system_number"="00000"
    }
}