######
# Connecting with AWS
#


#####
# Provider
#
provider "aws" {
  access_key = "AKIAIUBQGDAIZRDJZOFQ"
  secret_key = "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"
  region     = "us-east-1"
}


######
# Backend
# This can't have interpolations which kinda sucks
terraform {
  backend "s3" {
    bucket = "mysoft-test-us-east-1"
    region = "us-east-1"
	encrypt = true
    kms_key_id    = "arn:aws:kms:us-east-1:661856373316:key/807d6be7-fc22-444b-90d4-50ca73588f9a"
  }
}
