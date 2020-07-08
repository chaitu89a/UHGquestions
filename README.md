# UHGquestions
1. Create an `n` number of resource groups with the their names formatted as “my- test-candidate-<location>” where <location> comes from a variable called `locations` which is a list of strings (e.g. ["eastus", "westus"]).
  
  - The ARM template "RGTemplate.json" is to create number of resource groups in azure based on the count of locations provided in the array of "location" parameter.
  - I have used AZ CLI to deploy this JSON template.
  - Output attached in question1-output file.
  - The same can be implemented using Azure powershell cmdlets to deploy template and also use terraform with same copyindex approach to create multiple resource groups.
  
2. Migration approach details has been added to "Question -2 : Approach" file.
  - VM terraform files are added to "VM Terraform files" folder
