<?php 
include("../../conection.php"); 

if (isset($_GET['id'])) {
    $ID_HoaDon = $_GET['id'];
    echo "ID_HoaDon: " . $ID_HoaDon; 
    $XuLy = 1;


    $sql_Order = "UPDATE hoadon SET XuLy = '".$XuLy."' WHERE ID_HoaDon = $ID_HoaDon";
    $result = mysqli_query($mysqli, $sql_Order);

  
    if ($result) {
        echo "Update thành công"; 
       header('Location: ../index.php?view=dashboard');
    } else {
        echo "Lỗi: " . mysqli_error($mysqli);
    }
}

if (isset($_GET['id_NCC'])) {
    echo 'asdasdasd';
}
?>
