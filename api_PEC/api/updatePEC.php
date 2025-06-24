<?php

    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD' ]!== 'PUT'){
         http_response_code(500);
         echo json_encode(['ERROR' => 'Solo metodo PUT es permitido']);


    }

    require 'conexionPEC.php';

    
    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $tipo_residuo = $conn->real_escape_string($input["first_name"]);
    $cantidad_kg = $conn->real_escape_string($input["last_name"]);
    $fecha_recoleccion = $conn->real_escape_string($input["last_name"]);
    $destino_final = $conn->real_escape_string($input["destino_final"]);
    $query = "UPDATE actor SET tipo_residuo = ?, cantidad_kg = ?, fecha_recoleccion = ?, destino_final = ? last_update = NOW() WHERE id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta . $conn->error"]);
        exit();

    }

        $st->bind_param("sissi", $tipo_residuo, $cantidad_kg, $fecha_recoleccion, $destino_final, $id);

        if($st->execute()){
            if($st->affected_rows > 0){
                echo json_encode(["mensage" => "residuo actualizado correctamente"]);

            }else{
                http_response_code(404);
                echo json_encode(["error" => "No se encontro el residuo: $id" ]);

            }
        }else{
                http_response_code(500);
                echo json_encode(["error" => "Error al ejecutar" . $st->error ]);
        }        
            $st->close();
            $conn->close();
            















?>