<?php
include("../conection.php");
session_start();
$order_id = $_GET['order_id'];

$sql_order_items = "SELECT * FROM chitiethoadon INNER JOIN sanpham ON chitiethoadon.ID_SanPham = sanpham.ID_SanPham WHERE ID_HoaDon = '$order_id'";
$result_order_items = mysqli_query($mysqli, $sql_order_items);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
</head>
<body>
    <h1>Chi tiết đơn hàng</h1>
    <table border="1">
        <tr>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
        </tr>
        <?php while ($item = mysqli_fetch_assoc($result_order_items)) { ?>
        <tr>
            <td><?php echo $item['TenSanPham']; ?></td>
            <td><?php echo $item['SoLuong']; ?></td>
            <td><?php echo $item['GiaBan']; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>