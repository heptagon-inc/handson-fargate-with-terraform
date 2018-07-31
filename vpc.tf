module "vpc" {
  source = "cloud3rsio/vpc/aws"
  name   = "${format("%s-%s", var.product_id, terraform.workspace)}"
}
