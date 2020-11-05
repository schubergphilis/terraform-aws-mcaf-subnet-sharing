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
