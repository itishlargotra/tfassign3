resource "aws_s3_bucket" "s3-buck" {
  bucket = var.bucketname
  tags =var.tags
}