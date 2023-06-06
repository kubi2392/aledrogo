<?php

    session_start();

    if (isset($_SESSION['klient_id'])){
        $klient_id = $_SESSION['klient_id'];
        $id = $_POST['id'];
        $name = $_POST['name'];
        $price = $_POST['price'];
        $desc = $_POST['desc'];
        $photo = $_POST['photo'];
        $category = $_POST['category'];
                    $conect = mysqli_connect("localhost","root","","aledrogo");
            $zap = "INSERT INTO `produkty`(`id_dostawca`, `nazwa`, `cena`, `opis`, `zdiecie`, `kategoria`) VALUES ('$id','$name','$price','$desc','$photo','$category')";
            $query = mysqli_query($conect,$zap);
            mysqli_close($conect);
            header("Location: http://localhost/aledrogo/site/index.php");
    }else{
        header("Location: http://localhost/aledrogo/site/login.php");
    }
   
?>