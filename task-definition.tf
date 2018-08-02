/*
resource "aws_ecs_task_definition" "main" {
  family                   = "${var.product_id}"
  container_definitions    = "${file("task-definitions/service.json")}"
  execution_role_arn       = "${aws_iam_role.ecs_execution_role.arn}"
  network_mode             = "awsvpc"
  cpu                      = 256
  memory                   = 512
  requires_compatibilities = ["FARGATE"]
}
*/

