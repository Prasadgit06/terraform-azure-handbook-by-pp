📘 Day 01 — What is Terraform?
Terraform is an open-source Infrastructure as Code (IaC) tool by HashiCorp. It lets you define, provision, and manage cloud infrastructure using code.

Declarative: You describe what you want, Terraform figures out how to build it.

Multi-cloud: Works with Azure, AWS, GCP, Kubernetes, and more.

State management: Tracks resources in a state file.

Automation-friendly: Integrates with CI/CD pipelines.

⚙️ Installing Terraform (Windows, macOS, Linux)
01
Download Terraform
Get the latest Terraform binary from HashiCorp releases.

Visit https://developer.hashicorp.com/terraform/downloads

Choose your OS (Windows/macOS/Linux)

Select the correct architecture (amd64 or arm64)

Download the ZIP archive

02
Extract the Binary
Setup
Terraform is a single executable file inside the ZIP.

Unzip the downloaded archive

Locate terraform.exe (Windows) or terraform (Linux/macOS)

Move it to a permanent folder (e.g., C:\Terraform or /usr/local/bin)

03
Add to PATH
Ensure Terraform can be run from any terminal.

On Windows: Add C:\Terraform to System PATH via Environment Variables

On Linux/macOS: Add export PATH=$PATH:/usr/local/bin to ~/.bashrc or ~/.zshrc

Restart your terminal

04
Verify Installation
Most Common Check
Confirm Terraform is installed correctly.

Open Git Bash/PowerShell/Terminal

Run terraform -version

You should see the installed version displayed

⚙️ Installing Azure CLI
Terraform with Azure requires the Azure CLI for authentication.

Windows
Download MSI installer:
Install Azure CLI for Windows (aka.ms in Bing)

macOS
bash
brew update && brew install azure-cli
Linux (Ubuntu/Debian)
bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
Verify:

bash
az version
🔐 Authenticate to Azure
Login with your account:

bash
az login
A browser window opens → sign in with your Azure account.

For headless servers, use:

bash
az login --use-device-code
List subscriptions:

bash
az account list --output table
Set the active subscription:

bash
az account set --subscription "<subscription-id>"
