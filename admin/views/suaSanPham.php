<?php
include("../../conection.php");

if (isset($_GET['id'])) {
    $ID_SanPham = $_GET['id'];
    $sql_getSanPham = "SELECT * FROM sanpham WHERE ID_SanPham = $ID_SanPham LIMIT 1";
    $query_getSanPham = mysqli_query($mysqli, $sql_getSanPham);
    $row = mysqli_fetch_array($query_getSanPham);
}

if (isset($_POST['submit'])) {
    $TenSanPham = $_POST['TenSanPham'];
    $MoTa = $_POST['MoTa'];
    $GiaBan = $_POST['GiaBan'];
    $SoLuong = $_POST['SoLuong']; // Lấy số lượng từ form
    
    // Kiểm tra dữ liệu nhập vào
    if ($TenSanPham == "") {
        echo "Vui lòng nhập đủ tên!<br />";
    }
    if ($MoTa == "") {
        echo "Vui lòng nhập đủ mô tả!<br />";
    }
    if ($GiaBan == "") {
        echo "Vui lòng nhập giá bán!<br />";
    }
    if ($SoLuong == "") {
        echo "Vui lòng nhập số lượng!<br />"; // Thêm kiểm tra số lượng
    }
    
    if ($TenSanPham != "" && $MoTa != "" && $GiaBan != "" && $SoLuong != "") {
        $sql_fix = "UPDATE sanpham SET TenSanPham = '" . $TenSanPham . "', MoTa = '" . $MoTa . "', GiaBan = '" . $GiaBan . "', SoLuong = '" . $SoLuong . "' WHERE ID_SanPham = '$_GET[id]'";
        mysqli_query($mysqli, $sql_fix);
        header("location: ../index.php?view=list-product");
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
    <link rel="stylesheet" href="../css/style.css">
    <title>Admintrator</title>
</head>

<body>
    <div id="warpper" class="nav-fixed">
        <nav class="topnav shadow navbar-light bg-white d-flex">
            <div class="navbar-brand"><a href="?">Quản Lý</a></div>
            <div class="nav-right ">
                <div class="btn-group mr-auto">
                    <button type="button" class="btn dropdown" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <i class="plus-icon fas fa-plus-circle"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="../index.php?view=add-post">Thêm sản phẩm</a>
                    </div>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Chúc Thu
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#">Tài khoản</a>
                        <a class="dropdown-item" href="#">Thoát</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- end nav  -->
        <div id="page-body" class="d-flex">
            <div id="sidebar" class="bg-white">
                <ul id="sidebar-menu">
                    <li class="nav-link">
                        <a href="../index.php?view=dashboard">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Bảng thống kê
                        </a>
                        <i class="arrow fas fa-angle-right"></i>
                    </li>
                    <li class="nav-link">
                            <ul class="sub-menu">
                            <li><a href="../index.php?view=add-post">Thêm mới</a></li>
                            <li><a href="../index.php?view=list-post">Danh sách</a></li>
                        </ul>
                    </li>

                    <li class="nav-link active">
                        <a href="../index.php?view=list-product">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Sản phẩm
                        </a>
                        <i class="arrow fas fa-angle-down"></i>
                        <ul class="sub-menu">
                            <li><a href="../index.php?view=add-product">Thêm mới</a></li>
                            <li><a href="../index.php?view=list-product">Danh sách</a></li>
                            <li><a href="../index.php?view=cat-product">Danh mục</a></li>
                        </ul>
                    </li>
                    <li class="nav-link">
                        <a href="../index.php?view=list-order">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Thống kê doanh thu
                        </a>
                        <i class="arrow fas fa-angle-right"></i>
                        <ul class="sub-menu">
                            <li><a href="../index.php?view=list-order">Đơn hàng</a></li>
                        </ul>
                    </li>
                    <li class="nav-link">
                        <a href="../index.php?view=list-user">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                           Quản lý thành viên
                        </a>
                        <i class="arrow fas fa-angle-right"></i>

                        <ul class="sub-menu">
                            <li><a href="../index.php?view=add-user">Thêm mới</a></li>
                            <li><a href="../index.php?view=list-user">Danh sách</a></li>
                        </ul>
                    </li>
                     </ul>
            </div>
            <div id="wp-content">
                <div id="content" class="container-fluid">
                    <div class="card">
                        <div class="card-header font-weight-bold">
                            Sửa Sản phẩm
                        </div>
                        <div class="card-body">
                            <form action="" method="POST">
                                <div class="form-group">
                                    <label for="name">Tên Sản Phẩm</label>
                                    <input class="form-control" type="text" name="TenSanPham" id="name"
                                        value="<?php echo $row['TenSanPham'] ?>">
                                </div>
                                <div class="form-group">
                                    <label for="name">Mô tả</label>
                                    <input class="form-control" type="text" name="MoTa" id="name"
                                        value="<?php echo $row['MoTa'] ?>">
                                </div>
                                <div class="form-group">
                                 <label for="name">Số lượng</label>
                                <input class="form-control" type="text" name="SoLuong" id="name" value="<?php echo $row['SoLuong'] ?>">
                                </div>
                                <div class="form-group">
                                    <label for="name">Giá Bán</label>
                                    <input class="form-control" type="text" name="GiaBan" id="name"
                                        value="<?php echo $row['GiaBan'] ?>">
                                </div>
                                <div class="form-group">
                                    <label for="formFile">Hình ảnh</label>
                                    <img style="width: 276px;height: 247px;"
                                        src="../../image/product/<?php echo $row['Img']; ?>">
                                    <input class="form-control" type="file" name="image"
                                        value="<?php echo $row['Img']; ?>">
                                </div>

                                <input type="submit" class="btn btn-primary" name="submit" value="Sửa">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../js/app.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>