<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "minhminh";

// Tạo kết nối
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($mysqli->connect_error) {
    die("Kết nối thất bại: " . $mysqli->connect_error);
}
?>