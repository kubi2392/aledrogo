<?php

    session_start();

    if (isset($_SESSION['klient_id'])){
        $klient_id = $_SESSION['klient_id'];
        $id = $_POST['id'];
        $ilosc = $_POST['many'];
        if ($_POST['many'] > 0 ){
            $conect = mysqli_connect("localhost","root","","aledrogo");
            $zap = "INSERT INTO koszyki(klient_id, produkt_id, ilosc) VALUES ($klient_id, $id, $ilosc)";
            $query = mysqli_query($conect,$zap);
            mysqli_close($conect);
            header("Location: http://localhost/aledrogo/site/item.php?id=$id&success=1");
        }else {
            header("Location: http://localhost/aledrogo/site/item.php?id=$id&success=0");
        }
    }else{
        header("Location: http://localhost/aledrogo/site/login.php");
    }
   
?>