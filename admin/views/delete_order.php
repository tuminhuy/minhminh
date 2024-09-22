<?php
session_start();
include("../conection.php");

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Xóa đơn hàng
    $sql_delete_order = "DELETE FROM hoadon WHERE ID_HoaDon = $id";
    mysqli_query($mysqli, $sql_delete_order);

    // Xóa chi tiết đơn hàng
    $sql_delete_order_details = "DELETE FROM chitiethoadon WHERE ID_HoaDon = $id";
    mysqli_query($mysqli, $sql_delete_order_details);

    // Sử dụng JavaScript để chuyển hướng sau khi xóa
    echo "<script>
            alert('Đơn hàng đã được xóa thành công.');
            window.location.href = 'index.php?view=list-orders';
          </script>";
    exit(); // Đảm bảo script dừng lại sau khi chuyển hướng
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/solid.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Xóa Đơn Hàng</title>
</head>

<body>
    <div class="container mt-5">
        <h2>Xóa Đơn Hàng</h2>
        <p>Đơn hàng đã được xóa thành công.</p>
        <a href="index.php?view=list-orders" class="btn btn-primary">Quay lại danh sách đơn hàng</a>
    </div>
</body>

</html>