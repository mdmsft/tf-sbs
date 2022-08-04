# Step 1: variables
## Initialize and validate configuration
```sh
terraform init
terraform validate
```
### Create a plan using CLI input
```sh
terraform plan -out var-cli.tfplan
```
### Create a plan using var file
```sh
terraform plan -out var-file.tfplan -var-file main.tfvars
```
### Create a plan using var file and environment variables
```sh
$env:TF_VAR_password="S3cReT!"
terraform plan -out var-file-env-vars.tfplan -var-file main.tfvars
```
