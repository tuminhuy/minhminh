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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  <style>
    #chat-icon {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #007bff;
      color: white;
      border-radius: 50%;
      width: 50px;
      height: 50px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      z-index: 1000;
    }

    #chat-box-container {
      position: fixed;
      bottom: 80px;
      right: 20px;
      width: 300px;
      display: none;
      border: 1px solid #ccc;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      background-color: white;
      z-index: 1000;
    }

    #chat-box {
      width: 100%;
      height: 300px;
      overflow-y: scroll;
      padding: 10px;
    }

    .message {
      margin: 10px 0;
    }

    .user-message {
      text-align: right;
    }

    .ai-message {
      text-align: left;
    }

    #chat-input-container {
      display: flex;
      padding: 10px;
      border-top: 1px solid #ccc;
    }

    #user-input {
      flex: 1;
      margin-right: 10px;
    }
 
  </style>
</head>

<body>
  <?php include("menu.php") ?>
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
    <?php while ($row_product = mysqli_fetch_array($query_product)) { ?>
      <?php if (isset($_SESSION['TenDangNhap'])) { ?>
        <div class="container">
          <form action="sanpham/infoProduct.php?id_product=<?php echo $row_product['ID_SanPham']; ?>" method="POST">
            <div style="margin: 20px">
              <div class="card" style=" width: 25%; float: left; text-align: center  ">
                <img src="image/product/<?php echo $row_product['Img']; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                  <h2><?php echo $row_product['TenSanPham']; ?></h2>
                  <h6>Giá: <?php echo number_format($row_product['GiaBan'], 0, ',', '.'); ?> Đồng</h6>
                  <input type="submit" class="btn btn-info" name='submit' value="Mua">
                </div>
              </div>
            </div>
          </form>
        </div>
      <?php } else { ?>
        <div class="container">
          <form action="sanpham/infoProduct.php?id_product=<?php echo $row_product['ID_SanPham']; ?>" method="POST">
            <div class="card" style=" width: 25%; float: left; text-align: center  ">
              <img src="image/product/<?php echo $row_product['Img']; ?>" class="card-img-top" alt="...">
              <div class="card-body">
                <h2><?php echo $row_product['TenSanPham']; ?></h2>
                <h6>Giá: <?php echo number_format($row_product['GiaBan'], 0, ',', '.'); ?> Đồng</h6>                
                 <input type="submit" class="btn btn-info" name='submit' value="Xem Thông Tin">
              </div>
            </div>
          </form>
        </div>
      <?php } ?>
    <?php } ?>
  </div>

  <hr class="hr--large">
  <div class="space" style="text-align: center; background-color: #white ">
    <img style="" src="image/thanhspace.PNG">
    <p class="site-footer__copyright-content">
      © 2024,
      <a href="http://localhost:8080/minhminh/index.php" \title="" style=" color: red"> Minh Cake </a>
  </div>   
<!-- chat box ai -->
  <div id="coze-chat-container" class="custom-chat-container"></div>
  <script src="https://sf-cdn.coze.com/obj/unpkg-va/flow-platform/chat-app-sdk/0.1.0-beta.5/libs/oversea/index.js"></script>
  <script>
    new CozeWebSDK.WebChatClient({
      config: {
        bot_id: '7420432632720474128',
      },
      componentProps: {
        title: 'Coze',
        container: '#coze-chat-container' 
      },
    });
    
  </script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>