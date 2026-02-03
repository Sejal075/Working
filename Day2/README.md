## Infrastructure Provisioning using Terraform

### Step 1: Create EC2 Manually
- Launch an EC2 instance manually from the AWS Console.
- Attach an IAM role with required permissions (EC2, VPC).
- This EC2 is used as the Terraform execution host.

### Step 2: Provision Infrastructure using Terraform
- Write Terraform configuration to create:
  - VPC (public)
  - Subnet
  - Internet Gateway
  - Route Table
  - Security Group
  - EC2 instance

### Step 3: Run Terraform Commands
terraform init
terraform validate
terraform plan
terraform apply

### Step 4: Verify Resources

- Verify EC2 instance, VPC, subnet, route table, and security group in AWS Console.
- Check EC2 public IP and connectivity

