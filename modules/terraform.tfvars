ports = {
  "HTTPS" = 443,
  "HTTP"  = 80
  "SSH"   = 22
}

vpc_id = "vpc-04b48df654897cfae"

name = "itish-sg"

cidr = "50.0.0.0/24"

tags = {
      Name="itish"
      Owner="itish.largotra@cloudeq.com"
      Purpose="training"
    }

#bucket
bucketname = "itish-bucket"

ami           = "ami-0cca134ec43cf708f"
instance_type = "t2.micro"


#instances


ec2 = {
  "1" = {

    ami           = "ami-0cca134ec43cf708f",
    instance_type = "t2.micro",
    tags={
      name="itish"
      owner="itish.largotra@cloudeq.com"
      purpose="training"
    }

  },

  "2" = {
    ami          = "ami-0cca134ec43cf708f",
    instance_type = "t2.micro",
   tags={
      name="itish"
      owner="itish.largotra@cloudeq.com"
      purpose="training"
    }
  }


}






