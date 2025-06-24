<?php

         $conn = new mysqli("localhost", "root", "", "PEC");


          $sql = "SELECT * FROM residuos";
          $result = $conn->query($sql);

          $datos = [];

         while ($row = $result->fetch_assoc()) {
         $datos[] = $row;
}


         header('Content-Type: application/json');
        echo json_encode($datos);
?>