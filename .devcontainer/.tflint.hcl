// Tflint configuration
// https://github.com/terraform-linters/tflint
plugin "terraform" {
  enabled = true
  preset  = "recommended" // More information about the recommended rules can be found here https://github.com/terraform-linters/tflint-ruleset-terraform/blob/v0.2.0/docs/rules/README.md
}

rule "terraform_naming_convention" {
  enabled = true
}

rule "terraform_standard_module_structure" {
  enabled = true
}

# Temporarily disable the unused variable warnings
rule "terraform_unused_declarations" {
  enabled = false
}

plugin "azurerm" {
    enabled = true
    version = "0.26.0"
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}
