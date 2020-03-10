# Identify the Caller account details
data "aws_caller_identity" "current" {}

# Identify if running for a Parent account as per input.tfvars
locals {
  account_id  = data.aws_caller_identity.current.account_id
}

output "account_id" {
  value = local.account_id
}
