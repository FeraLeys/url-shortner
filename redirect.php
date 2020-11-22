<?php

include "functions.php";

$uri = mysqli_real_escape_string($conn, $_GET['url']);

$check = mysqli_query($conn, "SELECT * FROM uri WHERE short_url = '$uri'");

$result = mysqli_fetch_object($check);

if ($result->url != null) {
    mysqli_query($conn, "UPDATE uri SET hit = '$result->hit'+1 WHERE id = '$result->id'");

    header("location: $result->url");
} else {
    $site = site;
    header("location: $site");
}