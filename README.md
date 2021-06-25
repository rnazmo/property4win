# property4win

[![Integration Test](https://github.com/rnazmo/property4win/actions/workflows/integ-test.yml/badge.svg)](https://github.com/rnazmo/property4win/actions/workflows/integ-test.yml)

PowerShell version of the 'property' for Windows.

## Run lint on local

TODO:

## Run lint on CI

TODO:

## Run integ-test on local

TODO:

## Run integ-test on CI

TODO:

## TODO

- [ ] Lint with PSScriptAnalyzer
  - ref:
    - https://github.com/PowerShell/PSScriptAnalyzer
    - [Lint PowerShell scripts with PSScriptAnalyzer 🐢 - DEV Community 👩‍💻👨‍💻](https://dev.to/ranb2002/lint-powershell-scripts-with-psscriptanalyzer-313d)
- [ ] Setup 'How to setup development environment'
  - [ ] Windows only? Windows+Ubuntu(<- can't pass integ-test)? ~~Use Docker~~?
    - Linux 上の Docker で Windows の image を動かすことはできなさそう (Windows 上の Docker なら可)
  - [ ] Setup 'How to run lint on local'
    - Install `PSScriptAnalyzer`
    - Run it
- [ ] Setup CI with GitHubAction:
  - `lint`: Run on ubuntu-latest (pwsh), windows-latest (powershell, pwsh)
  - `integ-test`: Run on windows-latest (powershell, pwsh)

TODO:

## MEMO

### Resources for PowerShell Scripting

[PowerShell Documentation - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/)

**[Collecting Information About Computers - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/samples/collecting-information-about-computers?view=powershell-7.1)**

[Redirecting Data with Out Cmdlets - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/samples/redirecting-data-with-out---cmdlets?view=powershell-7.1)

[Using Format Commands to Change Output View - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/samples/using-format-commands-to-change-output-view?view=powershell-7.1)

[Using Visual Studio Code for PowerShell Development - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/dev-cross-plat/vscode/using-vscode?view=powershell-7.1)

[Writing Portable Modules - PowerShell | Microsoft Docs](https://docs.microsoft.com/en-us/powershell/scripting/dev-cross-plat/writing-portable-modules?view=powershell-7.1)

[PowerShell Gallery | Home](https://www.powershellgallery.com/)

### Example for PowerShell Project

[PowerShell/PowerShell: PowerShell for every system!](https://github.com/PowerShell/PowerShell)
