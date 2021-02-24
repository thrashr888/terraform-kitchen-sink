resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_website_bucket
  acl    = "public-read"
  policy = file("policy.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

module "dir" {
  source  = "hashicorp/dir/template"
  version = "1.0.2"

  base_dir = "${path.module}/src"
  template_vars = {
    # Pass in any values that you wish to use in your templates.
    website_title = "My Cool 😎 Website"
  }
}

resource "aws_s3_bucket_object" "static_files" {
  for_each = module.dir.files

  bucket       = var.s3_website_bucket
  key          = each.key
  content_type = each.value.content_type

  # The template_files module guarantees that only one of these two attributes
  # will be set for each file, depending on whether it is an in-memory template
  # rendering result or a static file on disk.
  source  = each.value.source_path
  content = each.value.content

  # Unless the bucket has encryption enabled, the ETag of each object is an
  # MD5 hash of that object.
  etag = each.value.digests.md5
}