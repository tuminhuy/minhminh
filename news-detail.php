<?php
include("conection.php");

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $sql = "SELECT * FROM news WHERE id = $id";
    $result = mysqli_query($mysqli, $sql);
    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
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
                <img src="image/news/<?php echo htmlspecialchars($row['img']); ?>" class="img-fluid" alt="...">
                <p><?php echo htmlspecialchars($row['content']); ?></p>
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