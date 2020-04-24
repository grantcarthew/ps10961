# PowerShell Course 2020-04-20

Back to Module 2 Slide 20 After foreach.

## References

* Get your public ip address: `irm ipinfo.io/ip`
* [Custom date and time format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-date-and-time-format-strings?view=netframework-4.8)
* [Strongly Encouraged Development Guidelines](https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/strongly-encouraged-development-guidelines?view=powershell-7)
* [Australian Signals Directorate: Securing PowerShell in the Enterprise](https://www.cyber.gov.au/publications/securing-powershell-in-the-enterprise)
* [Hands-on: Use PowerShell to Create Scheduled Tasks](https://devblogs.microsoft.com/scripting/use-powershell-to-create-scheduled-tasks/)

## PowerShell Commands and Snippets

* Get-Help (man)
* Get-Command (gcm)
* Group-Object (group)
* Join-Path 
* Test-Path
* Split-Path
* Get-Alias (gal -Definition Get-Alias)
* Select-Object (select) (-ExpandProperty)
* Where-Object (where or ?)
* Compare-Object
* Invoke-WebRequest (iwr)
* Invoke-RestMethod (irm)
* Get-NetRoute
* Get-NetIPAddress
* Get-ComputerInfo
* (<#some object or value#>).GetType()
* Start/Stop-Transcript
* PSSessions


[Array List Class](https://docs.microsoft.com/en-us/dotnet/api/system.collections.arraylist)

```powershell
$computers = New-Object System.Collections.ArrayList
[System.Collections.ArrayList]$computers = “LON-DC1”,”LON-SRV1”
```

PSCustomObject

```powershell
[PSCustomObject]@{ "Key" = "Value"; "Key2" = "Value2" }
```

## PowerShell Thought Process

1. Is PowerShell the right tool for the job?
1. Use a single CmdLet.
1. Use multiple CmdLets.
1. Search the Internet for an existing solution.
1. Try to use Common Information Model (CIM).
1. Use the .NET Framework or See step 1.

## Utilities and Extra Topics

* [scoop](https://scoop.sh/)
* [Windows Terminal](https://github.com/microsoft/terminal)
* [VS Code](https://code.visualstudio.com/)
  * [Extensions](https://marketplace.visualstudio.com/vscode):
    * vscode-icons
    * Todo Tree
    * Vim
    * PowerShell
    * Markdown All in One
* [Git](https://git-scm.com/) and [GitHub](https://github.com/)
* Markdown
* CTRL + SHIFT + J = Snippet Insert in VSCode.
* CTRL + J = Snippet Insert in ISE.
* [CredentialManager](https://www.powershellgallery.com/packages/CredentialManager/2.0)
  * [CredentialManager on GitHub](https://github.com/davotronic5000/PowerShell_Credential_Manager)
* [PowerShell: About Regular Expressions](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_regular_expressions?view=powershell-7)
* [Regular Expression Language - Quick Reference](https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expression-language-quick-reference)
* [TypingClub](https://www.typingclub.com/)
* [Pester](https://github.com/Pester/Pester)

# TODO

* Git
* GitHub
* Add to ps-tools repo
* Pester
* Vim

das keyboard
lg G810
ducky

blue = noise

