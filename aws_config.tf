######
# Connecting with AWS
#


#####
# Provider
#
provider "aws" {
  region     = "us-east-1"
}


######
# Backend
# This can't have interpolations which kinda sucks
terraform {
  backend "s3" {
    bucket = "mysoft-test-us-east-1"
    key    = "runtime/${bucketname}/terraform.tfstate"
    region = "us-east-1"
	encrypt = true
    kms_key_id    = "arn:aws:kms:us-east-1:661856373316:key/625b2a7c-ffc1-4a92-84bc-eace2f49b8f0"
  }
}
