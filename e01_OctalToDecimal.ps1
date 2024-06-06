$octal = Read-Host "Escribe un número en octal"
$resultado = [Convert]::ToInt32($octal, 8) # Convertir el número octal a un entero
Write-Host  "El resultado en decimal es: $resultado"