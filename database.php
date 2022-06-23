<?php

$server = "localhost";
$user = "root";
$passdb = "";
$db = "cc_db";
//Object Oriented Style
$connect = mysqli_connect( $server, $user, $passdb, $db )or die( "Connection Error" );

?>