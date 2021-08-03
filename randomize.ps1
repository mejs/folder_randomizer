#This will store the random names
$randomNames = [System.Collections.ArrayList]@()
#This reads the folders names
$nameList = ls -n -Attributes Directory
#A loop
for($x=0;$x -lt 1;$x++){
    #Generates a random number within the size of the $nameList Array
    $randomNum = Get-Random -Minimum 1 -Maximum $nameList.Count
    #Access the random entry within the array. The '-1' is because an array starts at 0.
    $randomNames.Add($nameList[$randomNum-1])
}
#Writes the names to the console
Write-Host $randomNames
ii $randomNames
