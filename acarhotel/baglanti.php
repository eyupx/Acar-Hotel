<?php 
    try {
        $db=new PDO('mysql:host=localhost;dbname=otel;charset=utf8','root','');
        //echo "db ok";
    } catch (PDOException $e) {
        echo $e->getmessage();
        echo "db sorunu";
    }
?>