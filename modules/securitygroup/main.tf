data "aws_caller_identity" "securitygroup" {
  
}

resource "aws_security_group" "create_security_group"{
    #count = var.count
    name=var.name
   # description=var.description
    vpc_id=var.vpc_id
    tags=var.tags

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
    }
       ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    

}