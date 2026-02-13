module "ec2" {
  source = "../terraform-aws-ec2"
  # these are variables expected by modules, not arguements of respurces
  ami_id             = var.ami_override
  instance_type      = var.instance_type # iam overiding what i define in variables.tf
  security_group_ids = var.security_group_id
}

