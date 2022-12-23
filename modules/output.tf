output "sg-op1" {
  value = module.sggroup.sg-output
}

output "sg-op2" {
  value = module.sggroup.sg-output2
}

output "s3-op1" {
    
  value = module.s3buck.s3-output
}

output "s3-op2" {
  value = module.s3buck.s3-output2
}


output "ec2-op1" {
  value = [for i in var.ec2:i["ami"]]
}


output "ec2-op2" {
    value = [for i in var.ec2:i["instance_type"]]
}
