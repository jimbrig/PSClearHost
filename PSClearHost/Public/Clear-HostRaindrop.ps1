# . "$PSScriptRoot\..\Private\Common.psm1"
# . "$PSScriptRoot\..\Private\Bricks.ps1"
# . "$PSScriptRoot\..\Private\Falling.ps1"
# . "$PSScriptRoot\..\Private\Flipping.ps1"

$players = @{
    Falling  = [Falling]
    Flipping = [Flipping]
    Bricks   = [Bricks]
}

Function Clear-HostRaindrop {
    <#
    .SYNOPSIS
        Clears the host and displays a raindrop animation.
    .DESCRIPTION
        Clears the host and displays a raindrop animation.
    .PARAMETER Mode
        Type of Animation to use; If not set, the animation type will be randomly selected.
        Possible Modes are `Falling`, `Flipping`, or `Bricks`.
    .PARAMETER Speed
        The playback speed of the raindrop animation.
    .PARAMETER Framerate
        The framerate of the raindrop animation.
    .PARAMETER DebugSkipRender
        Skips rendering the animation to the host.
    .INPUTS
        None
    .OUTPUTS
        None
    .EXAMPLE
        Clear-HostRaindrop -Mode 'Flipping' -Speed 0.5

        Clears the host and displays a Flipping raindrop animation with a playback speed of 0.5x.
    .EXAMPLE
        Clear-HostRaindrop

        Clears the host and displays a raindrop animation.
    .EXAMPLE
        Clear-HostRaindrop -Speed 1.5 -Framerate 60

        Clears the host and displays a raindrop animation with a speed of 1.5 and a framerate of 60.
    .EXAMPLE
        Clear-HostRaindrop -DebugSkipRender

        Clears the host and displays a raindrop animation, but skips rendering the animation to the host.
    .LINK
        https://github.com/jimbrig/PSClearHost
    #>

    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet('Falling', 'Flipping', 'Bricks')]
        [String]$Mode = ($players.Keys | Get-Random),

        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateRange(0.1, 10)]
        [Double]$Speed = 1.0,

        [Parameter()]
        [Switch]$DebugSkipRender
    )

    Begin {
        # $dt = 1.0 / $Framerate
        $vsyncTimer = New-Object System.Diagnostics.StopWatch
        $dtTimer = New-Object System.Diagnostics.StopWatch

        $vsyncTimer.Start()
        $dtTimer.Start()
    }

    Process {

        if ($null -eq $host.UI.RawUI.WindowSize) {
            # RawUI is not available (e.g. Windows PowerShell ISE).
            Clear-Host
            throw 'RawUI is not available (e.g. Windows PowerShell ISE).'
        }

        if ($DebugSkipRender) {
            return
        }

        Play $players[$Mode] $Speed


        # $windowSize = $host.UI.RawUI.WindowSize
        # $windowPosition = $host.UI.RawUI.WindowPosition
        # $windowWidth = $windowSize.Width
        # $windowHeight = $windowSize.Height



    }

    End {
        $vsyncTimer.Stop()
        $dtTimer.Stop()

        [Console]::CursorVisible = $prevCursorVisible
    }

}

New-Alias -Name clear -Value Clear-HostRaindrop -Option AllScope -Force
New-Alias -Name cls -Value Clear-HostRaindrop -Option AllScope -Force


#     $player = $playerClass::New($windowRect, $speed)
#     $player.Init()
#
#     $vsyncTimer.Start()
#     $dtTimer.Start()
#     while (-not $player.IsDone())
#     {
#         $dtTimer.Stop()
#         $dt = $dtTimer.Elapsed.TotalSeconds
#         $dtTimer.Reset()
