<?php

include "config.php";

function site_url()
{
    return site;
}

function short($panjang = 2)
{
    $karakter = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
    $string = '';
    for ($i = 0; $i < $panjang; $i++) {
        $pos = rand(0, strlen($karakter) - 1);
        $string .= $karakter[$pos];
    }
    $r = $string . substr(uniqid(), 6, 5);
    return strtolower($r);
}