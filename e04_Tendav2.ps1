$precio = Read-Host "Introduce el precio"
$precio = [float]$precio

$cantidad = Read-Host "Introduce la cantidad"
$cantidad = [int]$cantidad

# Calculamos el total
$total = $cantidad * $precio

if ($total -ge 200) {
    Write-Host "Precio final: $($total - (($total / 100) * 12.5))€"
    Write-Host "Descuento: $(($total / 100) * 12.5)€"
}
elseif ($total -gt 150) {
    Write-Host "$($total - (($total / 100) * 10))€"
    Write-Host "Descuento: $(($total / 100) * 10)€"
}
elseif ($total -gt 100) {
    Write-Host "$($total - (($total / 100) * 7))€"
    Write-Host "Descuento: $(($total / 100) * 7)€"
}
elseif ($total -ge 50) {
    Write-Host "$($total - (($total / 100) * 5))€"
    Write-Host "Descuento: $(($total / 100) * 5)€"
}
else {
    Write-Host "$total€"
    Write-Host "No hay descuento"
}