$dia = Read-Host "Introduce el día"
$dia = [int]$dia

if ($dia -eq 24) {
    # Realizar espectáculo
    $llueveNum = Get-Random -Minimum 0 -Maximum 2
    if ($llueveNum -eq 0) {
        # No llueve, se podría realizar el espectáculo si hay menos de 150 personas
        $numPersonas = Get-Random -Minimum 0 -Maximum 201
        if ($numPersonas -gt 150) {
            # Hay demasiadas personas, no se puede realizar el espectáculo
            Write-Host "Hay demasiadas personas, no se realizará el espectáculo"
        }
        else {
            # Habían menos de 150 personas, se realiza el espectáculo
            Write-Host "Se ha realizado el espectáculo"
        }
    }
    else {
        Write-Host "Llueve, no se puede realizar el espectáculo"
    }
}

else {
    # No es el 24. No se puede hacer el espectáculo
    Write-Host "No es el 24, no se puede realizar el espectáculo"
}