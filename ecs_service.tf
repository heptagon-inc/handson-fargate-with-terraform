/*
resource "aws_ecs_service" "nginx" {
  name                               = "${var.product_id}-nginx"
  cluster                            = "${aws_ecs_cluster.main.id}"
  task_definition                    = "${aws_ecs_task_definition.main.arn}"
  desired_count                      = 2
  launch_type                        = "FARGATE"
  deployment_maximum_percent         = 300
  deployment_minimum_healthy_percent = 100

  network_configuration {
    subnets          = ["${module.vpc.public_subnets}"]
    security_groups  = ["${aws_security_group.nginx.id}"]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = "${module.lb-tg.arn}"
    container_name   = "nginx"
    container_port   = 80
  }

  lifecycle {
    ignore_changes = ["desired_count"]
  }
}

resource "aws_security_group" "nginx" {
  name   = "${var.product_id}-nginx"
  vpc_id = "${module.vpc.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/

