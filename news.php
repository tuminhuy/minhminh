<?php
include("conection.php");
$sql_news = "SELECT * FROM news ORDER BY id DESC";
$query_news = mysqli_query($mysqli, $sql_news);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Tin Tức</title>
</head>
<body>
    <?php include("menu.php") ?>
    <div class="container">
        <h1 class="my-4">Tin Tức</h1>
        <div class="row">
            <?php while ($row_news = mysqli_fetch_array($query_news)) { ?>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img src="image/news/<?php echo htmlspecialchars($row_news['img']); ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo htmlspecialchars($row_news['title']); ?></h5>
                            <p class="card-text"><?php echo htmlspecialchars(substr($row_news['content'], 0, 100)); ?>...</p>
                            <a href="news-detail.php?id=<?php echo htmlspecialchars($row_news['id']); ?>" class="btn btn-primary">Đọc thêm</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>