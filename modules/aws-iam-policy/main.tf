resource "aws_iam_policy" "create_iam_policy" {
  #  name = var.iampolicyname
    description=var.description
    policy=var.json_path
    path=var.path  
}