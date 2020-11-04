output "id" {
  value       = aws_ram_resource_share.subnet_sharing[0].id
  description = "The ID of the subnet share in resource access manager"
}

output "arn" {
  value       = aws_ram_resource_share.subnet_sharing[0].arn
  description = "The ARN of the subnet share in resource access manager"
}