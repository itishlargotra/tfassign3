variable "ports" {
  type = map(any)
}


variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "ami"{
  type=string
}

variable "instance_type"{
  type=string
}