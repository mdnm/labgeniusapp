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
        while($result = $query->fetch()) {
            $id_aluno = $result["id_aluno"];
            $query2 = $con->prepare("SELECT * FROM aluno_curso_rel WHERE id_aluno = '$id_aluno'");
            $query2->execute();
            $count2 = $query2->rowCount();
            if($count2 > 0){
                $out = "[";
                while($result2 = $query2->fetch()) {
                    if($out != "["){
                        $out .= ",";
                    }
                    $id_curso = $result2["id_curso"];
                    $query3 = $con->prepare("SELECT * FROM cursos WHERE id = '$id_curso'");
                    $query3->execute();
                    $result3 = $query3->fetch();                    
                    $out .= json_encode($result3);
                    /*
                    $out = "[";       
                    while($result3 = $query3->fetch()){
                        if ($out != "[") {
                            $out .= ",";
                        }
                        $out .= '{"id": "'.$result3["id"].'",';
                        $out .= '"titulo": "'.$result3["titulo"].'",';
                        $out .= '"descricao": "'.$result3["descricao"].'",';
                        $out .= '"thumbnail": "'.$result3["thumbnail"].'"}';
                    }
                    $out .= "]";
                    echo $out;
                    */
                }
                $out .= "]";
                echo $out;
            } else {
                echo json_encode("Não está ingressado em nenhum curso");
            }
        }
    }
} catch (Exception $e) {
	echo "Erro: ". $e->getMessage();
};
        