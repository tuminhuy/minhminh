<?php
// Bắt đầu output buffering
ob_start();

include("../conection.php"); // Đảm bảo rằng bạn đã kết nối với cơ sở dữ liệu

$message = '';

if (isset($_POST['submit'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];
    
    // Xử lý tải lên hình ảnh
    $img = $_FILES['img']['name'];
    $target_dir = "../image/news/";
    
    // Kiểm tra và tạo thư mục nếu chưa tồn tại
    if (!is_dir($target_dir)) {
        mkdir($target_dir, 0777, true);
    }
    
    $target_file = $target_dir . basename($img);
    if (move_uploaded_file($_FILES['img']['tmp_name'], $target_file)) {
        $sql_add = "INSERT INTO news (title, content, img) VALUES ('$title', '$content', '$img')";
        if (mysqli_query($mysqli, $sql_add)) {
            $last_id = mysqli_insert_id($mysqli); // Lấy ID của bản ghi vừa được chèn
            $message = "Bài viết đã được thêm thành công. <a href='../news-detail.php?id=$last_id'>Xem bài viết</a>";
        } else {
            $message = "Lỗi: " . $sql_add . "<br>" . mysqli_error($mysqli);
        }
    } else {
        $message = "Xin lỗi, đã xảy ra lỗi khi tải lên tệp của bạn.";
    }
}

// Kết thúc output buffering và gửi đầu ra
ob_end_flush();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="../style.css">
    <title>Thêm Bài Viết</title>
    <style>
        .form-container {
            max-width: 800px;
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
    </style>
    <!-- Thêm CKEditor từ CDN -->
    <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="form-container">
            <h2>Thêm Bài Viết</h2>
            <?php if ($message != ''): ?>
                <div class="alert alert-info"><?php echo $message; ?></div>
            <?php endif; ?>
            <form method="POST" action="" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="title">Tiêu Đề</label>
                    <input class="form-control" type="text" name="title" id="title" required>
                </div>
                <div class="form-group">
                    <label for="content">Nội Dung</label>
                    <textarea class="form-control" name="content" id="content" rows="10" required></textarea>
                </div>
                <div class="form-group">
                    <label for="img">Hình Ảnh</label>
                    <input class="form-control-file" type="file" name="img" id="img" required>
                    <img id="preview" src="#" alt="Preview Image" style="display: none;">
                </div>
                <button type="submit" name="submit" class="btn btn-primary btn-block">Thêm Bài Viết</button>
            </form>
        </div>
    </div>
    <script>
        // Khởi tạo CKEditor
        CKEDITOR.replace('content');

        // Hiển thị hình ảnh xem trước
        document.getElementById('img').onchange = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('preview');
                output.src = reader.result;
                output.style.display = 'block';
            };
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
</body>
</html>