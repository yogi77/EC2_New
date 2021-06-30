
variable "iampolicyname" {
    default = ""
  
}
variable "suffix" {
    default = ""
  
}
variable "json_path" {
    default = "get_from_wrapper"
  
}
variable "iam_policy_json" {
    default = "get_from_wrapper"
  
}
variable "env" {
    default = "get_from_wrapper"
  
}
variable "path" {
    default = "get_from_wrapper"
  
}
variable "description" {
    default = "get_from_wrapper"
  
}
locals {
  suffix_name=var.iampolicyname
}