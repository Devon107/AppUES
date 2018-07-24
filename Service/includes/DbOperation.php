<?php

class DbOperation
{
    //Database connection link
    private $con;

    //Class constructor
    function __construct()
    {
        //Getting the DbConnect.php file
        require_once dirname(__FILE__) . '/DbConnect.php';

        //Creating a DbConnect object to connect to the database
        $db = new DbConnect();

        //Initializing our connection link of this class
        //by calling the method connect of DbConnect class
        $this->con = $db->connect();
        $this->con->set_charset('utf8');
        $this->con->set_charset('utf-8');
    }

	/*
	* The create operation
	* When this method is called a new record is created in the database
	*/
	function createUsuario($nombre, $apellido, $email){
    $tipoUsuario = "USR";
    $date = date("Y-m-d");
		$stmt = $this->con->prepare("INSERT INTO usuarios (username,	nombres,	apellidos,	email,	fechaRegistro, tipoUsuario) VALUES (?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssss", $email, $nombre, $apellido, $email ,$date,$tipoUsuario);
		if($stmt->execute())
			return true;
		return false;
	}

  function createPuntos($username, $idMateria, $puntuacion){
    $date = date("Y-m-d");
		$stmt = $this->con->prepare("INSERT INTO puntuaciones (username, idMateria, puntuacion, fechaPuntuacion) VALUES (?, ?, ?, ?)");
		$stmt->bind_param("ssds", $username, $idMateria, $puntuacion, $date);
		if($stmt->execute())
			return true;
		return false;
	}

	/*
	* The read operation
	* When this method is called it is returning all the existing record of the database
	*/
	function getPreguntas($idMateria){
		$stmt = $this->con->prepare("SELECT registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion FROM preguntas WHERE idMateria = ?");
    $stmt->bind_param("s",$idMateria);
		$stmt->execute();
		$stmt->bind_result($registro,$idPregunta, $enunciadoPregunta, $idMateria, $fechamodificacion);

		$Preguntas = array();
    $idPreguntas = array();
    $registros = array();
    $enunciados = array();
    $idMaterias = array();
    $fechas = array();
    $i = 0;
    $contador = 1;

		while($stmt->fetch()){
      $registros[$i] = $registro;
			$idPreguntas[$i] = $idPregunta;
			$enunciados[$i] = $enunciadoPregunta;
			$idMaterias[$i] = $idMateria;
      $fechas[$i] = $fechamodificacion;
      $i++;
		}
    $result= array();
    $j=0;
    foreach ( $idPreguntas as $id) {
          $stmtr = $this->con->prepare("SELECT registro, idPregunta, enunciadoRespuesta, correcto, fechaModificacion FROM respuestas WHERE idPregunta = ?");
          $stmtr->bind_param("s",$id);
      		$stmtr->execute();
      		$stmtr->bind_result($registro, $idPregunta, $enunciadoRespuesta, $correcto, $fechamodificacion);

      		$Respuestas = array();

      		while($stmtr->fetch()){
      			$Respuesta  = array();
            $Respuesta['registro'] = $registro;
      			$Respuesta['idPregunta'] = $idPregunta;
      			$Respuesta['enunciadoRespuesta'] = $enunciadoRespuesta;
      			$Respuesta['correcto'] = $correcto;
            $Respuesta['fechaModificacion'] = $fechamodificacion;

      			array_push($Respuestas, $Respuesta);
          }
        array_push($result, $Respuestas);
    }
    $k=0;
    while($k<=25){
		  $Pregunta  = array();
      $Pregunta['registro'] = $registros[$k];
			$Pregunta['idPregunta'] = $idPreguntas[$k];
			$Pregunta['enunciadoPregunta'] = $enunciados[$k];
			$Pregunta['idMateria'] = $idMaterias[$k];
      $Pregunta['fechaModificacion'] = $fechas[$k];
      $Pregunta['respuesta'] = $result[$k];
			array_push($Preguntas, $Pregunta);
      $k++;
		}
		return $Preguntas;
	}

  function getRespuestas($idPregunta){
		$stmt = $this->con->prepare("SELECT registro, idPregunta, enunciadoRespuesta, correcto, fechaModificacion FROM respuestas WHERE idPregunta = ?");
    $stmt->bind_param("s",$idPregunta);
		$stmt->execute();
		$stmt->bind_result($registro, $idPregunta, $enunciadoRespuesta, $correcto, $fechamodificacion);

		$Respuestas = array();

		while($stmt->fetch()){
			$Respuesta  = array();
      $Respuesta['registro'] = $registro;
			$Respuesta['idPregunta'] = $idPregunta;
			$Respuesta['enunciadoRespuesta'] = $enunciadoRespuesta;
			$Respuesta['correcto'] = $correcto;
      $Respuesta['fechaModificacion'] = $fechamodificacion;

			array_push($Respuestas, $Respuesta);
		}
    print_r($Respuestas);
		return $Respuestas;
	}

  function getUsuarios($username){
    /*$stmt = $this->con->prepare("SELECT COUNT(*) FROM usuarios WHERE username = ?");
    $stmt->bind_param("s",$username);
    $count = $stmt->execute();
    if($count<1)
    {
      return false;
    }*/
		$request = $this->con->prepare("SELECT registro, username, nombres, apellidos, email, fechaRegistro FROM usuarios WHERE username = ?");
    $request->bind_param("s",$username);
		$request->execute();
		$request->bind_result($registro, $username, $nombres, $apellidos, $email, $fechaRegistro);

		$Usuarios = array();

		while($request->fetch()){
			$usuario  = array();
      $usuario['registro'] = $registro;
			$usuario['username'] = $username;
			$usuario['nombres'] = $nombres;
      $usuario['apellidos'] = $nombres;
			$usuario['email'] = $email;
      $usuario['fecharegistro'] = $fechaRegistro;

			array_push($Usuarios, $usuario);
		}

		return $Usuarios;
	}

  function getPuntos($username){
		$stmt = $this->con->prepare("SELECT registro, username, idMateria, puntuacion, fechaPuntuacion FROM puntuaciones WHERE username = ?");
    $stmt->bind_param("s",$username);
		$stmt->execute();
		$stmt->bind_result($registro, $username, $idMateria, $puntuacion, $fechaPuntuacion);

		$Puntos = array();

		while($stmt->fetch()){
			$Punto  = array();
      $Punto['registro'] = $registro;
			$Punto['username'] = $username;
			$Punto['idMateria'] = $idMateria;
      $Punto['puntuacion'] = $puntuacion;
      $Punto['fechaPuntuacion'] = $fechaPuntuacion;

			array_push($Puntos, $Punto);
		}

		return $Puntos;
	}

  function getMaterias($idMateria){
		$stmt = $this->con->prepare("SELECT idMateria, nombreMateria FROM materias WHERE idMateria = ?");
    $stmt->bind_param('s',$idMateria);
		$stmt->execute();
		$stmt->bind_result($idMateria, $nombreMateria);
		$Materias = array();

		while($stmt->fetch()){
			$Materia  = array();
			$Materia['idMateria'] = $idMateria;
      $Materia['nombreMateria'] = $nombreMateria;

			array_push($Materias, $Materia);
		}

		return $Materias;
	}

	/*
	* The update operation
	* When this method is called the record with the given id is updated with the new given values
	*/
	/*function updateHero($id, $name, $realname, $rating, $teamaffiliation){
		$stmt = $this->con->prepare("UPDATE heroes SET name = ?, realname = ?, rating = ?, teamaffiliation = ? WHERE id = ?");
		$stmt->bind_param("ssisi", $name, $realname, $rating, $teamaffiliation, $id);
		if($stmt->execute())
			return true;
		return false;
	}*/


	/*
	* The delete operation
	* When this method is called record is deleted for the given id
	*/
	/*function deleteHero($id){
		$stmt = $this->con->prepare("DELETE FROM heroes WHERE id = ? ");
		$stmt->bind_param("i", $id);
		if($stmt->execute())
			return true;

		return false;
	}*/
}
