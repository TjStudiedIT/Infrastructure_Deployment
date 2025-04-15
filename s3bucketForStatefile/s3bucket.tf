# configured aws provider with proper credentials
provider "aws" {
  region    = "us-east-1"
  profile   = "BarbieGeek"
}



resource "aws_s3_bucket" "example" {
  bucket = "latoya-mcgaffie"

  lifecycle {
    prevent_destroy = true
  }
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
