$VIEWS = Read-Host "How many views do you want to get ? "
$URL = Read-Host "What is the URL of the counter ? (Camo URL works fine): "
if ($VIEWS -eq $null){
    $VIEWS = "10"
}
if ($URL -eq $null){
    $URL = "https://komarev.com/ghpvc/?username=yan-jobs"
}
echo "-----------------------------"
echo "Farming $VIEWS view.s on $URL"
echo "-----------------------------"
$COUNTER=0
$HUMAN_COUNTER=1
Do{
    $COUNTER++
    Write-Host "Farming the $HUMAN_COUNTER st/nd/th view..."
    $HUMAN_COUNTER++
    curl.exe --silent "$URL"
    echo "-----------------------------"
}Until($COUNTER -eq $VIEWS)
Write-Host "Number of views reached, exiting..."