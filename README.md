# terraform-aws-mcaf-subnet-sharing

This module creates a resource access manager share of private and public subnets if set.

Attaching the private or the public subnets is optional.

```terraform
module "subnet_sharing" {
  source                = "github.com/schubergphilis/terraform-aws-mcaf-subnet-sharing"
  name                  = "NAME"
  private_subnet_arns   = ["arn1", "arn2"]
  public_subnet_arns    = ["arn1", "arn2"]
  prepend_resource_type = true
  tags                  = { some : "tag" }
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements
Error: Invalid expression: Expected the start of an expression, but found an invalid expression token.

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Used as part of the resource names to indicate they are created and used within a specific name | `string` | n/a | yes |
| prepend\_resource\_type | If set it will prepend the resource type on the resource created | `bool` | `false` | no |
| private\_subnet\_arns | A list of private subnet arns to share | `list(string)` | `[]` | no |
| public\_subnet\_arns | A list of public subnet arns to share | `list(string)` | `[]` | no |
| tags | Tags to be set to a resource share for subnets | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the subnet share in resource access manager |
| id | The ID of the subnet share in resource access manager |

<!--- END_TF_DOCS --->
