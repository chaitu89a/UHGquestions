# UHGquestions
1. Create an `n` number of resource groups with the their names formatted as “my- test-candidate-<location>” where <location> comes from a variable called `locations` which is a list of strings (e.g. ["eastus", "westus"]).
  
  - The ARM template "RGTemplate.json" is to create number of resource groups in azure based on the count of locations provided in the array of "location" parameter.
  - i have used AZ CLI to deploy this JSON template.
  - Output attached in question1-output file.
