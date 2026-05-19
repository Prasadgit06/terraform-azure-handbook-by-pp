# Terraform Azure Handbook by PP 🚀

## 📘 Day 03 — Terraform Commands & Demo

Day 03 introduces the **core Terraform commands** you’ll use daily, along with a simple demo to practice them.

---

## ⚙️ Terraform Commands in Detail

### 1. Initialize
```bash
terraform init
Downloads provider plugins.

Configures backend (if defined).

Must be run after creating or modifying .tf files.

2. Validate
bash
terraform validate
Checks syntax and configuration correctness.

Ensures .tf files are valid HCL.

3. Plan
bash
terraform plan
Shows what Terraform will do (create, update, destroy).

Does not change anything — it’s a preview.

Best practice: always run plan before apply.

4. Apply
bash
terraform apply
Executes the plan and provisions resources.

Prompts for confirmation unless -auto-approve is used.

5. Show
bash
terraform show
Displays the current state in human-readable format.

6. State
bash
terraform state list
terraform state show <resource>
Inspect resources tracked in the state file.

Useful for debugging mismatches between code and deployed infra.

7. Destroy
bash
terraform destroy
Removes all resources defined in .tf files.

Use with caution in production.

8. Refresh
bash
terraform refresh
Updates state file with real-world resource status.

Ensures Terraform knows the latest infra state.

🚀 Demo — Resource Group Creation
Example configuration (main.tf):

hcl
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo_rg" {
  name     = "rg-day03-demo"
  location = "eastus"
}
Run the commands step by step:

bash
terraform init
terraform validate
terraform plan
terraform apply
terraform show
terraform state list
terraform destroy
✅ Day 03 Summary
Learned core Terraform commands (init, validate, plan, apply, show, state, destroy, refresh).

Practiced with a demo resource group.

These commands form the daily workflow for Terraform users.
