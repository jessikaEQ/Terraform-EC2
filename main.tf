resource "aws_s3_bucket" "bucket"{
  count = length(var.name1)
  bucket = "bucket-${var.name1[count.index]}"
}
locals {
  vampirediaries = ["enzo", "bonnie", "stefan","damon","caroline","klaus","jeremy","alaric"]
}
resource "null_resource" "vampirediaries" {
  for_each = toset(local.vampirediaries)
  triggers = {
    name = each.value
  }
}