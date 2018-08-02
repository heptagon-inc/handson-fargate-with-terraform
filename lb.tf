/*
module "lb-tg" {
  source = "cloud3rsio/elb-targetgroup/aws"

  name        = "${var.product_id}-lb-tg"
  vpc_id      = "${module.vpc.vpc_id}"
  target_type = "ip"
}

module "lb" {
  source = "cloud3rsio/elb/aws"

  name             = "${var.product_id}-lb"
  vpc_id           = "${module.vpc.vpc_id}"
  subnets          = "${module.vpc.public_subnets}"
  target_group_arn = "${module.lb-tg.arn}"

  //enabled_https   = true
  //acm_domain_name = "example.cloud3rs.io"
}

output "lb_dns" {
  value = "${module.lb.elb_dns_name}"
}
*/

