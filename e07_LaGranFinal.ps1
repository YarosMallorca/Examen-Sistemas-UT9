$pGanadosLlubi = 0;
$pGanadosPollenca = 0
$gMarcadosLlubi = 0
$gMarcadosPollenca = 0;

for ($i = 1; $i -lt 6; $i++) {
    Write-Host "----- Partido $i -----"
    $golesLlubi = Get-Random -Minimum 0 -Maximum 5
    $golesPollenca = Get-Random -Minimum 0 -Maximum 5

    Write-Host "Goles Llubí: $golesLlubi"
    Write-Host "Goles Pollença: $golesPollenca"
    if ($golesLlubi -lt $golesPollenca) {
        Write-Host "Pollença ha ganado el partido"
        $pGanadosPollenca++
    }
    else {
        Write-Host "Llubí ha ganado el partido"
        $pGanadosLlubi++
    }

    # Sumar al total
    $gMarcadosLlubi += $golesLlubi
    $gMarcadosPollenca += $golesPollenca

    Write-Host # Newline
}

Write-Host "|||||- TOTAL -|||||"
Write-Host "Partidos ganados por Pollença: $pGanadosPollenca"
Write-Host "Partidos ganados por Llubí: $pGanadosLlubi"
if ($pGanadosLlubi -lt $pGanadosPollenca) {
    Write-Host "!! Pollença ha ganado !!"
}
elseif ($pGanadosLlubi -eq $pGanadosPollenca) {
    Write-Host "Puntos Marcados por Pollença: $pMarcadosPollenca"
    Write-Host "Puntos Marcados por Llubí: $pMarcadosLlubi"
    if ($gMarcadosPollenca -lt $gMarcadosLlubi) {
        Write-Host "!! Llubí ha ganado !!"
    }
    elseif ($gMarcadosLlubi -eq $gMarcadosPollenca) {
        Write-Host "!! Empatado !!"
    }
    else {
        Write-Host "!! Pollença ha ganado !!"
    }
}
else {
    Write-Host "!! Llubí ha ganado !!"
}