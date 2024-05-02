<?php
include("conection.php");
$sql_product = "SELECT * FROM sanpham ORDER BY ID_SanPham LIMIT 8";
$query_product = mysqli_query($mysqli, $sql_product);
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset=utf-8>
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
  <?php
  include("menu.php")
    ?>
  <div>
    <ul class="nav flex-column sticky-top">
      <li class="nav-item">
     
      </li>
    </ul>

  </div>


  <!-- midle -->
  <div class="text-center">
    <img style="width: 638px; height: auto" src="image/hotdealtrongthang.png">
  </div>

  <div style="width:100%">

    <?php
    while ($row_product = mysqli_fetch_array($query_product)) {
      ?>
      <?php if (isset($_SESSION['TenDangNhap'])) {
        ?>
        <div class="container">

          <form action="sanpham/infoProduct.php?id_product=<?php echo $row_product['ID_SanPham']; ?>" method="POST">
            <div style="margin: 20px">
              <div class="card" style=" width: 25%; float: left; text-align: center  ">
                <img src="image/product/<?php echo $row_product['Img']; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                  <h2>
                    <?php echo $row_product['TenSanPham']; ?>
                  </h2>
                  <h6>Giá:
                    <?php echo $row_product['GiaBan']; ?> VND
                  </h6>
                  <input type="submit" class="btn btn-info" name='submit' value="Mua">
                </div>
              </div>
            </div>

          </form>
        </div>
      </div>
      <?php

      } else {
        ?>
      <div class="container">
        <form action="sanpham/infoProduct.php?id_product=<?php echo $row_product['ID_SanPham']; ?>" method="POST">
          <div class="card" style=" width: 25%; float: left; text-align: center  ">
            <img src="image/product/<?php echo $row_product['Img']; ?>" class="card-img-top" alt="...">
            <div class="card-body">
              <h2>
                <?php echo $row_product['TenSanPham']; ?>
              </h2>
              <h6>Giá:
                <?php echo $row_product['GiaBan']; ?> VND
              </h6>
              <input type="submit" class="btn btn-info" name='submit' value="Xem Thông Tin">
            </div>
          </div>
        </form>
      </div>
      <?php
      }
    }
    ?>
  </div>

  <hr class="hr--large">
  <div class="space" style="text-align: center; background-color: #white ">
    <img style="" src="image/thanhspace.PNG">


    <p class="site-footer__copyright-content">
      © 2024,
      <a href="http://localhost:8080/minhminh/index.php" \title="" style=" color: red"> Minh Cake </a>

  </div>



</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</html>