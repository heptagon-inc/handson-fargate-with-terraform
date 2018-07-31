terraform {
  backend "s3" {
    bucket = "handson-fargate-with-terraform"
    key    = "ishizawa"
    region = "ap-northeast-1"
  }
}
