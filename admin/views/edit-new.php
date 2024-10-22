<?php
include("../conection.php");

$id = $_GET['id'];

if (isset($_POST['submit'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $sql_update = "UPDATE news SET title='$title', content='$content' WHERE id=$id";
    mysqli_query($mysqli, $sql_update);
    echo "<script>window.location.href='index.php?view=list-new';</script>";
    exit(); // Thêm exit() để đảm bảo script dừng lại sau khi chuyển hướng
} else {
    $sql = "SELECT * FROM news WHERE id=$id";
    $query = mysqli_query($mysqli, $sql);
    $row = mysqli_fetch_assoc($query);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="../style.css">
    <title>Chỉnh Sửa Bài Viết</title>
    <style>
        .form-container {
            max-width: 100%; /* Sử dụng toàn bộ chiều rộng */
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group img {
            max-width: 100%;
            height: auto;
            margin-top: 10px;
        }
        .form-group textarea {
            height: 500px; /* Tăng chiều cao của textarea */
        }
    </style>
    <!-- Thêm CKEditor từ CDN -->
    <script src="https://cdn.ckeditor.com/4.25.0/standard/ckeditor.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="form-container">
            <h2>Chỉnh Sửa Bài Viết</h2>
            <form method="POST" action="">
                <div class="form-group">
                    <label for="title">Tiêu Đề</label>
                    <input class="form-control" type="text" name="title" id="title" value="<?php echo htmlspecialchars($row['title']); ?>" required>
                </div>
                <div class="form-group">
                    <label for="content">Nội Dung</label>
                    <textarea class="form-control" name="content" id="content" rows="10" required><?php echo html_entity_decode($row['content']); ?></textarea>
                </div>
                <button type="submit" name="submit" class="btn btn-primary btn-block">Cập Nhật</button>
            </form>
        </div>
    </div>
    <script>
        // Khởi tạo CKEditor
        CKEDITOR.replace('content');
    </script>
</body>
</html>