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
//header('Content-Type: text/html; charset=utf-8');
$data = file_get_contents("php://input");
$request = json_decode($data);

$usuario = $request->usuario;
$usuario = trim($usuario);
$usuario = stripslashes($usuario);

$id_curso = $request->id_curso;
$id_curso = trim($id_curso);
$id_curso = stripslashes($id_curso);

$dns = "mysql:host=localhost;dbname=labgenius";
$user = "root";
$pass = "";
try {
	$con = new PDO($dns, $user, $pass);
	if(!$con){
		echo "Não foi possivel conectar com Banco de Dados!";
    }		
    $query = $con->prepare("SELECT * FROM aluno WHERE usuario = '$usuario'");
    $query->execute();
    $count = $query->rowCount();
    if($count > 0){
            $result = $query->fetch();
            $id_aluno = $result["id_aluno"];
            $query2 = $con->prepare("DELETE FROM aluno_aula_rel WHERE id_curso = $id_curso AND id_aluno = $id_aluno");
            $query2->execute();
            $query3 = $con->prepare("DELETE FROM aluno_curso_rel WHERE id_curso = $id_curso AND id_aluno = $id_aluno");
            $query3->execute();
            $count2 = $query3->rowCount();
            if($count2 > 0) {
                $response = "Saiu com sucesso";
            } else {
                $response = "Erro";
            }
    } else {
        $response = "Erro";
    }
    echo json_encode($response);
} catch (Exception $e) {
	echo "Erro: ". $e->getMessage();
};