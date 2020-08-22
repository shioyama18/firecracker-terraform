variable "aws_region" {
  type        = string
  description = "AWS region for the stack. Value should be a valid AWS region, eg: ap-northeast-1"
}

variable "prefix" {
  type        = string
  description = "Prefix for resource name."
}
