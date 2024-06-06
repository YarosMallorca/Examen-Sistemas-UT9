# Variables globales
$pGanadosLlubi = 0;
$pGanadosPollenca = 0
$gMarcadosLlubi = 0
$gMarcadosPollenca = 0;

# Hacemos un bucle for para los 5 partidos
for ($i = 1; $i -lt 6; $i++) {
    Write-Host "----- Partido $i -----" # Pretty-print, para que se vea bonito

    # Generamos los goles
    $golesLlubi = Get-Random -Minimum 0 -Maximum 5
    $golesPollenca = Get-Random -Minimum 0 -Maximum 5
    
    # Mostramos los goles
    Write-Host "Goles Llubí: $golesLlubi"
    Write-Host "Goles Pollença: $golesPollenca"

    # Comparamos los goles
    if ($golesLlubi -lt $golesPollenca) {
        Write-Host "Pollença ha ganado el partido"
        $pGanadosPollenca++
    }
    else {
        Write-Host "Llubí ha ganado el partido"
        $pGanadosLlubi++
    }

    # Sumamos al total
    $gMarcadosLlubi += $golesLlubi
    $gMarcadosPollenca += $golesPollenca

    Write-Host # Pretty-print; Newline
}

# Mostramos el resultado final
Write-Host "|||||- TOTAL -|||||"
Write-Host "Partidos ganados por Pollença: $pGanadosPollenca"
Write-Host "Partidos ganados por Llubí: $pGanadosLlubi"

# Comparamos los partidos ganados
# Si Pollença ha ganado más partidos que Llubí, Pollença ha ganado
if ($pGanadosLlubi -lt $pGanadosPollenca) {
    Write-Host "!! Pollença ha ganado !!"
}

# Si han ganado los mismos partidos, comparamos los goles
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

# Y si no se ha dado ninguno de los casos anteriores, Llubí ha ganado
else {
    Write-Host "!! Llubí ha ganado !!"
}