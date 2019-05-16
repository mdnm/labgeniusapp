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

        $username = $request->username;       

        $password = $request->password;

        $email = $request->email;

        $name = $request->name;

        $lastname = $request->lastname;

    }

    $username = stripslashes($username);

    $password = stripslashes($password);

    $sql = "INSERT INTO instrutor (usuario, senha, nome, sobrenome, email) VALUES ('$username', '$password', '$name', '$lastname', '$email')";

    if ($con->query($sql) === TRUE) {

        $response= "Registrado com sucesso";

    } else {

    $response = "Erro: " . $db->error;

    }

 echo json_encode( $response);

?>