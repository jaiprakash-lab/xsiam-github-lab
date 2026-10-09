# DEMO ONLY — do not deploy.
resource "aws_s3_bucket" "demo" {
  bucket = "cortex-appsec-demo-placeholder"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  bucket = aws_s3_bucket.demo.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
