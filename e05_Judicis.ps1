$dineroRobado = Read-Host "Introduce el dinero robado"
$condenasAnteriores = Read-Host "Introduce cantidad de condenas anteriores"

$dineroRobado = [float]$dineroRobado
$condenasAnteriores = [int]$condenasAnteriores

# Aquí he puesto if dentro de otro if, y eso se puede hacer, y es mucho mejor que hacer un montón de elseif

if ($dineroRobado -ge 2000) {
    if ($condenasAnteriores -gt 2) {
        Write-Host "5 años"
    } 
    elseif ($condenasAnteriores -eq 1 -or $condenasAnteriores -eq 2) {
        Write-Host "3 años"
    }
    else {
        Write-Host "1 año y 6 meses"
    }
}
elseif ($dineroRobado -ge 1000 -and $dineroRobado -lt 2000) {
    if ($condenasAnteriores -gt 2) {
        Write-Host "3 años"
    } 
    elseif ($condenasAnteriores -eq 1 -or $condenasAnteriores -eq 2) {
        Write-Host "2 años"
    }
    else {
        Write-Host "1 año"
    }
}
elseif ($dineroRobado -ge 500 -and $dineroRobado -lt 1000) {
    if ($condenasAnteriores -ge 1) {
        Write-Host "1 año y 5 meses"
    } 
    else {
        Write-Host "7 meses"
    }
}
else {
    Write-Host "5 meses"
}