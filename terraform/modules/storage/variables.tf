####################################
# Resource Group Name
####################################
variable "resource_group_name" {
  description = "Name of the resource group where the storage account will be created"
  type        = string
}

####################################
# Azure Region
####################################
variable "location" {
  description = "Azure region for the storage account"
  type        = string
}

####################################
# Tags — Owner
####################################
variable "owner" {
  description = "Owner tag for the storage account"
  type        = string
}

####################################
# Tags — Environment
####################################
variable "environment" {
  description = "Environment tag (e.g. dev, nonprod, prod)"
  type        = string
}