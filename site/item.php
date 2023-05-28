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
        <form method="get">
            <input type="text" placeholder="wrzystko czego pragniesz" name="look">
            <input type="submit" value="wyszukaj">
        </form>
        <div>
            <form method="get" class="buttons">
                <input type="submit" value="ogród" name="look">
                <input type="submit" value="ubrania" name="look">
                <input type="submit" value="auto" name="look">
                <input type="submit" value="dom" name="look">
                <input type="submit" value="zwierzęta" name="look">
                <input type="submit" value="technologia" name="look">
            </form>
        </div>
        
    </nav>
    <div class='card'>
        <?php
            $conect = mysqli_connect("localhost","root","","aledrogo");
            $zap = "select nazwa,cena,zdiecie from produkty WHERE id = ".$_GET['id'].";";
            $query = mysqli_query($conect,$zap);
            while($data = mysqli_fetch_row($query)){
                echo "<span><p>nazwa:$data[0]</p><img src='$data[2]' alt='no img'></span><p class='price'>cena:$data[1]zł</p>";
            }
            mysqli_close($conect);
        ?>
        
    </div>
</body>
</html>