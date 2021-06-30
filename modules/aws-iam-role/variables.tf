variable "iam_role_name" {
    default = "get_from_wrapper"
  
}

variable "json_path" {
    default = "get_from_wrapper"
  
}

variable "iam_role_json" {
    default = "get_from_wrapper"
  
}
variable "region" {
    default = "get_from_wrapper"
  
}
variable "env" {

    default = "get_from_wrapper"
  
}

variable "tags" {
    default = ""
  
}
variable "force_detach_policies" {
    default = "false"
  
}

variable "suffix" {
    default = ""
  
}
locals {
suffix_name=var.iam_role_name
  
}