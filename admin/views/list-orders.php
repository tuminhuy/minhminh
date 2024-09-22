<?php
include("../conection.php");

// Truy vấn lấy danh sách đơn hàng
$sql_orders = "SELECT hoadon.*, thanhvien.TenDangNhap AS username 
               FROM hoadon
               JOIN thanhvien ON hoadon.ID_ThanhVien = thanhvien.ID_ThanhVien
               ORDER BY hoadon.ThoiGianLap DESC";
$query_orders = mysqli_query($mysqli, $sql_orders);
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
    <title>Quản Lý Đơn Hàng</title>
</head>

<body>
    <div class="container mt-5">
        <h2>Danh Sách Đơn Hàng</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Người Đặt</th>
                    <th>Số Điện Thoại</th>
                    <th>Giá Tiền</th>
                    <th>Ngày Đặt</th>
                    <th>Trạng Thái</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row_order = mysqli_fetch_assoc($query_orders)) { ?>
                    <tr>
                        <td><?php echo $row_order['ID_HoaDon']; ?></td>
                        <td><?php echo $row_order['username']; ?></td>
                        <td><?php echo $row_order['SoDienThoai']; ?></td>
                        <td><?php echo $row_order['GiaTien']; ?></td>
                        <td><?php echo $row_order['ThoiGianLap']; ?></td>
                        <td><?php echo $row_order['XuLy']; ?></td>
                        <td>
                            <a href="index.php?view=edit_order&id=<?php echo $row_order['ID_HoaDon']; ?>" class="btn btn-primary">Sửa</a>
                            <a href="index.php?view=delete_order&id=<?php echo $row_order['ID_HoaDon']; ?>" class="btn btn-danger">Xóa</a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>