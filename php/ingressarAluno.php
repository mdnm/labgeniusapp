<?php

    if (isset($_SERVER['HTTP_ORIGIN'])) {
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }
    // Access-Control headers are received during OPTIONS requests

    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");        

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers:{$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

        exit(0);

    }

    require "dbconnect.php";

    $data = file_get_contents("php://input");

    if (isset($data)) {

        $request = json_decode($data);

        $usuario = $request->usuario;

        $id_curso = $request->id_curso;

    }

    $usuario = stripslashes($usuario);

    $id_curso = stripslashes($id_curso);


    $dns = "mysql:host=localhost;dbname=labgenius";
    $user = "root";
    $pass = "";
    $con2 = new PDO($dns, $user, $pass);

    $query = $con2->prepare("SELECT * FROM aluno WHERE usuario = '$usuario'");
    $query->execute();
    $count = $query->rowCount();
    if($count > 0){
        $result = $query->fetch();
        $id_aluno = $result["id_aluno"];
        $sql = "SELECT * FROM aluno_curso_rel WHERE id_aluno = '$id_aluno' AND id_curso = '$id_curso'";
        $result2 = mysqli_query($con,$sql);   
        $count2 = mysqli_num_rows($result2);                  

      if($count2>0) {

        $response= "Já está ingressado";

      }else {

        $sql2 = "INSERT INTO aluno_curso_rel (id_aluno, id_curso) VALUES ('$id_aluno', '$id_curso')";
        if($con->query($sql2) === TRUE) {

            $response= "Parabéns você ingressou";
    
        }
        else {
            $response = "Erro";
        }
      }
    }

    echo json_encode($response);

?>

