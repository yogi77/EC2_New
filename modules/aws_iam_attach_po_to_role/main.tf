data "aws_iam_policy" "mypolicy" {
    arn="arn.aws:iam::var.accountID:policy/var.pol_name"
  
}

resource "aws_iam_role_policy_attachment" "attach_policy_to_role" {
    role=var.role_name
    policy_arn = data.aws_iam_policy.myploicy.arn
    depends_on=[data.aws_iam_policy.myploicy]
}