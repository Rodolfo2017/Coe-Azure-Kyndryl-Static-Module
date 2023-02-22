## CoE - Journey to cloud

### [Building AZURE services with terraform]()

### Prerequisite definitions
1. Configure the domain in Route 53 and add the NS generated in the domain provider.
2. Add the ZoneId generated from route53 to the variable hosted_zone_id.

### Init terraform
terraform init

### Plan terraform by environmente
terraform plan -var-file environment-vars/dev.tfvars -auto-approve

### Apply terraform by environment
terraform apply -var-file environment-vars/dev.tfvars -auto-approve

### Destroy terraform by environment
terraform destroy -var-file environment-vars/dev.tfvars -auto-approve

### Terraform Graph
terraform plan -var-file environment-vars/dev.tfvars -out=plan.out

terraform show -json plan.out > plan.json

https://hieven.github.io/terraform-visual/plan-details

### Terraform GraphViz
terraform graph -type=plan | dot -Tsvg > graph.svg

### Terraform-docs
terraform-docs markdown . > specs.md
