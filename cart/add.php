<?php
include("../conection.php");
session_start();
$id= isset($_GET['id']) ? $_GET['id']: '';
$soluong= isset($_POST['soluong']) ? $_POST['soluong']: '';
$product="SELECT * FROM sanpham WHERE ID_SanPham='".$id."' LIMIT 1";
$query=mysqli_query($mysqli,$product);
$row=mysqli_fetch_assoc($query);
if($row){
	if (isset($_SESSION['cart'])) {
		if (isset($_SESSION['cart'][$id])) {
			$_SESSION['cart'][$id]['qty']+=$soluong;
		}else{
			$_SESSION['cart'][$id]['qty']=$soluong;
		}
		$_SESSION['cart'][$id]['ID_SanPham']=$row['ID_SanPham'];
		$_SESSION['cart'][$id]['TenSanPham']=$row['TenSanPham'];
		$_SESSION['cart'][$id]['Img']=$row['Img'];
		$_SESSION['cart'][$id]['GiaBan']=$row['GiaBan'];
		header('location:index.php');exit();

	}else{
		$_SESSION['cart'][$id]['ID_SanPham']=$row['ID_SanPham'];	
		$_SESSION['cart'][$id]['qty']=$soluong;
		$_SESSION['cart'][$id]['TenSanPham']=$row['TenSanPham'];
		$_SESSION['cart'][$id]['Img']=$row['Img'];
		$_SESSION['cart'][$id]['GiaBan']=$row['GiaBan'];
		header('location:index.php');exit();
	}
}else{
	header('location:../index.php');exit();	
}
// if (isset($_POST['submit'])) {
//     $id_sanpham = $_GET['id'];
//     $soluongmua = $_POST['soluong'];

//     // Lấy số lượng tồn kho hiện tại
//     $sql_get_soluong = "SELECT SoLuongTonKho FROM sanpham WHERE ID_SanPham='$id_sanpham'";
//     $result = mysqli_query($mysqli, $sql_get_soluong);
//     $row = mysqli_fetch_assoc($result);
//     $soluongtonkho = $row['SoLuongTonKho'];

//     // Kiểm tra nếu số lượng tồn kho đủ
//     if ($soluongtonkho >= $soluongmua) {
//         // Cập nhật số lượng tồn kho mới
//         $soluongtonkho -= $soluongmua;
//         $sql_update_soluong = "UPDATE sanpham SET SoLuongTonKho='$soluongtonkho' WHERE ID_SanPham='$id_sanpham'";
//         mysqli_query($mysqli, $sql_update_soluong);

//         // Thực hiện thêm vào giỏ hàng hoặc lưu lịch sử mua hàng
//         // ...

//         echo "Mua hàng thành công!";
//     } else {
//         echo "Số lượng tồn kho không đủ!";
//     }
// }
// if ($row_product['SoLuongTonKho'] <= 0) {
//     echo "<p style='color: red;'>Sản phẩm đã hết hàng!</p>";
// }

// if (isset($_POST['submit'])) {
//     $id_sanpham = $_GET['ID'];
//     $soluong_mua = $_POST['SoLuong'];

//     // Lấy số lượng hiện tại của sản phẩm từ CSDL
// 	$sql_get_soluong = "SELECT SoLuong FROM sanpham WHERE ID_SanPham = '$id_sanpham'";
//     $result = mysqli_query($mysqli, $sql_get_soluong);
//     $row = mysqli_fetch_array($result);
//     $soluong_hientai = $row['SoLuong'];

//     // Kiểm tra nếu số lượng trong kho đủ để mua
//     if ($soluong_mua <= $soluong_hientai) {
//         // Trừ số lượng tồn kho
// 		$soluong_moi = $soluong_hientai - $soluong_mua;
// 		$sql_update_soluong = "UPDATE sanpham SET SoLuong = '$soluong_moi' WHERE ID_SanPham = '$id_sanpham'";

//         mysqli_query($mysqli, $sql_update_soluong);

//         // Tiếp tục các xử lý khác như thêm sản phẩm vào giỏ hàng, xác nhận đơn hàng...
//     } else {
//         echo "Số lượng trong kho không đủ!";
//     }
// 	if ($soluong_mua <= $soluong_hientai && $soluong_mua > 0) {
// 		// Tiếp tục với việc trừ số lượng
// 	} else {
// 		echo "Số lượng mua không hợp lệ!";
// 	}
	
// }
if (isset($_POST['submit_order'])) {
    $id_sanpham = $_POST['id_sanpham'];
    $soluong_mua = $_POST['soluong']; // Số lượng mua từ form

    // Lấy số lượng hiện tại từ cơ sở dữ liệu
    $sql_get_soluong = "SELECT SoLuong FROM sanpham WHERE ID_SanPham = '$id_sanpham'";
    $result = mysqli_query($mysqli, $sql_get_soluong);
    $row = mysqli_fetch_assoc($result);
    $soluong_hientai = $row['SoLuong'];

    // Cập nhật số lượng sản phẩm
    $soluong_moi = $soluong_hientai - $soluong_mua;
    if ($soluong_moi >= 0) {
        $sql_update_soluong = "UPDATE sanpham SET SoLuong = '$soluong_moi' WHERE ID_SanPham = '$id_sanpham'";
        if (mysqli_query($mysqli, $sql_update_soluong)) {
            echo "Số lượng cập nhật thành công";
        } else {
            echo "Cập nhật thất bại: " . mysqli_error($mysqli);
        }
    } else {
        echo "Số lượng không đủ!";
    }
}

?>