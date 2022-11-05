---
external help file: PSClearHost-help.xml
Module Name: PSClearHost
online version: https://github.com/jimbrig/PSClearHost
schema: 2.0.0
---

# Clear-HostRaindrop

## SYNOPSIS
Clears the host and displays a raindrop animation.

## SYNTAX

```
Clear-HostRaindrop [[-Mode] <String>] [[-Speed] <Double>] [-DebugSkipRender] [<CommonParameters>]
```

## DESCRIPTION
Clears the host and displays a raindrop animation.

## EXAMPLES

### EXAMPLE 1
```
Clear-HostRaindrop -Mode 'Flipping' -Speed 0.5
```

Clears the host and displays a Flipping raindrop animation with a playback speed of 0.5x.

### EXAMPLE 2
```
Clear-HostRaindrop
```

Clears the host and displays a raindrop animation.

### EXAMPLE 3
```
Clear-HostRaindrop -Speed 1.5 -Framerate 60
```

Clears the host and displays a raindrop animation with a speed of 1.5 and a framerate of 60.

### EXAMPLE 4
```
Clear-HostRaindrop -DebugSkipRender
```

Clears the host and displays a raindrop animation, but skips rendering the animation to the host.

## PARAMETERS

### -Mode
Type of Animation to use; If not set, the animation type will be randomly selected.
Possible Modes are \`Falling\`, \`Flipping\`, or \`Bricks\`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: ($players.Keys | Get-Random)
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Speed
The playback speed of the raindrop animation.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 1
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DebugSkipRender
Skips rendering the animation to the host.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### None
## NOTES

## RELATED LINKS

[https://github.com/jimbrig/PSClearHost](https://github.com/jimbrig/PSClearHost)

