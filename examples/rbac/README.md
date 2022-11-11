# Basic example

Terraform configuration which creates an Azure Container Registry with the following features:

- 90 days log retention
- Basic SKU
- Administrator enabled
- User assigned identity with role `AcrPull`
- Send logs to Log Analytics Workspace
