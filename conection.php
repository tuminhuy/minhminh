<?php
$mysqli = new mysqli("localhost","root","","minhminh");

if ($mysqli -> connect_errno) {
  echo "Kết nối thất bại: " . $mysqli -> connect_error;
  exit();
}
?>