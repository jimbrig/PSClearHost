<span><img src=".\Assets\img\powershell_500px.png" height="10%" width="10%" align=left /><h1>PSClearHost</h1><img src=".\Assets\logo.png" height="15%" width="15%" align=right /></span>

***

> A PowerShell Module that adds awesome `Clear-Host` animations for your shell/terminal!

## Links

- [Documentation Site]()
- [Source Code](https://github.com/jimbrig.com/PSClearHost)
- [Latest Release - v1.0.0](https://github.com/jimbrig/PSClearHost/releases/tag/v1.0.0)
- [Published PowerShell Gallery Module](https://www.powershellgallery.com/packages/PSClearHost/1.0.0)

*View the repo's [Changelog](CHANGELOG.md) for details on the progression of the codebase over time.*

## Badges

[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/PSClearHost?color=0092ff&label=PowerShell%20Gallery&logoColor=0092ff)](https://www.powershellgallery.com/packages/PSClearHost/1.0.0)

[![Test Module](https://github.com/jimbrig/PSClearHost/actions/workflows/test.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/test.yml)
[![Build Module](https://github.com/jimbrig/PSClearHost/actions/workflows/build.yml/badge.svg?branch=develop)](https://github.com/jimbrig/PSClearHost/actions/workflows/build.yml)
[![Publish Module](https://github.com/jimbrig/PSClearHost/actions/workflows/publish.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/publish.yml)
[![Publish Docs Site](https://github.com/jimbrig/PSClearHost/actions/workflows/mkdocs.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/mkdocs.yml)
[![Changelog](https://github.com/jimbrig/PSClearHost/actions/workflows/changelog.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/changelog.yml)

## Installation

```powershell
Install-Module PSClearHost -Scope CurrentUser
```

## Usage

```powershell
# Clear host using the "Bricks" mode
Clear-HostRaindrop -Mode Bricks -Speed 5.0

# Clear host using the "Falling" mode
Clear-HostRaindrop -Mode Falling -Speed 2.0

# Clear host using the "Flipping" mode
Clear-HostRaindrop -Mode Flipping -Speed 2.0
```

## Demos

Click on a demonstration video below to see the module in action!

### Bricks Mode

https://user-images.githubusercontent.com/32652297/200099398-29dd1d6c-3ffa-4ec6-9833-7bbfbcdf2fc7.mp4

### Falling Mode

https://user-images.githubusercontent.com/32652297/200099413-5400a1f9-c88d-4e60-b8ef-c07013f73c98.mp4

### Flipping Mode

https://user-images.githubusercontent.com/32652297/200099418-22c6cc4c-ca8d-4dcf-8328-d451b450456a.mp4
