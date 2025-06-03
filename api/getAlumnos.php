<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Mateo Ibarra", "correo" => "mateo@gmail.com"],
        ["id" => 1, "nombre" => "Isaac Moreno", "correo" => "isaac@gmail.com"],
        ["id" => 1, "nombre" => "Jesus Angel", "correo" => "jesus@gmail.com"],
    ];

    echo json_encode($usuarios);

?>