<?php
include("conection.php"); 
session_start();

if (isset($_POST['contact'])) {
    $ID_ThanhVien = isset($_GET['id']) ? $_GET['id'] : '';
    $HoVaTen = isset($_POST['name']) ? $_POST['name'] : '';
    $Email = isset($_POST['email']) ? $_POST['email'] : '';
    $NoiDung = isset($_POST['NoiDung']) ? $_POST['NoiDung'] : '';

    // Kiểm tra xem ID_ThanhVien có tồn tại trong bảng thanhvien không
    $sql_check = "SELECT * FROM thanhvien WHERE ID_ThanhVien = '$ID_ThanhVien'";
    $result_check = mysqli_query($mysqli, $sql_check);

    if (mysqli_num_rows($result_check) > 0) {
        // Nếu tồn tại, chèn vào bảng lienhe
        $sql_ThanhVien = "INSERT INTO lienhe (ID_ThanhVien, HoVaTen, Email, NoiDung) VALUES ('$ID_ThanhVien', '$HoVaTen', '$Email', '$NoiDung')";

        if (mysqli_query($mysqli, $sql_ThanhVien)) {
            header("location:contact.php?id={$ID_ThanhVien}");
            exit();
        } else {
            echo "Lỗi khi thêm liên hệ: " . mysqli_error($mysqli);
        }
    } else {
        echo "ID_ThanhVien không tồn tại.";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/js/bootstrap.bundle.js">
    <link rel="stylesheet" href="bootstrap/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="themify-icons/themify-icons.css">
    <link rel="shortcut icon" href="https://img.icons8.com/cotton/2x/laptop--v3.png" type="image/png">
</head>
<body> 
<div class="menu sticky-top">
    <nav class="navbar navbar-expand-lg header-custom" style="background-color: #12528d;">
        <div class="container-fluid font-header-custom">
            <a class="navbar-branch" href="index.php">
                <img src="image/logo/logo.png" height="80">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <?php if(isset($_SESSION['TenDangNhap'])) { ?>
                    <li class="nav-item">
                        <a class="nav-link active" href="sanpham/index.php" style="color:white;">TẤT CẢ SẢN PHẨM</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="cart/index.php" style="color:white;">GIỎ HÀNG</a>
                    </li>
                    <?php } else { ?>
                    <a class="nav-link active" href="sanpham/index.php" style="color:white;">TẤT CẢ SẢN PHẨM</a>
                    <?php } ?>
                    <?php if(isset($_SESSION['TenDangNhap'])) { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php?id=<?php echo $_SESSION['ID_ThanhVien']?>" style="color:white;">LIÊN HỆ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="historyOrder.php" style="color:white;">LỊCH SỬ ĐẶT HÀNG</a>
                    </li>
                    <li class="nav-item" >
                        <a class="nav-link active"  href="news.php" style="color:white;">TIN TỨC</a>
                     </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ThanhVien/logout.php" style="color:white;">ĐĂNG XUẤT</a>
                    </li>
                    <li class="nav-item" style="float: right;">
                        <a type="button" class="btn btn-secondary" style="color:white;" href="ThanhVien/profile.php?id=<?php echo $_SESSION['ID_ThanhVien']?>"></span> <?php echo $_SESSION['HoVaTen']?></a>
                    </li>
                    <?php } else { ?>
                    <li><a type="button" class="btn btn-secondary" href="ThanhVien/login.php" style="color:white;">&nbsp;ĐĂNG NHẬP</a></li>
                    <h8> Bạn chưa đăng nhập? hãy đăng nhập để mua hàng</h8>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <form action="sanpham/actionSanPham.php?TimKiem" class="navbar-form navbar-right" method="POST">
            <div class="input-group">
                <input type="Search" placeholder="Tìm Kiếm..." class="form-control" name="tukhoa">
                <div class="input-group-btn">
                    <input type="submit" class="btn btn-secondary" name="tim" value="Tìm">
                </div>
            </div>
        </form>
    </nav>
</div>

<div class="container">
    <h2 style="text-align:center; margin-top: 30px;">Liên hệ</h2>
    <div class="get-order" style="margin-left: 250px; width: 600px;">
        <div class="alert alert-success" role="alert">
            <form method="POST" action="">
                <td>Tên Người dùng</td>
                <td><input class="form-control" style="width:300px" type="text" name="name" value="<?php echo $_SESSION['HoVaTen']?>" ></td>
                <td><p>Email</p></td>
                <td><input class="form-control" style="width:300px" type="text" name="email" value="<?php echo $_SESSION['Email']?>" ></td>
                <td><p>Nội dung</p></td>
                <td><textarea class="form-control" type="text" name="NoiDung" value=""></textarea></td>
                <td></br></td>
                <td><input type="submit" name="contact" value="Gửi"></td>
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
