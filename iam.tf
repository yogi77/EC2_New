data "template_file" "ec2policy" {
    template = "${file("./templates/ec2-policy.json")}"
  
}

module "ec2_policy" {
    source = "./modules/aws-iam-policy"
   # name = var.iampolicyname
    json_path=data.template_file.ec2policy.rendered
    path="/"
    description="Iam Policy associated with EC2"
  
}

data "template_file" "ec2rolepolicy" {
    template = "${file("./templates/ec2-assume-policy.json")}"
}

module "ec2_role" {
    source = "./modules/aws-iam-role"
    iam_role_name=var.iamrolename
    json_path=data.template_file.ec2rolepolicy.rendered
    region=var.region
   # description="ec2 iam profile"
    tags=local.iam_role_tags
  
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = module.ec2_role.name
  role = module.ec2_role.id
  depends_on = [module.ec2_role]
}
