## CoE - Journey to cloud

### [Building AZURE services with terraform]()

### Pre-requisite definitions
1. Have a Resource group with privilege Owner.

### Init terraform
terraform init

### Plan terraform by environmente
terraform plan -var-file environment-vars/dev.tfvars

### Apply terraform by environment
terraform apply -var-file environment-vars/dev.tfvars -auto-approve

### Destroy terraform by environment
terraform destroy -var-file environment-vars/dev.tfvars -auto-approve

### Terraform Graph
terraform plan -var-file environment-vars/dev.tfvars -out=plan.out

terraform show -json plan.out > plan.json

https://hieven.github.io/terraform-visual/plan-details

### Terraform GraphViz
terraform graph -type=plan > graph.svg

### Terraform-docs
terraform-docs markdown . > specs.md

### Kubernetes Cree sin asignación de roles.
az ad sp create-for-rbac

{
  "appId": "6fa04f34-4904-4620-8325-edc8d512380c",
  "displayName": "azure-cli-2023-02-24-07-12-32",
  "password": "kTQ8Q~ZN954q4WNLjy9hRLz~2nhIpCFrISoAIdx7",
  "tenant": "d1c719f7-cc48-4f9f-83ec-f706a2a940fe"
}