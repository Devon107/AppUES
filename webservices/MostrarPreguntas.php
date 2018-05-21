<?php
require('connection.php');

$json = [];

$sqlPre = "SELECT * FROM preguntas WHERE idMateria = 'EIN'";
$rsPre = mysqli_query($conexion, $sqlPre);

$i = 0;
$idPregunta;



while($rowPre = mysqli_fetch_object($rsPre)){
    $respuestas = [];

    $json[$i] = $rowPre;
    $idPregunta = $json[$i]->idPregunta;

    $sqlRes = "SELECT * FROM respuestas WHERE idPregunta = '$idPregunta'";
    $rsRes = mysqli_query($conexion, $sqlRes);

    while($rowRes = mysqli_fetch_object($rsRes)){
        $respuestas[] = $rowRes;
        $json[$i]->respuestas = $respuestas;
    }
    $i++;
}
mysqli_close($conexion);
echo json_encode($json);
?>