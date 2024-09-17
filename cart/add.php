<?php
include("../conection.php");
session_start();
$id = isset($_GET['id']) ? $_GET['id'] : '';
$soluong = isset($_POST['soluong']) ? $_POST['soluong'] : '';
$product = "SELECT * FROM sanpham WHERE ID_SanPham='" . $id . "' LIMIT 1";
$query = mysqli_query($mysqli, $product);
$row = mysqli_fetch_assoc($query);

if ($row) {
    // Lấy số lượng hiện tại từ cơ sở dữ liệu
    $sql_get_soluong = "SELECT SoLuong FROM sanpham WHERE ID_SanPham = '$id'";
    $result = mysqli_query($mysqli, $sql_get_soluong);
    $row_soluong = mysqli_fetch_assoc($result);
    $soluong_hientai = $row_soluong['SoLuong'];

    // Cập nhật số lượng sản phẩm
    $soluong_moi = $soluong_hientai - $soluong;
    if ($soluong_moi >= 0) {
        $sql_update_soluong = "UPDATE sanpham SET SoLuong = '$soluong_moi' WHERE ID_SanPham = '$id'";
        if (mysqli_query($mysqli, $sql_update_soluong)) {
            if (isset($_SESSION['cart'])) {
                if (isset($_SESSION['cart'][$id])) {
                    $_SESSION['cart'][$id]['qty'] += $soluong;
                } else {
                    $_SESSION['cart'][$id]['qty'] = $soluong;
                }
                $_SESSION['cart'][$id]['ID_SanPham'] = $row['ID_SanPham'];
                $_SESSION['cart'][$id]['TenSanPham'] = $row['TenSanPham'];
                $_SESSION['cart'][$id]['Img'] = $row['Img'];
                $_SESSION['cart'][$id]['GiaBan'] = $row['GiaBan'];
                header('location:index.php');
                exit();
            } else {
                $_SESSION['cart'][$id]['ID_SanPham'] = $row['ID_SanPham'];
                $_SESSION['cart'][$id]['qty'] = $soluong;
                $_SESSION['cart'][$id]['TenSanPham'] = $row['TenSanPham'];
                $_SESSION['cart'][$id]['Img'] = $row['Img'];
                $_SESSION['cart'][$id]['GiaBan'] = $row['GiaBan'];
                header('location:index.php');
                exit();
            }
        } else {
            echo "Cập nhật thất bại: " . mysqli_error($mysqli);
        }
    } else {
        echo "Số lượng không đủ!";
    }
} else {
    header('location:../index.php');
    exit();
}
?>