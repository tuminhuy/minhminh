<?php
include("../conection.php"); 

$sql_CountOrder1 = mysqli_query($mysqli, "SELECT * FROM hoadon WHERE XuLy = '1'");
$CountOrder1 = mysqli_num_rows($sql_CountOrder1);

$sql_AllMoney = mysqli_query($mysqli, "SELECT GiaTien FROM hoadon WHERE XuLy = '1'");
$i = 0;
while ($allMoney = mysqli_fetch_array($sql_AllMoney)) {
    $i += $allMoney['GiaTien'];
}
$AllMoney = $i;

$sql_CountOrder2 = mysqli_query($mysqli, "SELECT * FROM hoadon WHERE XuLy = '0'");
$CountOrder2 = mysqli_num_rows($sql_CountOrder2);

$sql_CountOrder3 = mysqli_query($mysqli, "SELECT ID_HoaDon FROM hoadon WHERE XuLy = '2'");
$CountOrder3 = mysqli_num_rows($sql_CountOrder3);
?>

<div class="container-fluid py-5">
    <div class="row">
        <div class="col">
            <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐƠN HÀNG THÀNH CÔNG</div>
                <div class="card-body">
                    <h5 class="card-title"><?php echo $CountOrder1 ?></h5>
                    <p class="card-text">Đơn hàng giao dịch thành công</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐANG XỬ LÝ</div>
                <div class="card-body">
                    <h5 class="card-title"><?php echo $CountOrder2 ?></h5>
                    <p class="card-text">Số lượng đơn hàng đang xử lý</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐƠN HÀNG HỦY</div>
                <div class="card-body">
                    <h5 class="card-title"><?php echo $CountOrder3 ?></h5>
                    <p class="card-text">Số đơn bị hủy trong hệ thống</p>
                </div>
            </div>
        </div>
    </div>
    <!-- end analytic  -->
    <div class="card">
        <div class="card-header font-weight-bold">
            <a href="index.php?view=list-orders">Xem Danh Sách Đơn Hàng</a>
        </div>
    </div>
</div>