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

$id_curso = $request->id_curso;
$id_curso = stripslashes($id_curso);

$dns = "mysql:host=localhost;dbname=labgenius";
$user = "root";
$pass = "";
try {
	$con = new PDO($dns, $user, $pass);
	if(!$con){
		echo "Não foi possivel conectar com Banco de Dados!";
    }		
    $query = $con->prepare("SELECT * FROM modules WHERE id_course = $id_curso");
	$query->execute();
	$count = $query->rowCount();
	if($count>0){
		$out = "[";
		while($result = $query->fetch()){
			if ($out != "[") {
				$out .= ",";
			}
			$out .= '{"id": "'.$result["id"].'",';
			$out .= '"name": "'.$result["name"].'"}';
		}
		$out .= "]";
		echo $out; 
	} else {
		echo json_encode("Nenhum módulo encontrado");
	}
} catch (Exception $e) {
	echo "Erro: ". $e->getMessage();
};