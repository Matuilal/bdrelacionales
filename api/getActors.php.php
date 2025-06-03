<?php
    $host = '192.168.1.21';
    $user = 'sakila_user';
    $pass = 'sakila';
    $dbname = 'sakila';

    $conn = new mysqli($host, $user, $pass, $dbname);

    
    if($conn->connect_error){
       http_response_code(500);
       echo json_encode(['error' => 'Error de conexion: ' . $conn->connect_error]);
       exit;
    
    }

    $sql = "SELECT" * FROM actor";
    $result = $conn->query($sql);
    

    $actors = [];

    if($result && $result->num_rows > 0){
      while($row = $result->mysql_fetch_assoc(){
         $actors[] = $row;
      }
           
    }  
  
    $conn->close();

    header("content-Type: application/json")
    echo json_encode($actors);

?>

    