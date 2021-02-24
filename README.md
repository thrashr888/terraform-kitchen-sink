# terraform-kitchen-sink
A single Terraform config to cover most cases of address and output types.

## Required inputs

- variable `s3_website_bucket`
- ENV `GITHUB_TOKEN`
- ENV `AWS_ACCESS_KEY_ID`
- ENV `AWS_SECRET_ACCESS_KEY`

### Goals

1. ~free~ cheap to apply
2. no variables required
3. some slow resources, some fast
4. all output types
5. local and registry modules
6. 2+ providers
7. changes every apply
8. for_each and count
9. data sources
10. local-exec and/or provisioner
11. cost estimable
