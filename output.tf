output "bucket"{
    value = aws_s3_bucket.bucket[*].id
}
output "vampirediaries" {
  value = null_resource.vampirediaries
}