resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name
    tags = {
        Name = var.bucket_name
    }
}

resource "aws_s3_bucket" "my_state_bucket" {
    bucket = var.state_bucket_name
    tags = {
        Name = var.state_bucket_name
    }
}