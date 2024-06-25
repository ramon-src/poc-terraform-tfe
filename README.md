# poc-terraform-tfe

## Stack

- Doppler
- Terraform

## Docs

- https://github.com/ALT-F4-LLC/terraform-tfe-project
- https://github.com/ALT-F4-LLC/terraform-tfe-workspace

```
    terraform init
```

```
    terraform validate
```

```
doppler run -- terraform init
```

Use Doppler to get Terraform Tokens and then Generate terraform plan

```
doppler run -- terraform plan -out "terraform.tfplan"
```

Apply the plan

```
doppler run -- terraform apply "terraform.tfplan"
```
