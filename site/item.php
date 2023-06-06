<?php
    session_start(); ?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php 
        if(isset($_GET['name'])){
        echo "<title>".$_GET['name']."</title>";
        }
        else {
            echo "<title>sklep</title>";
        }
    ?>
    <link rel="stylesheet" href="./css/nav.css">
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./css/item.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
<nav>
<div class="links">
            <a href="add.php" class="add linkable">daodaj</a>
            <a href="index.php" class="add linkable">główna</a>
        </div>
        <form action="" method="post"></form>
    </nav>
    submit
    <?php 
    if(isset($_GET['success']) && $_GET['success'] == 1){
        echo "<p>Udało się dodać do koszyka</p>";
    }
    ?>
    <div class='card'>
        <?php

            $conect = mysqli_connect("localhost","root","","aledrogo");
            $zap = "select * from produkty WHERE id = ".$_GET['id'].";";
            $query = mysqli_query($conect,$zap);
            while($data = mysqli_fetch_row($query)){
                echo "<div class='imgandtitle'>
                    <p>nazwa:$data[2]</p>
                    <img src='$data[5]' alt='no img'>
                </div>
                <p class='price'>cena:$data[3]zł</p>";
            }
            mysqli_close($conect);
        ?>
        <form action="/aledrogo/site/api/cardpost.php" method="post">
            <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
            <label for="Sztuk:"></label>
            <input type="number" name="many" id="many">
            <input type="submit" value="Dodaj">
            
        </form>
    </div>
</body>
</html>