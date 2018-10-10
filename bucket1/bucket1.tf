variable "bucketname" {}

module "bucket1" {
  source      = "../buckets"
  name        = "${var.bucketname}"
}
