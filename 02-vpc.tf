resource "aws_vpc" "vpc" {
  for_each = var.vpcs
  # aws_vpc.vpcs["tokyo"]
  # variable "vpcs": tokyo
  cidr_block = each.value.cidr

  tags = {
    Name = "vpc-${each.key}"
  }
}
