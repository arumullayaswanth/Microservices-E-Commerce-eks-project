provider "aws" {
  region = "ap-south-2"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "rajumercy1"

  tags = {
    Name        = "rajumercy1"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "mercyraju"

  tags = {
    Name        = "mercyraju"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
