<?php
session_start();
if(isset($_POST['login']) && isset($_POST['password'])){
    $login = $_POST['login'];
    $conect = mysqli_connect("localhost","root","","aledrogo");
    $zap = "SELECT password, konta.id, klient.id FROM `konta` INNER JOIN klient ON klient.id_konta= konta.id LIMIT 1;";
    $querye = mysqli_query($conect,$zap);
    $query = $querye->fetch_all();
    echo md5($_POST['password']);
    if($query[0][0] == md5($_POST['password'])){
        $_SESSION['id'] = $query[0][1];
        $_SESSION['klient_id'] = $query[0][2];
    }
    mysqli_close($conect);
    
    header("Location: http://localhost/aledrogo/site/index.php");
}

?>