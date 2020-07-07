Question 2: Terraform files to create 2 VMs in two regions with all network components added to it.

- I have configured two VMs with all the required IaaS components using terraform. Please find the respective component files attached
- Then "terraform plan –var-file var_values.tfvars" will refresh the current state and gives me the details of Azure resources that are being created, destroyed or updated 
- To push the changes i perform "terraform apply –var-file var_values.tfvars" which applies my new state into Azure to create resources
