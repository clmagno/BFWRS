<?php

$servername = "localhost";
$username = "root";
$password = "";
$db_name = "bfwrs";

$conn = mysqli_connect($servername, $username, $password, $db_name);

if (!$conn) {
    echo "Connection failed!";
    die("Could not connect to MySQL server.");
}
else{
//   echo "hello";
}
