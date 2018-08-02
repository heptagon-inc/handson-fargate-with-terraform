/*
data "aws_iam_policy_document" "ecs_execution_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "ecs_execution_role_policy" {
  statement {
    actions = [
      "ecr:GetAuthorizationToken",
      "ecr:BatchCheckLayerAvailability",
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "ecs_execution_role_policy" {
  policy = "${data.aws_iam_policy_document.ecs_execution_role_policy.json}"
}

resource "aws_iam_role" "ecs_execution_role" {
  assume_role_policy = "${data.aws_iam_policy_document.ecs_execution_role.json}"
}

resource "aws_iam_role_policy_attachment" "ecs_execution_role" {
  role       = "${aws_iam_role.ecs_execution_role.name}"
  policy_arn = "${aws_iam_policy.ecs_execution_role_policy.arn}"
}
*/

