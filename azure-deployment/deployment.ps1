 
 #rg create
 1..9 | ForEach-Object -Parallel  {
 
 New-AzResourceGroup -Name "itsc-rg-0$_" -Location " East US"
 
 }
 
  10..17 | ForEach-Object -Parallel  {
 
 New-AzResourceGroup -Name "itsc-rg-$_" -Location " East US"
 
 }
 
 #res deploy
  1..9 | ForEach-Object -Parallel  {
 
  New-AzResourceGroupDeployment    -Name "itsc-deployment-0$_" -ResourceGroupName "itsc-rg-0$_"  -TemplateFile "C:\Users\rgass\Desktop\ITSC\template.json" -TemplateParameterFile "C:\Users\rgass\Desktop\ITSC\parameters.json"
 }
 
 
  10..17 | ForEach-Object -Parallel  {
 
New-AzResourceGroupDeployment    -Name "itsc-deployment-$_" -ResourceGroupName "itsc-rg-$_"  -TemplateFile "C:\Users\rgass\Desktop\ITSC\template.json" -TemplateParameterFile "C:\Users\rgass\Desktop\ITSC\parameters.json"
 
 }
 
 
 
