# Definir los arrays para cada uno de los grupos de piratas
$mugiwara = "Luffy", "Zoro", "Nami", "Sanji", "Usopp", "Chopper", "Robin", "Franky", "Brook", "Jinbe"
$barbaNegra = "Teach", "Burguess", "Shiryu", "Van Augur", "Pizarro", "Laffitte", "Catarina", "Sanjuan", "Kuzan", "Vasco"
$pelVermell = "Shanks", "Benn", "Roux", "Yasopp", "Hongo", "Bonk", "Limejuice", "Building Snake", "Gab"
$barbaBlanca = "Newgate", "Marco", "Oden", "Ace", "Jozu", "Thatch", "Vista", "Blamenco", "Rakuyo"

$integrante = Read-Host "Introduce un nombre"

# Miramos si el nombre está en alguna de los arrays, y si está
# Devolvemos en cuál está
# Y si no se encuentra, el script devuelve "Ninguno de los anteriores"
if ($mugiwara.Contains($integrante)) {
    Write-Output "Mugiwara"
}
elseif ($barbaNegra.Contains($integrante)) {
    Write-Output "Barba Negra"
}
elseif ($pelVermell.Contains($integrante)) {
    Write-Output "Pel vermell"
}
elseif ($barbaBlanca.Contains($integrante)) {
    Write-Output "Barba blanca"
}
else {
    Write-Output "Ninguno de los anteriores"
}

exit

# ----- También se podría hacer con un montón de -or sin hacer los arrays, como no los hemos aprendido -----
if ($integrante -eq "Luffy" -or $integrante -eq "Zoro" -or $integrante -eq "Nami" -or $integrante -eq "Sanji" -or $integrante -eq "Usopp" -or $integrante -eq "Chopper" -or $integrante -eq "Robin" -or $integrante -eq "Franky" -or $integrante -eq "Brook" -or $integrante -eq "Jinbe") {
    Write-Output "Mugiwara"
}
elseif ($integrante -eq "Teach" -or $integrante -eq "Burguess" -or $integrante -eq "Shiryu" -or $integrante -eq "Van Augur" -or $integrante -eq "Pizarro" -or $integrante -eq "Laffitte" -or $integrante -eq "Catarina" -or $integrante -eq "Sanjuan" -or $integrante -eq "Kuzan" -or $integrante -eq "Vasco") {
    Write-Output "Barba Negra"
}
elseif ($integrante -eq "Shanks" -or $integrante -eq "Benn" -or $integrante -eq "Roux" -or $integrante -eq "Yasopp" -or $integrante -eq "Hongo" -or $integrante -eq "Bonk" -or $integrante -eq "Limejuice" -or $integrante -eq "Building Snake" -or $integrante -eq "Gab") {
    Write-Output "Pel vermell"
}
elseif ($integrante -eq "Newgate" -or $integrante -eq "Marco" -or $integrante -eq "Oden" -or $integrante -eq "Ace" -or $integrante -eq "Jozu" -or $integrante -eq "Thatch" -or $integrante -eq "Vista" -or $integrante -eq "Blamenco" -or $integrante -eq "Rakuyo") {
    Write-Output "Barba blanca"
}
else {
    Write-Output "Ninguno de los anteriores"
}