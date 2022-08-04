# Step 2: AzureRM
## Initialize and validate configuration
```sh
terraform init
terraform validate
```
## Create Azure variables file (azure.tfvars)
```
tenant_id       = "2d7cd011db47-..."
subscription_id = "3c98bb3f5e46-..."
```
### Create a plan
```sh
terraform plan -out main.tfplan -var-file azure.tfvars
```
### Apply a plan
```sh
terraform apply main.tfplan
```
### Modify a project variable and create a plan
```sh
$env:TF_VAR_project="fabrikam"
terraform plan -out main.tfplan -var-file azure.tfvars
```
### Create `ignore_changes` property in lifecycle block, add new tag and create a plan
```tf
lifecycle {
    ignore_changes = [
        tags
    ]
}
tags = {
    foo = "bar"
}
```
```sh
terraform plan -out main.tfplan -var-file azure.tfvars
```
### Create `prevent_destroy` property in lifecycle block, modify `project` variable and create a plan
```tf
lifecycle {
    prevent_destroy = true
}
```
```sh
$env:TF_VAR_project="fabrikam"
terraform plan -out main.tfplan -var-file azure.tfvars
```
### Create `create_before_destroy` property in lifecycle block, modify `project` variable and create a plan
```tf
lifecycle {
    create_before_destroy = true
}
```
```sh
$env:TF_VAR_project="fabrikam"
terraform plan -out main.tfplan -var-file azure.tfvars
```