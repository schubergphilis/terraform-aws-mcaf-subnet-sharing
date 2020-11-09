resource "aws_ram_resource_share" "subnet_sharing" {
  count                     = length(var.private_subnet_arns) >= 0 || length(var.public_subnet_arns) >= 0 ? 1 : 0
  name                      = "${var.prepend_resource_type ? "resource-share-" : ""}subnets-${var.name}"
  allow_external_principals = true
  tags                      = merge({ resource-type = "ec2:Subnet" }, var.tags)
}
resource "aws_ram_resource_association" "private_subnets" {
  count              = length(var.private_subnet_arns)
  resource_arn       = var.private_subnet_arns[count.index]
  resource_share_arn = aws_ram_resource_share.subnet_sharing[0].arn
}
resource "aws_ram_resource_association" "public_subnets" {
  count              = length(var.public_subnet_arns)
  resource_arn       = var.public_subnet_arns[count.index]
  resource_share_arn = aws_ram_resource_share.subnet_sharing[0].arn
}
