<?php include "functions.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Url Shortner - Tempatnya Pendekin URL Bukan Pendekin Utang</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/0a30de36f0.js" crossorigin="anonymous"></script>
</head>

<body>

    <div id="container">
        <div id="form">
            <h1>Shortner<span class="url">Url</span></h1>
            <div class="alert invisible">Isi URL yang mau di pendekan di bawah!</div>
            <input type="text" data-p="uri" class="input" placeholder="Pendekan URL kamu disini ...">
            <button data-b="short_btn" data-c="copy_btn" class="btn">Short</button>
        </div>
    </div>
    <script src="site.js"></script>
</body>

</html>