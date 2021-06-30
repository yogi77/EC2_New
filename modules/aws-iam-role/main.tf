data "aws_caller_identity" "current"{}

resource "aws_iam_role" "create_iam_role" {
  name               = var.suffix != "" ? local.suffix_name:var.iam_role_name
  #path               = "/system/"
  assume_role_policy = var.json_path
  force_detach_policies = var.force_detach_policies
  #permissions_boundary=data.aws_iam_policy_permbound.arn
  tags=var.tags
  }