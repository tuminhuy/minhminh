<?php
include("../conection.php");

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $sql = "DELETE FROM news WHERE id = $id";
    if (mysqli_query($mysqli, $sql)) {
        echo "Bài viết đã được xóa thành công.";
    } else {
        echo "Lỗi: " . mysqli_error($mysqli);
    }
} else {
    echo "ID không hợp lệ.";
}
?>