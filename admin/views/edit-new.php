<?php
include("../conection.php");

$id = $_GET['id'];

if (isset($_POST['submit'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $sql_update = "UPDATE news SET title='$title', content='$content' WHERE id=$id";
    mysqli_query($mysqli, $sql_update);
    header('location:index.php?view=list-new');
} else {
    $sql = "SELECT * FROM news WHERE id=$id";
    $query = mysqli_query($mysqli, $sql);
    $row = mysqli_fetch_assoc($query);
}
?>
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Chỉnh Sửa Bài Viết
        </div>
        <div class="card-body">
            <form method="POST" action="">
                <div class="form-group">
                    <label for="title">Tiêu Đề</label>
                    <input class="form-control" type="text" name="title" id="title" value="<?php echo $row['title']; ?>" required>
                </div>
                <div class="form-group">
                    <label for="content">Nội Dung</label>
                    <textarea class="form-control" name="content" id="content" required><?php echo $row['content']; ?></textarea>
                </div>
                <button type="submit" name="submit" class="btn btn-primary">Cập Nhật</button>
            </form>
        </div>
    </div>
</div>