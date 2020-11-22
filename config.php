<?php

define("DBHost", "localhost");
define('DBUser', 'root');
define('DBPass', '');
define('DBName', 'urlShortner');

define('site', 'http://localhost/Url_Shortener.com/');

$conn = mysqli_connect(DBHost, DBUser, DBPass, DBName);