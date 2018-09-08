#Chapter 3 Labs

#1. Update Help
Update-Help
#2. Convert Cmdlets into html
#find cmdlets
Get-Command *html*
ConvertTo-Html

#3 Output to printer or file
Out-File
Out-Printer

#4 How many cmdlets work with processes?
Get-Command *process* | where CommandType -EQ cmdlet | Group-Object status

#5 Cmdlet to write to event log
New-EventLog -LogName Application -Source "30lunches" 
Write-EventLog -LogName Application -Source "30lunches" -EntryType Information -EventId 1 -Message "Test Message 30 Lunches"
Get-EventLog -LogName Application -Newest 100

#6 Cmdlet to create, modify, export, or import aliases
Get-Command *alias*
New-Alias
Get-Alias
Import-Alias
Export-Alias
Set-Alias

#7 Transcript for output of powershell
Start-Transcript -Path "c:\support\transcript.log"
Stop-Transcript
notepad "c:\support\transcript.log"
help Start-Transcript

#8 How can you get the last 100 entries of security log?
Get-EventLog -LogName Security -Newest 100

#9. Get list of Services from Remote Computer
Get-Service -ComputerName remotecomputername
Get-CimInstance -ClassName Win32_Service -ComputerName dsktp-s0l0

#10. List of Processes running on remote computer
Get-Process -ComputerName remotecomputername 
Get-Process -ComputerName dsktp-s0l0 

#11. Change default width of Out-File

help out-file -Examples
New-Item "C:\support\scripts\processes.txt"
Get-Process | Out-File -FilePath "C:\support\scripts\processes.txt" -Width 100

#12. Prevent Out-File from overwriting files
#use -noclobber to prevent overwriting files
help out-file -Examples
Get-Process | Out-File -FilePath "C:\support\scripts\processes.txt" -Width 100 -NoClobber

#13 view list of all aliases defined in Powershell
Get-Alias
#export to txt file
Get-Alias | Out-File -FilePath "C:\support\scripts\aliases.txt" -width 200

#14 using an alias and abbreviated parameter names, write the shortest command to retrieve a list of running processes from remote "server1"

Get-Process -computername server1
ps -c server1

#15 how many cmdlets deal with generic objects?

#counts all cmdlets with "object" in name
gcm *object* | where CommandType -EQ cmdlet | Group-Object status 
gcm -noun object
gcm -noun object | Group-Object status

#16. What help object tells you about arrays?
help *arrays*

########################### Chapter 4 ########################################

#1. List of running processes on own computer
Get-Process

#2. Display 100 recent application events
Get-EventLog -LogName Application -Newest 100

#3
Get-Command  | where CommandType -EQ cmdlet 
#count them
Get-Command  | where CommandType -EQ cmdlet | Group-Object status
#4 Display all aliases
Get-Alias 

#5


















































