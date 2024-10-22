<?php
include("conection.php");

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $sql = "SELECT * FROM news WHERE id = $id";
    $result = mysqli_query($mysqli, $sql);
    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $images = json_decode($row['img'], true); // Giả sử cột 'images' lưu trữ JSON của các đường dẫn hình ảnh
        ?>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
            <link rel="stylesheet" href="style.css">
            <title><?php echo htmlspecialchars($row['title']); ?></title>
        </head>
        <body>
            <?php include("menu.php") ?>
            <div class="container">
                <h1 class="my-4"><?php echo htmlspecialchars($row['title']); ?></h1>
                <?php if (!empty($images)) { ?>
                    <div class="row">
                        <?php foreach ($images as $image) { ?>
                            <div class="col-md-4">
                                <img src="image/news/<?php echo htmlspecialchars($image); ?>" class="img-fluid mb-4" alt="...">
                            </div>
                        <?php } ?>
                    </div>
                <?php } ?>
                <div class="content">
                    <?php echo html_entity_decode($row['content']); // Giải mã HTML entities ?>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
        </body>
        </html>
        <?php
    } else {
        echo "Bài viết không tồn tại.";
    }
} else {
    echo "ID không hợp lệ.";
}
?>