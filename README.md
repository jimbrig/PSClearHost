<span><img src=".\Assets\img\powershell_500px.png" height="10%" width="10%" align=left /><h1>PSClearHost</h1><img src=".\Assets\logo.png" height="15%" width="15%" align=right /></span>

> A PowerShell Module that adds awesome `Clear-Host` animations for your shell/terminal!

*View the repo's [Changelog](CHANGELOG.md) for details on the progression of the codebase over time.*

## Badges

![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/PSEdgeKeywords?color=0092ff&label=PowerShell%20Gallery&logoColor=0092ff)

[![Test Module](https://github.com/jimbrig/PSClearHost/actions/workflows/test.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/test.yml)
[![Build Module](https://github.com/jimbrig/PSClearHost/actions/workflows/build.yml/badge.svg?branch=develop)](https://github.com/jimbrig/PSClearHost/actions/workflows/build.yml)
[![Publish Module](https://github.com/jimbrig/PSClearHost/actions/workflows/publish.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/publish.yml)
[![Publish Docs Site](https://github.com/jimbrig/PSClearHost/actions/workflows/mkdocs.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/mkdocs.yml)
[![Changelog](https://github.com/jimbrig/PSClearHost/actions/workflows/changelog.yml/badge.svg)](https://github.com/jimbrig/PSClearHost/actions/workflows/changelog.yml)


***

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

### Bricks Mode

![](Assets/demo/Bricks-Demo.mp4)

### Falling Mode

![](Assets/demo/Falling-Demo.mp4)

### Flipping Mode

![](Assets/demo/Flipping-Demo.mp4)
