-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 23, 2024 lúc 06:58 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `minhminh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_BinhLuan` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `NoiDung` varchar(100) NOT NULL,
  `ThoiGianBinhLuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ID_BinhLuan`, `ID_ThanhVien`, `ID_SanPham`, `NoiDung`, `ThoiGianBinhLuan`) VALUES
(54, 13, 3087, 'ngon', '2024-06-26 15:19:09'),
(60, 13, 3104, 'ngon', '2024-06-26 16:40:12'),
(62, 14, 3088, 'Bánh đẹp', '2024-06-26 16:45:43'),
(63, 13, 3100, 'tuyệt\r\n', '2024-06-27 13:19:52'),
(64, 13, 3087, 'tuyệt\r\n', '2024-09-16 16:22:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `GiaBan` decimal(10,2) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID_DanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(20) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID_DanhMuc`, `TenDanhMuc`, `Mota`) VALUES
(1, 'Nước Ngọt', 'Nước giải khát có ga là một loại thức uống thường chứa nước cácbon dioxide bão hòa, chất làm ngọt, và thường có thêm hương liệu. Chất làm ngọt có thể là đường, xirô bắp giàu gluctose, chất làm ngọt thay thế. Một số nước giải khát có ga khác còn chứa caffeine, phẩm màu, chất bảo quản và các thành phần khá'),
(2, 'Bánh Kem', 'Bánh sinh nhật là một loại bánh thường có ý nghĩa quan trọng và đặc biệt nhất trong dịp kỷ niệm sinh nhật của người dùng. Đây là một loại bánh ngọt dạng tháp như bánh bông lan xốp và được phủ lên một lớp kem dày hoặc mỏng vừa để trang trí vừa để tăng thêm hương vị cho bánh'),
(3, 'Bánh Ngọt', 'Bánh ngọt là một thuật ngữ chung cho bánh có nguồn gốc từ phương Tây. Bánh một dạng thức ăn ngọt làm từ bột mì, đường và các thành phần khác, thường được nướng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `GhiChu` varchar(30) NOT NULL,
  `GiaTien` float NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `XuLy` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`ID_HoaDon`, `ID_ThanhVien`, `ThoiGianLap`, `DiaChi`, `GhiChu`, `GiaTien`, `SoDienThoai`, `XuLy`) VALUES
(83, 11, '2024-02-19 05:12:14', 'Đức Tân', '', 122500, '0361234562', 1),
(84, 11, '2024-02-19 05:38:35', 'Đức Tân', '', 100000, '0361234562', 1),
(86, 11, '2024-02-19 14:36:05', 'Đức Tân', '', 75000, '0361234562', 1),
(87, 13, '2024-04-14 18:49:13', '25', '', 50000, '0779494093', 1),
(89, 13, '2024-04-30 18:50:27', '25', '', 100000, '0779494093', 1),
(90, 13, '2024-05-01 16:47:04', '25', '', 10000, '0779494093', 1),
(91, 13, '2024-05-04 17:17:23', '25', '', 100000, '0779494093', 1),
(93, 13, '2024-05-22 17:03:08', '25', '', 10000, '0779494093', 1),
(95, 14, '2024-06-25 16:19:30', '1', '', 210000, '0123456799', 1),
(96, 14, '2024-06-25 16:31:53', '1', '', 210000, '0123456799', 1),
(97, 14, '2024-06-25 16:32:35', '1', '', 110000, '0123456799', 1),
(100, 14, '2024-06-25 16:44:29', '1', '', 100000, '0123456799', 1),
(101, 14, '2024-06-25 16:46:07', '1', '', 10000, '0123456799', 1),
(102, 14, '2024-06-25 16:48:05', '1', '', 110000, '0123456799', 1),
(103, 14, '2024-06-25 16:52:29', '1', '', 30000, '0123456799', 1),
(104, 13, '2024-06-27 14:21:03', '22', '', 20000, '0779494093', 1),
(105, 13, '2024-08-28 17:06:51', '25', '', 120000, '0779494093', 0),
(106, 13, '2024-08-28 17:17:20', '25', '', 100000, '0779494093', 1),
(107, 13, '2024-09-16 17:00:15', '25', '', 100000, '0779494093', 1),
(108, 13, '2024-09-16 17:07:09', '25', '', 200000, '0779494093', 1),
(109, 13, '2024-09-16 17:13:28', '25', '', 200000, '0779494093', 1),
(110, 13, '2024-09-16 17:14:36', '25', '', 12, '0779494093', 1),
(111, 13, '2024-09-16 17:22:07', '25', '', 200000, '0779494093', 1),
(112, 13, '2024-09-16 17:45:20', '25', '', 300000, '0779494093', 1),
(113, 13, '2024-09-16 17:52:28', '25', '', 20000, '0779494093', 1),
(114, 13, '2024-09-16 18:08:15', '25', '', 20000, '0779494093', 1),
(115, 13, '2024-09-16 18:24:22', '25', '', 10000, '0779494093', 1),
(116, 13, '2024-09-16 18:33:31', '25', '', 10000, '0779494093', 1),
(117, 13, '2024-09-16 18:46:16', '25', '', 30000, '0779494093', 1),
(118, 13, '2024-09-16 18:54:02', '25', '', 10000, '0779494093', 1),
(119, 13, '2024-09-17 17:13:38', '25', '', 20000, '0779494093', 2),
(122, 13, '2024-09-17 17:34:35', '25', '', 200000, '0779494093', 1),
(123, 12, '2024-09-21 11:51:06', '25', '', 100000, '0972341234', 1),
(125, 13, '2024-09-22 17:58:46', '25', '', 100000, '0779494093', 1),
(126, 13, '2024-09-22 18:05:32', '25', '', 100000, '0779494093', 1),
(127, 13, '2024-09-22 18:40:40', '25', '', 100000, '0779494093', 1),
(128, 13, '2024-09-22 19:23:53', '25', '', 10000, '0779494093', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `ID` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayLienHe` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`ID`, `ID_ThanhVien`, `HoVaTen`, `Email`, `NoiDung`, `NgayLienHe`) VALUES
(1, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:08:23'),
(2, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:08:23'),
(3, 14, 'test', 'tronie1@gmail.com', '', '2024-06-26 14:08:38'),
(4, 14, 'tuminhuy', 'tronie1@gmail.com', '', '2024-06-26 14:08:40'),
(8, 13, 'uy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:12:14'),
(9, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:12:16'),
(10, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:12:18'),
(11, 13, 'tuminhuy', 'tuminhuy21@gmail.com', 'hj', '2024-06-26 14:12:29'),
(12, 14, 'tuminhuye', 'tronie1@gmail.com', '', '2024-06-26 14:12:53'),
(13, 14, '1', 'tronie1@gmail.com', '', '2024-06-26 14:12:55'),
(15, 13, 'uy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:22:43'),
(16, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:22:44'),
(17, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:22:45'),
(18, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:22:45'),
(19, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:22:45'),
(20, 13, 'tuminhuy', 'tuminhuy21@gmail.com', '', '2024-06-26 14:24:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID_NCC` int(11) NOT NULL,
  `TenNCC` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `Img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID_NCC`, `TenNCC`, `Email`, `SoDienThoai`, `DiaChi`, `Img`) VALUES
(1, 'ABC', 'ABC@gmail.com', '0866158008', 'Tánh Linh', ''),
(2, 'Ngọc Anh', 'Ngocanhh@gmail.com', '0972204125', 'Ngọc Anh', ''),
(3, 'Minh Ngọc', 'Minhngoc@gmail.com', '0386763412', 'Minh Ngọc', ' ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','completed','cancelled') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `NgayDiLam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`ID_QuanLy`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDiLam`) VALUES
(1, 'admin', '1', 'tuminhuy21@gmail.com', 'Từ Minh Uy', 'TP.HCM', '0779494093', '2024-02-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NCC` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Img` varchar(20) NOT NULL,
  `BanChay` varchar(10) NOT NULL,
  `SoLuongTonKho` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NCC`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `BanChay`, `SoLuongTonKho`) VALUES
(3087, 2, 0, 'Bánh Kem 1', 'Bánh sinh nhật hoa quả đơn đẹp là một lựa chọn tuyệt vời để tạo nên một bữa tiệc sinh nhật thật sự đặc biệt và tươi mới. Bánh sinh nhật hoa quả đơn đẹp là một sự kết hợp tuyệt vời giữa vẻ đẹp tự nhiên và hương vị tươi mới của hoa quả. Với màu sắc phong phú, tạo hình sáng tạo và hương vị thơm ngon, bánh sinh nhật hoa quả đơn đẹp sẽ làm cho bữa tiệc sinh nhật của bạn trở nên đặc biệt và đáng nhớ.', 100000, 5, 'bsnhat1.jpg', 'ko', 0),
(3088, 2, 0, 'Bánh Kem 2', 'Bánh sinh nhật hoa quả đơn đẹp là một lựa chọn tuyệt vời để tạo nên một bữa tiệc sinh nhật thật sự đặc biệt và tươi mới. Bánh sinh nhật hoa quả đơn đẹp là một sự kết hợp tuyệt vời giữa vẻ đẹp tự nhiên và hương vị tươi mới của hoa quả. Với màu sắc phong phú, tạo hình sáng tạo và hương vị thơm ngon, bánh sinh nhật hoa quả đơn đẹp sẽ làm cho bữa tiệc sinh nhật của bạn trở nên đặc biệt và đáng nhớ.', 100000, 8, 'bsnhat2.jpg', 'ko', 0),
(3089, 2, 0, 'Bánh Kem 3', 'Bánh sinh nhật hoa quả đơn đẹp là một lựa chọn tuyệt vời để tạo nên một bữa tiệc sinh nhật thật sự đặc biệt và tươi mới. Bánh sinh nhật hoa quả đơn đẹp là một sự kết hợp tuyệt vời giữa vẻ đẹp tự nhiên và hương vị tươi mới của hoa quả. Với màu sắc phong phú, tạo hình sáng tạo và hương vị thơm ngon, bánh sinh nhật hoa quả đơn đẹp sẽ làm cho bữa tiệc sinh nhật của bạn trở nên đặc biệt và đáng nhớ.', 100000, 10, 'bsnhat3.jpg', 'ko', 0),
(3090, 2, 0, 'Bánh Kem 4', 'Bánh sinh nhật hoa quả đơn đẹp là một lựa chọn tuyệt vời để tạo nên một bữa tiệc sinh nhật thật sự đặc biệt và tươi mới. Bánh sinh nhật hoa quả đơn đẹp là một sự kết hợp tuyệt vời giữa vẻ đẹp tự nhiên và hương vị tươi mới của hoa quả. Với màu sắc phong phú, tạo hình sáng tạo và hương vị thơm ngon, bánh sinh nhật hoa quả đơn đẹp sẽ làm cho bữa tiệc sinh nhật của bạn trở nên đặc biệt và đáng nhớ.', 100000, 9, 'bsnhat4.jpg', 'ko', 0),
(3097, 3, 0, 'Green Tea Tart', '', 10000, 8, 'GreenTeaTart.png', 'ko', 0),
(3098, 3, 0, 'Croffle', '1', 10000, 7, 'Croffle.png', 'ko', 0),
(3099, 3, 0, 'Flan Cake', '', 10000, 6, 'FlanCake.png', 'ko', 0),
(3100, 3, 0, 'Cake Dừa', '', 10000, 10, 'CakeDua.png', 'ko', 0),
(3101, 1, 0, '7up', '', 10000, 9, '7up.jpg', 'ko', 0),
(3102, 1, 0, 'Coca', '', 10000, 10, 'coca.jpg', 'ko', 0),
(3103, 1, 0, 'Pepsi', '', 10000, 10, 'pensi.jpg', 'ko', 0),
(3104, 1, 0, 'Fanta', 'Nước ngọt', 10000, 7, 'fanta.jpg', 'ko', 0),
(3112, 2, 0, 'Panna Cotta ', '1444', 10000, 3, '', 'ko', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(11, 'hung', '123', 'lephuocnguyenhung7@g', 'Nguyên Hưng', 'Đức Tân', '0361234562', '2024-02-19'),
(12, 'nguỵet', '123', 'nguyet@gmail.com', 'nguỵet', '25', '0972341234', '2024-02-19'),
(13, 'uy', '123', 'tuminhuy21@gmail.com', 'tuminhuy', '25', '0779494093', '2024-04-14'),
(14, 'test', '1', 'tronie1@gmail.com', 'Test', '1', '0123456799', '2024-06-25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_BinhLuan`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`ID_HoaDon`,`ID_SanPham`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID_HoaDon`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `lienhe_thanhvien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`),
  ADD KEY `ID_DanhMuc` (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID_ThanhVien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID_HoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3113;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`ID_HoaDon`) REFERENCES `hoadon` (`ID_HoaDon`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD CONSTRAINT `lienhe_thanhvien` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
