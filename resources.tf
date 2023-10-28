# Create new IAM user

# resource "aws_iam_user" "s3" {
#     name = "s3_iam_user"
# }

# resource "aws_iam_policy" "s3_iam_policy" {
#     name = "s3_policy"

#     policy = jsonencode({
#         Statement = [
#             {
#                 Action = [
#                     ""
#                 ]
#             }
#         ]
#     })
# }

resource "aws_s3_bucket" "isaack_s3_bucket1" {
  bucket = "adventuretech-in-bucket"
}

resource "aws_s3_bucket_ownership_controls" "isaack_s3_bucket1_ownership_control" {
  bucket = aws_s3_bucket.isaack_s3_bucket1.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "isaack_s3_bucket1_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.isaack_s3_bucket1_ownership_control]

  bucket = aws_s3_bucket.isaack_s3_bucket1.bucket
  acl    = "private"
}



resource "aws_s3_bucket" "isaack_s3_bucket2" {
  bucket = "natureescape-in-bucket"
}

resource "aws_s3_bucket_ownership_controls" "isaack_s3_bucket2_ownership_control" {
  bucket = aws_s3_bucket.isaack_s3_bucket2.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "isaack_s3_bucket2_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.isaack_s3_bucket2_ownership_control]

  bucket = aws_s3_bucket.isaack_s3_bucket2.bucket
  acl    = "private"
}

resource "aws_s3_bucket" "isaack_s3_bucket3" {
  bucket = "datasummit-in-bucket"
}

resource "aws_s3_bucket_ownership_controls" "isaack_s3_bucket3_ownership_control" {
  bucket = aws_s3_bucket.isaack_s3_bucket3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "isaack_s3_bucket3_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.isaack_s3_bucket3_ownership_control]

  bucket = aws_s3_bucket.isaack_s3_bucket3.bucket
  acl    = "private"
}

resource "aws_s3_bucket" "isaack_s3_bucket4" {
  bucket = "codecarnival-in-bucket"
}

resource "aws_s3_bucket_ownership_controls" "isaack_s3_bucket4_ownership_control" {
  bucket = aws_s3_bucket.isaack_s3_bucket4.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "isaack_s3_bucket4_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.isaack_s3_bucket4_ownership_control]

  bucket = aws_s3_bucket.isaack_s3_bucket4.bucket
  acl    = "private"
}

resource "aws_s3_bucket" "remote_backend" {
  bucket = "project-remote-backend-in-bucket"
}

