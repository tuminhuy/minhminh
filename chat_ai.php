<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $message = strtolower(trim($_POST['message']));

    // Các câu trả lời được định trước
    $responses = [
        'xin chào' => 'Chào mừng bạn ghé thăm website Minh Cake. Chúng tôi có thể giúp gì được cho bạn.',
        'xin hỏi bánh này giá nhiêu' => 'Giá của bánh này là 100,000 VND.'
    ];

    // Tìm câu trả lời phù hợp
    $response = 'Xin lỗi, tôi không hiểu câu hỏi của bạn.';
    foreach ($responses as $key => $value) {
        if (strpos($message, $key) !== false) {
            $response = $value;
            break;
        }
    }

    echo $response;
} else {
    echo 'Invalid request method.';
}
?>