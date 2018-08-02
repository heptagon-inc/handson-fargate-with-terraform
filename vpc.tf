module "vpc" {
  source = "cloud3rsio/vpc/aws"

  name = "${var.product_id}-vpc"
}
