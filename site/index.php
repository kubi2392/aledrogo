<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php 
        if(isset($_GET['look'])){
        echo "<title>szukasz:".$_GET['look']."</title>";
        }
        else {
            echo "<title>aledrogo</title>";
        }
    ?>
    <link rel="stylesheet" href="./css/nav.css">
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./css/items.css">
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
    
    <section>
        <?php
        if(isset($_GET["look"])){
            $look = $_GET["look"];
        }
        else{
            $look = "";
        }
        $conect = mysqli_connect("localhost","root","","aledrogo");
        $zap = "select nazwa,cena,zdiecie,id from produkty WHERE kategoria LIKE '%$look%' OR nazwa LIKE '%$look%';";
        $query = mysqli_query($conect,$zap);
        while($data = mysqli_fetch_row($query)){
            echo "<a href='./item.php?id=$data[3]'&name=$data[0]><div class='pane'><p>$data[0]</p><img src='$data[2]' alt='no img'><p>cena:$data[1]zł</p></div></a>";
        }
        mysqli_close($conect);
        ?>
    </section>
</body>
</html>