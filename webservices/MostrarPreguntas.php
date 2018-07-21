<?php
require('connection.php');
$idMateria = $GET["id"];
$json = [];

$sqlPre = "SELECT * FROM preguntas WHERE idMateria = '$idMateria'";
$rsPre = mysqli_query($conexion, $sqlPre);

$i = 0;
$idPregunta;
$contador = 1;

do{
  $rowPre = mysqli_fetch_object($rsPre);
  $respuestas =[];

  $json[$i] = $rowPre;
  $idPregunta = $json[$i] -> idPregunta;

  $sqlRes = "SELECT * FROM respuestas WHERE idPregunta = '$idPregunta'";
  $rsRes = mysqli_query($conexion,$sqlRes);

  while($rowRes = mysqli_fetch_object($rsRes)){
    $respuestas[] = $rowRes;
    $json[$i] -> respuestas = $respuestas;
  }
  $i++;
  $contador++;
}while($contador <= 25);
mysqli_close($conexion);
echo json_encode($json);
?>
