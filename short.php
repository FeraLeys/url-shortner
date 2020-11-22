<?php

include "functions.php";

$uri = mysqli_real_escape_string($conn, $_GET['uri']);
if ($uri == '') {
    return false;
}
$short_uri = short();

$save_uri = mysqli_query($conn, "INSERT INTO uri VALUES(NULL, '$uri','$short_uri',0,now())");

if ($save_uri) {
    echo site . $short_uri;
} else {
    echo 'error';
}