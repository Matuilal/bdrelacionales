<?php

       header("Content-Type: application/json");

       if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo POST es permitido']);
         
    
}

    require 'conexionPEC.php';


    $data = json_decode(file_get_contents('php://input'), true);
    $tipo_residuo =$data['tipo_residuo'];
    $cantidad_kg = $data['cantidad_kg'];
    $fecha_recoleccion = $data['fecha_recoleccion'];
    $destino_final = $data['destino_final'];

    

    $query = $conn->prepare("INSERT INTO residuos (tipo_residuo, cantidad_kg, fecha_recoleccion, destino_final) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;

}

    $query->bind_param("siss", $tipo_residuo, $cantidad_kg, $fecha_recoleccion, $destino_final);

    if($query->execute()){
        echo json_encode(["mensaje" => "residuo insertado correctamente", "id" => $query->insert_id]);

    }else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la incerción" . $query->error]);

    }

    $query->close();
    $conn->close();
    
    
    ?>