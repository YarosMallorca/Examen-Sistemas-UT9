$mugiwara = "Luffy", "Zoro", "Nami", "Sanji", "Usopp", "Chopper", "Robin", "Franky", "Brook", "Jinbe"
$barbaNegra = "Teach", "Burguess", "Shiryu", "Van Augur", "Pizarro", "Laffitte", "Catarina", "Sanjuan", "Kuzan", "Vasco"
$pelVermell = "Shanks", "Benn", "Roux", "Yasopp", "Hongo", "Bonk", "Limejuice", "Building Snake", "Gab"
$barbaBlanca = "Newgate", "Marco", "Oden", "Ace", "Jozu", "Thatch", "Vista", "Blamenco", "Rakuyo"

$integrante = Read-Host "Introduce un nombre"

# Miramos si el nombre está en alguna de las listas, y si está
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