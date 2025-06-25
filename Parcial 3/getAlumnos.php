<?php 
    header("content-Type: application/json");
    header("access-control-Allow-Origin: *");
    
    
    $usuarios=[

        ["id" => 1, "nombre" => "Hugo Rubio", "correo" => "hugo@gmail.com"],
        ["id" => 1, "nombre" => "Osman quiñones", "correo" => "osman@gmail.com"],
        ["id" => 1, "nombre" => "Oscar Torres", "correo" => "oscar@gmail.com"],
    ];

    echo json_encode($usuarios);
?>
