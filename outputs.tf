output "website_url" {
  value = aws_s3_bucket.static_bucket.bucket_regional_domain_name
  description = "The website URL of the S3 bucket."
}