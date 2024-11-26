# aws_vpc.vpc["tokyo-test"]
# resource "aws_subnet" "subnet" {
#   for_each          = var.subnets
#   vpc_id            = aws_vpc.vpc[each.value.vpc].id
#   cidr_block        = each.value.cidr
#   availability_zone = each.value.az

#   tags = {
#     Name = each.key
#   }
# }

# tokyo-a-public = {
#       vpc  = "tokyo"
#       cidr = "10.40.1.0/24"
#       az   = "ap-northeast-1a"
#     }

# resource "aws_subnet" "subnet" {
#   vpc_id            = aws_vpc.vpc["tokyo"].id
#   cidr_block        = "10.40.1.0/24"
#   availability_zone = "ap-northeast-1a"

#   tags = {
#     Name = "tokyo-a-public"
#   }
# }

