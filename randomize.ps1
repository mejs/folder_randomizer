#This reads the current directory and puts it into list.txt file
ls -n -Attributes Directory >> list.txt
#This will store the random names
$randomNames = [System.Collections.ArrayList]@()
#The file with the names
$file = "list.txt"
#The file is imported into an array
$nameList = Get-Content $file
#A loop set to run twice.
for($x=0;$x -lt 1;$x++){
    #Generates a random number within the size of the $nameList Array
    $randomNum = Get-Random -Minimum 1 -Maximum $nameList.Count
    #Access the random entry within the array. The '-1' is because an array starts at 0.
    $randomNames.Add($nameList[$randomNum-1])
}
#Writes the names to the console
Write-Host $randomNames
#This opens the folder in explorer
ii $randomNames
#This deletes the temp text file
rm list.txt
