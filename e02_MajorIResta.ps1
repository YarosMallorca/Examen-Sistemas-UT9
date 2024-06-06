$num1 = Read-Host "Introduce el primer numero"
$num2 = Read-Host "Introduce el segundo numero"

# Convertimos los dos a un integer
$num1 = [int]$num1
$num2 = [int]$num2

# Comparamos cual de ellos es mayor usando un operador ternario
$resultado = if ($num1 -lt $num2) { $num2 - $num1 } else { $num1 - $num2 };

# Si este one-liner parece raro, podríamos haberlo escrito de la siguiente manera:
if ($num1 -lt $num2) {
    $resultado = $num2 - $num1
}
else {
    $resultado = $num1 - $num2
}

Write-Host $resultado