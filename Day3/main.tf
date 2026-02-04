module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source = "./modules/ec2"

  security_group_id = module.security_group.sg_id
  key_name          = "keypair"
}
