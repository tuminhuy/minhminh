<?php 
$sql_DanhMuc="SELECT * FROM danhmuc ORDER BY ID_DanhMuc DESC";
$query_DanhMuc=mysqli_query($mysqli,$sql_DanhMuc);

;


if (isset($_POST['submit'])) {
    $TenSanPham = $_POST['TenSanPham'];
    $GiaBan = $_POST['GiaBan'];
    $SoLuong = $_POST['SoLuong'];
    $MoTa = $_POST['MoTa'];
    $Img = $_POST['Img'];
    $ID_DanhMuc = $_POST['danhmuc'];
    $BanChay = 'ko';

    // Thêm sản phẩm và số lượng tồn kho
    $sql_add = "INSERT INTO sanpham(ID_DanhMuc, TenSanPham, MoTa, GiaBan, SoLuong, Img, BanChay) 
                VALUES('".$ID_DanhMuc."', '".$TenSanPham."', '".$MoTa."', '".$GiaBan."', '".$SoLuong."', '".$Img."', '".$BanChay."')";
    
    mysqli_query($mysqli, $sql_add);
}

?>

<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm sản phẩm
        </div>
        <div class="card-body">
            <form action="" method="POST">
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label for="name">Tên sản phẩm</label>
                            <input class="form-control" type="text" name="TenSanPham" id="name">
                        </div>
                        <div class="form-group">
                            <label for="name">Giá</label>
                            <input class="form-control" type="text" name="GiaBan" id="name">
                        </div>
                        <!-- <div class="form-group">
                            <label for="name">Số lượng</label>
                            <input class="form-control" type="text" name="SoLuong" id="name">
                        </div> -->
                        <div class="form-group">
                          <label for="name">Số lượng</label>
                            <input class="form-control" type="text" name="SoLuong" id="name">
                        </div>

                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="intro">Mô tả sản phẩm</label>
                            <textarea name="MoTa" class="form-control" id="intro" cols="30" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label>Hình ảnh</label>
                    <input class="form-control" type="file" name="Img" value="<?php echo $row['Img'];?>">
                </div>
                <div class="form-group">
                    <label for="">Danh mục</label>
                    <select class="form-control" name="danhmuc">
                        <option>Chọn danh mục</option>
                        <?php while ($row_DanhMuc=mysqli_fetch_array($query_DanhMuc)){
                        ?>
                        <option value="<?php echo $row_DanhMuc['ID_DanhMuc']?>" name="ID_DanhMuc"><?php echo $row_DanhMuc['TenDanhMuc']?></option>
                    <?php }?>
                    </select>
                </div>
               
                <input type="submit" class="btn btn-primary"  value="Thêm mới" name="submit">
            </form>
        </div>
    </div>
</div>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Your head content -->
</head>
<body>
    <div class="container">
        <!-- Form to add product -->
    </div>
</body>
</html>