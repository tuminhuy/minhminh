<?php
include("../conection.php");

// Truy vấn danh sách bài viết tin tức
$sql = "SELECT * FROM news ORDER BY created_at DESC";
$query = mysqli_query($mysqli, $sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Bài Viết</title>
    <!-- <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"> -->
</head>
<body>
<div class="container">
        <h1 class="my-4">Danh Sách Bài Viết</h1>
        <a href="?view=add-new" class="btn btn-success mb-4">Thêm Bài Viết Mới</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tiêu Đề</th>
                    <th>Nội Dung</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = mysqli_fetch_assoc($query)) { ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['id']); ?></td>
                        <td><?php echo htmlspecialchars($row['title']); ?></td>
                        <td><?php echo htmlspecialchars(substr(strip_tags(html_entity_decode($row['content'])), 0, 100)); ?>...</td>
                        <td>
                            <a href="?view=edit-new&id=<?php echo htmlspecialchars($row['id']); ?>" class="btn btn-primary btn-sm">Sửa</a>
                            <a href="?view=delete-new&id=<?php echo htmlspecialchars($row['id']); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn xóa bài viết này?');">Xóa</a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>