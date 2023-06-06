<?php
    session_start(); ?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./css/nav.css">
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./css/add.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
    <nav>   
        <div class="links">
            <a href="add.php" class="add linkable">dodaj</a>
            <a href="index.php" class="add linkable">główna</a>
        </div>
    </nav>
    <form method="post" action="api/login.php">
        <label for="login" require>Login:</label>
        <input type="text" name="login" id="login">
        <label for="password">Hasło:</label>
        <input type="password" require name="password" id="password">
        <input type="submit" value="Zaloguj">
    </form>
</body>
</html>