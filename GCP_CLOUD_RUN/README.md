## Create `terraform.tfvars` for input variables like `project_id`

```terraform.tfvars
project_id =  "<your-projectid>"
region          = "<your-region>"
service_name    = "<your-service-name>"
container_image = "<your-image-url>"
```

# How to Deploy

## 1️⃣ Authenticate to GCP

Run the following command to authenticate with Google Cloud:

```sh
gcloud auth application-default login
```

## 2️⃣ Initialize Terraform

Before applying any configurations, initialize Terraform:

```sh
terraform init
```

## 3️⃣ Check Configuration Before Deployment

Verify the Terraform plan before deploying:

```sh
terraform plan
```

## 4️⃣ Deploy to GCP

Apply the configuration and deploy resources to Google Cloud:

```sh
terraform apply -auto-approve
```
