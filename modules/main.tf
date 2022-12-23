module "s3buck" {
  source = "../s3"
  bucketname = var.bucketname
  tags=var.tags
}


module "ec2_ins" {
  source = "../ec2-instances"
  for_each = var.ec2
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  tags = each.value["tags"]
}

module "sggroup" {
  source = "../security-group"
  ports = var.ports 
  vpc_id = var.vpc_id
  name = var.name
  cidr = var.cidr
  tags = var.tags
  ami=var.ami
  instance_type=var.instance_type
}
