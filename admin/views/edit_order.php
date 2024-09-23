<?php
include("../conection.php");

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Xử lý cập nhật đơn hàng
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $status = $_POST['status'];
        $sql_update = "UPDATE hoadon SET XuLy = '$status' WHERE ID_HoaDon = $id";
        mysqli_query($mysqli, $sql_update);

        // Sử dụng JavaScript để chuyển hướng sau khi cập nhật
        echo "<script>
                alert('Đơn hàng đã được cập nhật.');
                window.location.href = 'index.php?view=list-orders';
              </script>";
        exit(); // Đảm bảo script dừng lại sau khi chuyển hướng
    }

    // Truy vấn lấy thông tin đơn hàng
    $sql_order = "SELECT hoadon.*, thanhvien.TenDangNhap AS username, thanhvien.SoDienThoai, thanhvien.DiaChi 
                  FROM hoadon 
                  JOIN thanhvien ON hoadon.ID_ThanhVien = thanhvien.ID_ThanhVien 
                  WHERE hoadon.ID_HoaDon = $id";
    $query_order = mysqli_query($mysqli, $sql_order);
    $order = mysqli_fetch_assoc($query_order);

    // Truy vấn lấy chi tiết đơn hàng
    $sql_order_details = "SELECT chitiethoadon.*, sanpham.TenSanPham 
                          FROM chitiethoadon 
                          JOIN sanpham ON chitiethoadon.ID_SanPham = sanpham.ID_SanPham 
                          WHERE chitiethoadon.ID_HoaDon = $id";
    $query_order_details = mysqli_query($mysqli, $sql_order_details);

    // Kiểm tra kết quả truy vấn
    if (!$query_order_details) {
        die("Truy vấn SQL bị lỗi: " . mysqli_error($mysqli));
    }
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
    <title>Sửa Đơn Hàng</title>
</head>

<body>
    <div class="container mt-5">
        <h2>Sửa Đơn Hàng</h2>
        <form method="POST">
            <div class="form-group">
                <label for="status">Trạng Thái</label>
                <select id="status" name="status" class="form-control">
                    <option value="0" <?php if ($order['XuLy'] == '0') echo 'selected'; ?>>Đang xử lý</option>
                    <option value="1" <?php if ($order['XuLy'] == '1') echo 'selected'; ?>>Hoàn thành</option>
                    <option value="2" <?php if ($order['XuLy'] == '2') echo 'selected'; ?>>Hủy</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Cập Nhật</button>
        </form>

        <h3>Thông Tin Người Đặt Hàng</h3>
        <table class="table table-bordered">
            <tr>
                <th>Tên Đăng Nhập</th>
                <td><?php echo $order['username']; ?></td>
            </tr>
            <tr>
                <th>Số Điện Thoại</th>
                <td><?php echo $order['SoDienThoai']; ?></td>
            </tr>
            <tr>
                <th>Địa Chỉ</th>
                <td><?php echo $order['DiaChi']; ?></td>
            </tr>
        </table>

        <h3>Chi Tiết Đơn Hàng</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Sản Phẩm</th>
                    <th>Số Lượng</th>
                    <th>Giá</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Kiểm tra nếu có dữ liệu chi tiết đơn hàng
                if (mysqli_num_rows($query_order_details) > 0) {
                    while ($row_detail = mysqli_fetch_assoc($query_order_details)) { ?>
                        <tr>
                            <td><?php echo $row_detail['TenSanPham']; ?></td>
                            <td><?php echo $row_detail['SoLuong']; ?></td>
                            <td><?php echo $row_detail['Gia']; ?></td>
                        </tr>
                    <?php }
                } else { ?>
                    <tr>
                        <td colspan="3">Không có chi tiết đơn hàng.</td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>