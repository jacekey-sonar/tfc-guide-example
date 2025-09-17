resource "aws_s3_bucket" "bad_bucket" {
  bucket = "my-bucket-with-a-hardcoded-secret"
  acl    = "private"
  tags = {
    name  = "My Bad Bucket"
    secret_key = "my-hardcoded-secret" // SonarCloud will flag this
  }
}
