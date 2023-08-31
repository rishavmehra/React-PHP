<?php
$db_conn = mysqli_connect("mysql", "root", "", "react_php_crud", 3306);

if (!$db_conn) {
    die("Connection failed: " . mysqli_connect_error());
}