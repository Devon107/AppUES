<?php
$hostname = "localhost";
$database = "ues_rr_ii";
$username = "root";
$password = "";

$conexion = mysqli_connect($hostname, $username, $password, $database);
mysqli_set_charset($conexion, 'utf8');
?>