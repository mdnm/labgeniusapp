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

$username = $request->username;
$username = trim($username);
$username = stripslashes($username);

$nome = $request->nome;
$nome = trim($nome);
$nome = stripslashes($nome);

$sobrenome = $request->sobrenome;
$sobrenome = trim($sobrenome);
$sobrenome = stripslashes($sobrenome);

$email = $request->email;
$email = trim($email);
$email = stripslashes($email);

$dns = "mysql:host=localhost;dbname=labgenius";
$user = "root";
$pass = "";
try {
	$con = new PDO($dns, $user, $pass);
	if(!$con){
		echo "Não foi possivel conectar com Banco de Dados!";
    }		
    $query = $con->prepare("UPDATE aluno SET nome = '$nome' WHERE usuario = '$username'");
    $query->execute();
    $count = $query->rowCount();
    if($count > 0){
        $query2 = $con->prepare("UPDATE aluno SET sobrenome = '$sobrenome' WHERE usuario = '$username'");
        $query2->execute();
        $count2 = $query2->rowCount();
        if($count2 > 0){
            $query3 = $con->prepare("UPDATE aluno SET email = '$email' WHERE usuario = '$username'");
            $query3->execute();
            $count3 = $query3->rowCount();
            if($count3 > 0){
                $response = "Atualizado com sucesso";
            } else {
                $response = "Erro";
            }
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