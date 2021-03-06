@{

# Script module or binary module file associated with this manifest.
RootModule = 'Posh-IBWAPI.psm1'

# Version number of this module.
ModuleVersion = '1.5.0'

# Supported PSEditions (WARNING: BREAKS COMPATIBILITY with pre-5.1 Powershell)
# CompatiblePSEditions = 'Desktop','Core'

# ID used to uniquely identify this module
GUID = '1483924a-a8bd-446f-ba0a-25443bcec77e'

# Author of this module
Author = 'Ryan Bolger'

# Company or vendor of this module
#CompanyName = ''

# Copyright statement for this module
Copyright = '(c) 2017-2018 Ryan Bolger. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Infoblox WAPI (REST API) related commands.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Posh-IBWAPI.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Get-IBObject',
    'Get-IBSchema',
    'Get-IBWAPIConfig',
    'Invoke-IBFunction',
    'Invoke-IBWAPI',
    'New-IBObject',
    'New-IBWAPISession',
    'Remove-IBObject',
    'Set-IBObject',
    'Set-IBWAPIConfig',
    'Save-IBWAPIConfig',
    'Remove-IBWAPIConfig'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Infoblox','IPAM','WAPI','REST','PSEdition_Desktop','PSEdition_Core','Linux','Mac'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/rmbolger/Posh-IBWAPI/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/rmbolger/Posh-IBWAPI'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = @'
## 1.5.0 (2018-09-28)

* Added ByType as default parameter set for `Get-IBObject` which means you can query types like this `Get-IBObject grid` instead of needing the explicit `-ObjectType` parameter name.
* Get/Set/New/Remove-IBObject and Invoke-IBFunction were failing to properly process direct `-ObjectRef` input arrays. The parameter has been changed to a single string and if you want them to process multiple, you must use pipeline input now.
* Fixed bug failing to load saved config on some versions of PowerShell
* Fixed HTTP 400/BadRequest error handling when running on PowerShell Core
* Minor code refactoring to align with PSScriptAnalyzer suggestions
'@

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
