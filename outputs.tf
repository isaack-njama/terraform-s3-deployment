output "isaack_s3_buckets" {
  value = [aws_s3_bucket.isaack_s3_bucket1.bucket, aws_s3_bucket.isaack_s3_bucket2.bucket, aws_s3_bucket.isaack_s3_bucket3.bucket, aws_s3_bucket.isaack_s3_bucket4.bucket]
}