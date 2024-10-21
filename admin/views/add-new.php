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
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm Bài Viết
        </div>
        <div class="card-body">
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
                    <textarea class="form-control" name="content" id="content" rows="5" required></textarea>
                </div>
                <div class="form-group">
                    <label for="img">Hình Ảnh</label>
                    <input class="form-control-file" type="file" name="img" id="img" required>
                </div>
                <button type="submit" name="submit" class="btn btn-primary">Thêm Bài Viết</button>
            </form>
        </div>
    </div>
</div>