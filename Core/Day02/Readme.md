# Terraform Azure Handbook by PP 🚀

## 📘 Day 02 — Core Concepts

Day 02 builds on the basics by introducing **Terraform’s language, file structure, and providers**.

---

## 🔎 What is HCL?

- **HCL (HashiCorp Configuration Language)** is the language used to write Terraform configuration files.  
- It is **human-readable** and **machine-friendly**, designed for Infrastructure as Code.  
- HCL is **declarative**: you describe the desired state, and Terraform figures out the steps to reach it.  
- Supports:
  - **Blocks**: e.g., `resource`, `provider`, `variable`
  - **Arguments**: key-value pairs inside blocks
  - **Expressions**: references, functions, interpolations

Example:
```hcl
resource "azurerm_resource_group" "example" {
  name     = "rg-example"
  location = "eastus"
}
📄 What is a .tf File?
Terraform configuration files use the .tf extension.

Common files:

main.tf → core resources

variables.tf → input variables

outputs.tf → outputs after deployment

provider.tf → provider configuration

You can split configurations into multiple .tf files; Terraform automatically loads all .tf files in the working directory.

🌐 What is a Provider?
A provider is a plugin that lets Terraform interact with cloud platforms or services.

Examples: azurerm (Azure), aws (Amazon Web Services), google (Google Cloud).

Providers expose resources (like VMs, storage accounts, networks) that Terraform can manage.

You must configure a provider before using its resources.

Example:

hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.73.0"
    }
  }
}

provider "azurerm" {
  features {}
}
📌 Provider Versions
Providers evolve quickly; specifying a version ensures consistency across environments.

Best practice: lock provider versions in required_providers.

Version syntax:

=4.73.0 → exact version

>=4.0.0 → minimum version

~>4.73 → compatible with 4.73.x releases

Example:

hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.73"
    }
  }
}
✅ Day 02 Summary
HCL is Terraform’s declarative language.

.tf files define infrastructure in code.

Providers connect Terraform to cloud platforms.

Versioning ensures stability and reproducibility.
