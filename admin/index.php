<?php
include("../conection.php");
session_start();
if (!isset($_SESSION['admin'])) {
    header('location:login.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/solid.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Admintrator</title>
    <style>
        #chat-box {
            width: 100%;
            height: 300px;
            overflow-y: scroll;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .message {
            margin: 10px 0;
        }

        .user-message {
            text-align: right;
        }

        .admin-message {
            text-align: left;
        }

        #chat-input-container {
            display: flex;
            padding: 10px;
            border-top: 1px solid #ccc;
        }

        #admin-input {
            flex: 1;
            margin-right: 10px;
        }
    </style>
</head>

<body>
    <div id="warpper" class="nav-fixed">
        <nav class="topnav shadow navbar-light bg-white d-flex">
            <div class="navbar-brand"><a href="index.php">Quản Lý</a></div>
            <div class="nav-right ">
                <div class="btn-group mr-auto">
                    <button type="button" class="btn dropdown" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        <i class="plus-icon fas fa-plus-circle"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="?view=add-post">Thêm sản phẩm</a>
                    </div>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        ADMIN
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#">Tài khoản</a>
                        <a class="dropdown-item" href="logout.php">Thoát</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- end nav  -->
        <div id="page-body" class="d-flex">
            <div id="sidebar" class="bg-white">
                <ul id="sidebar-menu">
                    <li class="nav-link">
                        <a href="?view=dashboard">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Bảng thống kê
                        </a>
                        <i class="arrow fas fa-angle-right"></i>
                    </li>
                    <ul class="sub-menu">
                        <li><a href="?view=add-post">Thêm mới</a></li>
                        <li><a href="?view=list-post">Danh sách</a></li>
                    </ul>
                    </li>

                    <li class="nav-link active">
                        <a href="?view=list-product">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Sản phẩm
                        </a>
                        <i class="arrow fas fa-angle-down"></i>
                        <ul class="sub-menu">
                            <li><a href="?view=add-product">Thêm mới</a></li>
                            <li><a href="?view=list-product">Danh sách</a></li>
                            <li><a href="?view=cat-product">Danh mục</a></li>
                        </ul>
                    </li>

                    <li class="nav-link">
                        <a href="?view=list-user">
                            <div class="nav-link-icon d-inline-flex">
                                <i class="far fa-folder"></i>
                            </div>
                            Quản Lý Thành Viên
                        </a>
                        <i class="arrow fas fa-angle-right"></i>

                        <ul class="sub-menu">
                            <li><a href="?view=list-user">Danh sách</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div id="wp-content">
                <?php
                $view = isset($_GET['view']) ? $_GET['view'] : 'dashboard';
                require "views/{$view}.php";
                ?>

                <!-- Chat Box -->
                <div id="chat-box"></div>
                <div id="chat-input-container">
                    <input type="text" id="admin-input" class="form-control" placeholder="Nhập tin nhắn...">
                    <button id="send-button" class="btn btn-primary">Gửi</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="js/app.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script>
        $(document).ready(function() {
            loadMessages();

            $('#send-button').click(function() {
                sendMessage();
            });

            $('#admin-input').keypress(function(event) {
                if (event.which == 13) {
                    event.preventDefault();
                    sendMessage();
                }
            });

            function loadMessages() {
                $.ajax({
                    url: 'load_messages.php',
                    method: 'GET',
                    success: function(response) {
                        $('#chat-box').html(response);
                        $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight);
                    },
                    error: function(xhr, status, error) {
                        console.error('Error:', error);
                    }
                });
            }

            function sendMessage() {
                var adminInput = $('#admin-input').val();
                if (adminInput.trim() !== '') {
                    $.ajax({
                        url: 'send_message.php',
                        method: 'POST',
                        data: { message: adminInput, sender: 'admin' },
                        success: function(response) {
                            $('#admin-input').val('');
                            loadMessages();
                        },
                        error: function(xhr, status, error) {
                            console.error('Error:', error);
                        }
                    });
                }
            }
        });
    </script>
</body>

</html>