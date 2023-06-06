<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dostawca</title>
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./css/items.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
    
    <?php
    $conect = mysqli_connect("localhost","root","","aledrogo");
    $zap = "SELECT dostawca.imie, dostawca.nazwisko, kraje.nazwa_kraju 
    FROM dostawca INNER JOIN kraje 
    ON dostawca.id_kraju = kraje.id
    WHERE dostawca.id = ".$_GET['id'].";";
    $query = mysqli_query($conect,$zap);
    while($data = mysqli_fetch_row($query)){
        echo "
        <p>imie:$data[0]</p>
        <p>nazwisko:$data[1]</p>
        <p>kraj pochodzenia:$data[2]</p>";
    }
    mysqli_close($conect);
    ?>
    <p>wrzystkie jego aukcje</p>
    <section>
    <?php
    $conect = mysqli_connect("localhost","root","","aledrogo");
    $zap = "select nazwa,cena,zdiecie,id from produkty WHERE id_dostawca=".$_GET['id'].";";
    $query = mysqli_query($conect,$zap);
    while($data = mysqli_fetch_row($query)){
        echo "<a href='./item.php?id=$data[3]'&name=$data[0]><div class='pane'><p>$data[0]</p><img src='$data[2]' alt='$data[2]'><p>cena:$data[1]zł</p></div></a>";
    }
    mysqli_close($conect);
    ?>
    </section>
</body>
</html>