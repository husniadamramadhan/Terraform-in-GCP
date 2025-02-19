## Create `terraform.tfvars` for input variables like `project_id`

```terraform.tfvars
project_id =  "<your-projectid>"
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

## 5️⃣ Check VM Public IP Output

After deployment, retrieve the public IP address of the VM:

```sh
terraform output vm_external_ip
```

Access Nginx in your browser using `http://[Public_IP]`. 🚀
