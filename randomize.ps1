#This script reads the directories in the location it's placed in and then opens that directory in Windows Explorer.

#This will store the random names
$randomNames = [System.Collections.ArrayList]@()
#This reads the folders names
$nameList = ls -n -Attributes Directory
#Generates a random number within the size of the $nameList Array
$randomNum = Get-Random -Minimum 1 -Maximum $nameList.Count
#Access the random entry within the array. The '-1' is because an array starts at 0.
$randomNames.Add($nameList[$randomNum-1])
#Writes the names to the console
Write-Host $randomNames
ii $randomNames
