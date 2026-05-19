#!/bin/bash
# Provision Azure Storage backend for Terraform state

RG_NAME="rg-terraform-backend"
LOCATION="eastus"
STORAGE_NAME="saterraformbackend001"
CONTAINER_NAME="tfstate"

# 1. Create resource group
az group create --name $RG_NAME --location $LOCATION

# 2. Create storage account (secure defaults)
az storage account create \
  --name $STORAGE_NAME \
  --resource-group $RG_NAME \
  --location $LOCATION \
  --sku Standard_GRS \
  --kind StorageV2 \
  --https-only true \
  --min-tls-version TLS1_2 \
  --allow-blob-public-access false

# 3. Create private container
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STORAGE_NAME \
  --auth-mode login \
  --public-access off

# 4. Enable blob versioning & soft delete
az storage account blob-service-properties update \
  --account-name $STORAGE_NAME \
  --resource-group $RG_NAME \
  --enable-versioning true \
  --enable-delete-retention true \
  --delete-retention-days 30

echo "✅ Azure Storage backend provisioned successfully!"
