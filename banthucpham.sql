-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2024 lúc 03:09 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banthucpham`
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
(1, 11, 2006, 'Ngon lắm!', '2024-02-19 06:03:25'),
(2, 12, 1002, 'Rau  tươi lắm nha mn!', '2024-02-19 06:05:20'),
(3, 11, 3001, 'Rẻ mà ngon nữa. Sẽ ủng hộ tiếp!', '2024-02-19 06:05:20'),
(4, 11, 3001, 'Tươi quá!', '2024-02-19 06:05:20'),
(32, 11, 2006, 'Sẽ mua thêm', '2024-02-19 06:05:20'),
(33, 12, 1002, 'Nên mua nha mn ơi!', '2024-02-19 06:12:35'),
(34, 12, 1001, 'Sp tươi lắm!', '2024-02-19 06:12:35'),
(35, 11, 1001, 'Sẽ ủng hộ', '2024-03-12 14:37:55'),
(36, 12, 1003, 'Sp tươi!', '2024-02-19 06:12:35'),
(37, 11, 1003, 'Giá rẻ', '2024-03-12 14:39:38'),
(38, 12, 2001, 'Nên mua nha mn', '2024-02-19 06:12:35'),
(39, 11, 2001, 'Sẽ ủng hộ tiếp', '2024-03-12 14:40:24'),
(40, 12, 2002, 'Quá rẻ', '2024-02-19 06:12:35'),
(41, 11, 2002, 'Đóng gói đẹp', '2024-03-12 14:41:53'),
(42, 12, 2003, 'Hàng chất lượng', '2024-02-19 06:12:35'),
(43, 11, 2003, 'Ngọt, rẻ, nên mua nha mn', '2024-03-12 14:42:45'),
(44, 12, 2005, 'Củ to, rẻ', '2024-02-19 06:12:35'),
(45, 11, 2005, 'Quá rẻ', '2024-03-12 14:43:44'),
(46, 11, 3005, 'Sẽ ủng hộ tiếp!', '2024-02-19 06:05:20'),
(47, 11, 3005, 'Rẻ, tươi lăm', '2024-03-12 14:45:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `GiaBan` float NOT NULL,
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
(1, 'Rau', 'Rau là cung cấp nhiều dưỡng chất quan trọng và cần thiết, phổ biến nhất là kali. Các nguồn thực vật có hàm lượng kali cao gồm có khoai tây, khoai lang, củ cải đường, rau bina, cà chua và các sản phẩm từ cà chua, các loại đậu như đậu trắng, đậu lăng, đậu lima, đậu tây, đậu nành.\r\nRau cũng là nguồn bổ sung chất xơ dồi dào. Ngoài ra, rau trái còn cung cấp các dưỡng chất và vitamin quan trọng khác cho cơ thể như folate (hay còn gọi là axit folic), vitamin A và vitamin C.'),
(2, 'Củ', 'Giúp làm giảm hàm lượng cholesterol xấu trong máu\r\nTốt cho hệ xương khớp\r\nBảo vệ và phòng bệnh tim mạch\r\nGiúp kiểm soát cân nặng\r\nPhòng chống bệnh ung thư'),
(3, 'Quả', 'Ăn nhiều trái cây và rau quả có thể giúp bạn duy trì cân nặng hợp lý vì chúng có ít calo và chất béo tự nhiên (miễn là chúng không được nướng hoặc chiên trong nhiều bơ hoặc dầu), và bằng chứng cho thấy bạn có thể làm giảm nguy cơ mắc bệnh tim, đột quỵ, một số loại ung thư và béo phì.\r\nCác loại và màu sắc khác nhau của trái cây và rau quả có chứa sự kết hợp khác nhau của các chất dinh dưỡng quan trọng, như chất xơ và vitamin, những thứ mà cơ thể chúng ta cần để duy trì sức khỏe. Vì vậy, để tận dụng tối đa lợi ích dinh dưỡng trong , hãy cố gắng ăn nhiều loại trái cây và rau quả thuộc từng nhóm màu - xanh lá cây, vàng, đỏ, tím, cam và trắng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `ID_HoaDon` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
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
(85, 12, '2024-02-19 06:09:09', 'Măng Tố', '', 112000, '0972341234', 1),
(86, 11, '2024-02-19 14:36:05', 'Đức Tân', '', 75000, '0361234562', 0);

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
(1, 'Chi Nhánh Tánh Linh', 'Tanhlinh@gmail.com', '0866158008', 'Tánh Linh', 'chinhanhlamdong.png'),
(2, 'Chi Nhánh Đức Linh', 'Duclinh@gmail.com', '0972204125', 'Đức Linh', 'chinhanhdaklak.png'),
(3, 'Chi nhánh Hàm Tân', 'Hamtan@gmail.com', '0386763412', 'Hàm Tân', 'nhacungcapdaknong.pn');

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
(1, 'admin', '123', 'nganbn21v7x052@dttx.', 'Trương Thị Kim Ngân', 'Bình Thuận', '0367893962', '2023-10-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NhaCungCap` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` float NOT NULL,
  `Img` varchar(20) NOT NULL,
  `BanChay` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `BanChay`) VALUES
(1001, 1, 1, 'Sú Tím Đà Lạt', 'Bắp cải tím xuất xứ từ Địa Trung Hải, hiện nay được trồng rộng rãi khắp thế giới, thích hợp với khí hậu ôn đới. Tại Việt Nam, bắp cải tím được trồng nhiều ở Đà Lạt. \r\nBắp cải tím cũng chứa nhiều chất sắt anthocyanin (tạo ra màu tím), một chất chống oxy hóa giúp bảo vệ các tế bào não, ngăn ngừa bệnh mất trí nhớ. \r\nBắp cải tím có chứa một số chất có thể làm giảm nguy cơ ung thư vú, chống lại sự viêm nhiễm, giúp giảm nguy cơ bệnh tim, bệnh thấp khớp, tiểu đường, đồng thời chứa chất lactic và axit giúp tẩy ruột. \r\nĐồng thời bắp cải tím có chứa nhiều vitamin C và vitamin A rất tốt cho mắt và da. Và vì bắp cải tím chứa ít calories nên thích hợp cho những người ăn kiêng.', 50000, 10, 'bapcaitim.png', 'co'),
(1002, 1, 1, 'Hoa bí', 'Cũng như nhiều loại thực phẩm rất được ưa chuộng trong dân gian, bông bí không chỉ khiến món ăn của bạn thêm phần mới lạ, bắt mắt, đậm hương vị mà còn được đánh giá là chứa đựng nhiều giá trị về y học. Ăn bông bí là một trong những cách giúp ta tăng cường, bảo vệ sức khỏe tốt hơn.\r\nGiá trị dinh dưỡng:\r\n- Chống oxy hóa, chống lão hóa.\r\n- Ngăn ngừa sự hình thành và phát triển của các gốc tự do gây hại, nhờ đó mà giúp phòng chống ung thư hiệu quả.\r\n- Nâng cao sức khỏe hệ miễn dịch, giúp cơ thể khỏe mạnh, ít bệnh tật.\r\n- Ngừa loãng xương.\r\n- Hỗ trợ phòng các bệnh lý có liên quan đến tim mạch và huyết áp.\r\n- Tốt cho thị lực của người cao tuổi, ngừa chứng bệnh thoái hóa điểm vàng.\r\n- Rất tốt cho phụ nữ đang có thai và mang đến nhiều lợi ích cho sự phát triển của em bé trong bụng.', 75000, 10, 'hoa.jpg', 'co'),
(1003, 1, 2, 'Cải Bẹ Đà Lạt', 'Cải bẹ xanh là loại thực phẩm quen thuộc với gia đình Việt, hay còn gọi là cải cay.\r\nThành phần dinh dưỡng trong cải bẹ xanh gồm có: vitamin A, B, C, K, axit nicotic, caroten, abumin…nên được các chuyên gia dinh dưỡng khuyên dùng vì có nhiều lợi ích đối với sức khỏe cũng như có tác dụng phòng chống bệnh tật.\r\nCải bẹ xanh có vị cay, tính ôn, có tác dụng giải cảm hàn, thông đàm, lợi khí... Riêng hạt cải bẹ xanh, có vị cay, tính nhiệt, không độc, trị được các chứng phong hàn, ho đờm, hen, đau họng, tê dại, mụn nhọt..\r\nLá và thân cây có vị cay, đăng đắng thường dùng phổ biến nhất là nấu canh, hay để muối dưa (dưa cải).\r\nCải bẹ xanh được trồng theo phương thức hữu cơ không sử dụng thuốc trừ sâu & thuốc diệt cỏ, không sử dụng phân bón hóa học, không sử dụng thuốc kích thích tăng trưởng, không trồng trên đất nhiễm hóa chất nông nghiệp, không sử dụng giống biến đổi gen, không sử dụng chất bảo quản.', 35500, 10, 'caibe.png', 'co'),
(2001, 1, 1, 'Cải  thìa', 'Cải thìa hay còn gọi là cải bẹ trắng không chỉ là loại rau quen thuộc để chế biến nên những món ăn ngon mà còn chứa nhiều thành phần dinh dưỡng có lợi cho sức khỏe.\r\nCải thìa tốt cho phụ nữ mang thai, có tác dụng phòng ngừa khuyết tật cho thai nhi, giúp xương chắc khỏe, có khả năng kích thích nhịp tim hoạt động tốt và hạ huyết áp. Cải thìa làm chậm quá trình lão hóa và giảm đáng kể việc hình thành các gốc tự do, có tác dụng phòng ngừa bệnh đục nhân mắt và thoái hóa hoàng điểm ở mắt đồng thời có tác dụng ngăn ngừa ung thư bằng cách loại bỏ những thành phần có hại trong cơ thể.\r\nTheo Đông y thì cải thìa thường được dùng để trị các bệnh như lợi tiểu, giảm sưng phù. Hạt cải dùng làm thuốc trị tiêu đờm, thông kinh mạch, kháng viêm, ho hoặc ép thành dầu. Đặc biệt cải thìa nấu phổi heo là món dùng cho người lao lực cần bồi bổ phổi, làm sạch phổi. Đông y dùng lá và hạt cải thìa để trị bệnh. Lá cải thìa có thể chữa đau dạ dày, bệnh cam răng. Hạt cải thìa có vị cay, tính ấm, không độc có tác dụng trị đau răng, trị ho, tiêu thũng, tiêu đờm, thông kinh mạch.\r\nCải thìa là một loại rau ngon được dùng để xào, hấp và nấu canh.', 50000, 10, 'caithia.png', 'co'),
(2002, 2, 2, 'Củ dền', 'Củ dền là một loại củ cũng rất quen thuộc trong nhiều món ăn của người Việt. Ngoài vị ngọt rất đặc trưng, củ dền còn là một loại củ rất bổ dưỡng.\r\nCủ dền là nguồn thực phẩm cung cấp axit folic dồi dào, giúp tái tạo tế bào mới cho cơ thể. Củ dền cũng là một nguồn cung cấp đáng kể các , iốt, mangan, natri hữu cơ, kali, chất xơ và carbohydrates ở dạng đường tiêu hóa tự nhiên. Hàm lượng chất sắt trong củ dền, mặc dù không cao, nhưng có chất lượng cao nhất và tốt nhất và được xem là một loại thực phẩm có tính bổ máu. Ngoài ra, củ dền còn giúp ngăn ngừa ung thư, ngăn ngừa bệnh tim mạch, , làm sạch gan.\r\nCủ dền có thể được chế biến bằng cách luộc, nướng, nấu canh, nấu súp, làm  sau khi nấu và thêm dầu và , nấu chè hoặc cũng có thể ăn sống, ép nước.', 18000, 10, 'cuden.jpg', 'co'),
(2003, 2, 1, 'Su hào', 'Su hào là thực phẩm không xa lạ đối với bất cứ ai. Loại củ này có thể chế biến thành rất nhiều món ăn hấp dẫn. Đồng thời đây cũng là thực phẩm có chứa nhiều dưỡng chất quan trọng có nhiều lợi ích đối với sức khỏe.\r\nSu hào được canh tác theo phương thức hữu cơ tại trang trại liên kết của Organica tại Đơn Dương, Lâm Đồng. Su hào được trồng hoàn toàn không dùng phân bón hóa học, thuốc trừ sâu hóa học, thuốc diệt cỏ và các hóa chất kích thích tăng trưởng.\r\nPhần củ su hào được dùng luộc, xào, hầm xương, hoặc củ non thái nhỏ làm nộm, hoặc phơi tái làm dưa món, muối dưa. Trong Đông y, su hào có tính mát, vị ngọt hơi đắng, có tác dụng hóa đờm, giải khát, giải độc.', 20000, 10, 'suhao.jpg', 'co'),
(2005, 2, 1, 'Nghệ', 'Chứng nhận/Canh tác: Canh tác theo hướng hữu cơ. Trang trại không sử dụng phân bón hóa học, không sử dụng thuốc diệt cỏ, không dùng bất cứ loại hóa chất bảo vệ thực vật nào. Chỉ sử dụng các loại phân gà đã có chứng nhận hữu cơ OMRILIST, sử dụng thêm các loại phân chuồng ủ hoai cùng thực vậy, các loại phân trùn quế tùy theo mùa. Tùy vào từng mùa trong năm, vườn có sử dụng thêm các chế phẩm sinh học được cho phép theo tiêu chuẩn canh tác hữu cơ USDA (Mỹ) phòng ngừa sâu bệnh và dịch hại. Canh tác trong vườn được ghi chép nhật ký để luân canh, xen canh, cải tạo đất.', 37000, 10, 'nghe.png', 'co'),
(2006, 2, 2, 'Tỏi', 'Theo các chuyên gia về dinh dưỡng, tỏi có chứa protein, carbohydrates, calo và một số dưỡng chất quan trọng khác như vitamin B, sắt, magie, canxi, kali, mangan, photpho,\r\nBên cạnh đó, hợp chất hữu cơ sulfur và glycosides được cho là thành phần công hiệu chính của tỏi. Loại thực phẩm này cũng có hàm lượng cao germanium và selen khá cao, trong đó lượng germanium trong tỏi được ước tính cao hơn so với nhân sâm hay trà xanh. \r\nCông dụng của tỏi đối với sức khỏe:\r\nPhòng ngừa và chữa trị cảm cúm\r\nGiúp giảm nguy cơ và hỗ trợ điều trị ung thư\r\nRất tốt cho xương khớp\r\nPhòng bệnh tim mạch\r\nRất tốt cho thai phụ: \r\nLọc độc tố trong máu\r\nNgăn ngừa bệnh Alzheimer\r\nLàm đẹp daVới sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.\r\nTheo các chuyên gia về dinh dưỡng, tỏi có chứa protein, carbohydrates, calo và một số dưỡng chất quan trọng khác như vitamin B, sắt, magie, canxi, kali, mangan, photpho,\r\nBên cạnh đó, hợp chất hữu cơ sulfur và glycosides được cho là thành phần công hiệu chính của tỏi. Loại thực phẩm này cũng có hàm lượng cao germanium và selen khá cao, trong đó lượng germanium trong tỏi được ước tính cao hơn so với nhân sâm hay trà xanh. \r\nCông dụng của tỏi đối với sức khỏe:\r\nPhòng ngừa và chữa trị cảm cúm\r\nGiúp giảm nguy cơ và hỗ trợ điều trị ung thư\r\nRất tốt cho xương khớp\r\nPhòng bệnh tim mạch\r\nRất tốt cho thai phụ: \r\nLọc độc tố trong máu\r\nNgăn ngừa bệnh Alzheimer\r\nLàm đẹp da', 100000, 10, 'toi.png', 'co'),
(3001, 3, 3, 'Cà chua', 'Cà chua có kích thước và màu sắc hấp dẫn, hương vị ngon ngọt và hàm lượng dinh dưỡng phong phú. Cà chua mang một số lợi ích tuyệt vời đối với sức khỏe như: tăng cường sức khỏe tim mạch, ngăn ngừa ung thư, tốt cho chăm sóc tóc và da.\r\nGợi ý sử dụng: Dùng trực tiếp, pha nước hay chế biến món ăn như nấu canh, chiên, xào, làm sốt.', 34000, 10, 'cc.jpg', 'co'),
(3005, 3, 1, 'Ớt Parlemo', 'Ớt Parlemo hay còn gọi là ớt ngọt có nguồn gốc từ vùng nhiệt đới châu Mỹ, nhưng ngày nay được trồng ở khắp nơi trên thế giới. Ớt Parlemo có màu đỏ, xanh, vàng và cam. Loại quả này chứa nhiều chất dinh dưỡng như vitamin C, vitamin A, chất xơ, chất chống ôxy hóa…ớt chuông là thực phẩm được ưa chuộng vì ích lợi cho sức khỏe.\r\nỚt chuông giúp tăng cường trao đổi chất, ngăn ngừa tình trạng rối loạn tiêu hóa nhờ tiết dịch tiêu hóa, có chứa chất chống oxy hóa giúp chống lại các gốc tự do trong cơ thể và giúp điều trị các bệnh tim, viêm xương khớp, hen phế quản, đục thủy tinh thể, ngừa ung thư, giảm đau, tăng cường miễn dịch.\r\nỚt Parlemo thường được dùng trong các món salad, các món xào như sườn xào chua ngọt với ớt, thịt bò xào ớt, tim heo xào ớt…', 85000, 10, 'ot.png', 'co'),
(3009, 3, 1, 'Đậu cove', 'Đậu que, đậu ve hay còn gọi là đậu cô ve. \r\nMột chén nhỏ đậu que tươi khoảng 100g chứa 31 calo, 7g carbohydrate, 3g chất xơ, 3g đường và 2g protein nhưng không có chất béo. \r\nĐậu que chứa nhiều vitamin A, C và K cũng như giàu folate, thiamin, riboflavin, sắt, magiê và kali. \r\nĐậu que có nhiều lợi ích cho sức khỏe như: kiểm soát lượng đường, tăng cường hệ tiêu hóa, hệ tim mạch khỏe mạnh, giúp cơ thể luôn tươi tắn, nâng cao hệ miễn dịch, giúp quá trình trao đổi chất diễn ra hiệu quả, làm tan sỏi thận… \r\nĐậu que thường được chế biến thành món luộc hoặc xào chung với thịt bò, thịt heo, lòng gà ăn rất ngon mà bổ dưỡng.', 350000, 10, 'dau.jpg', 'co'),
(3014, 3, 1, 'Bí đao', 'Bí xanh (bí đao) có vị ngọt mát thường được nấu chung với tôm khô tạo thành món canh ngon quen thuộc vào mùa hè. Trong mình bí xanh có chứa rất nhiều các chất như đường, protit, vitamin E, PP, B1, B2, C đồng thời còn có sắt bổ máu, canxi bổ xương,… Sử dụng bí xanh như một loại mặt nạ sẽ cực kỳ hữu dụng trong việc nâng tông độ sáng của làn da, tăng cường độ ẩm giúp da mềm mại.\r\nBí đao chứa nhiều nước. Nghiên cứu cho thấy, trong 100g bí đao có 0,3g protein, 1,5g glucoza, ngoài ra còn có các nguyên tố vi lượng như canxi, phốt pho, magiê, sắt và các loại vitamin B1, B2 và vitamin C. Bí đao có nhiều thành phần nhưng lại cho năng lượng calo thấp.\r\nNhững công dụng nổi bật của bí đao như giảm cân, chống béo phì...', 40000, 10, 'bi.png', 'co'),
(3016, 1, 3, 'Nấm bào ngư xám', 'Nấm bào ngư là nguồn thực phẩm cao cấp được dùng để nấu nhiều món ăn khác nhau như xào, hầm với nhiều thực phẩm khác làm tăng hương vị và tăng chất bổ dưỡng. \r\nCác món ăn nấu với nấm bào ngư vừa là thức ăn ngon vừa là bài thuốc phòng trị nhiều bệnh tật. \r\nNgoài giá trị dinh dưỡng, nấm tươi còn có nhiều đặc tính của biệt dược, có khả năng phòng và chữa các bệnh như làm hạ huyết áp, chống béo phì, chữa bệnh đường ruột, tẩy máu xấu…; và đặc biệt là đã có một số công trình nghiên cứu còn cho rằng nấm bào ngư còn có khả năng chống bệnh ung thư.', 85000, 100, 'nam.png', 'co'),
(3017, 1, 3, 'Mồng Tơi Baby', 'Rau mồng tơi baby hữu cơ là loại rau rất cần thiết trong các bữa ăn hằng ngày. Công dụng rau mồng tơi hữu cơ có chứa nhiều chất xơ, khoáng chất, vitamin cần thiết cho cơ thể. Với thân nhỏ, lá mềm, xanh mượt, rau mồng tơi baby luôn được rất nhiều bà nội trợ yêu thích.\r\nLợi ích sức khỏe của rau mồng tơi baby:\r\nTốt cho dạ dày.\r\nHỗ trợ cho phụ nữ sau sinh.\r\nGiảm lượng cholesterol trong máu.\r\nTốt cho da, thanh nhiệt cơ thể.', 55000, 100, 'mongtoi.png', 'ko'),
(3018, 1, 3, 'Rau Lang', 'Rau khoai lang, loại rau rẻ tiền nhưng giàu dưỡng chất này không chỉ giúp cho bữa ăn trở nên ngon miệng mà còn mang lại nhiều công dụng tuyệt vời cho sức khỏe như chống đột quỵ, tiểu đường, chữa viêm khớp, phòng ngừa táo bón.\r\nRau khoai lang hay còn gọi là rau lang, là loại rau được sử dụng nhiều vào mùa hè. Thông thường, người dân trồng khoai lang để thu hoạch củ và trước đây nhiều người vẫn nghĩ rau khoai lang là một loại rau xanh rẻ tiền, không có giá trị dinh dưỡng. Tuy nhiên, thời gian gần đây loại rau này ngày càng được nhiều người ưa chuộng nhờ có nhiều công dụng tốt cho sức khỏe.\r\nTrong y học cổ truyền, rau khoai lang được coi là một vị thuốc với nhiều tên gọi khác nhau như cam thử, phiên chử, là một loại rau có tính bình, vị ngọt, ích khí hư… Rau khoai lang không độc, tư thận âm, chữa tỳ hư, tác dụng bồi bổ sức khỏe, thanh can, lợi mật, giúp tăng cường thị lực, chữa bệnh vàng da, phụ nữ kinh nguyệt không đều, nam giới di tinh…\r\nCác nghiên cứu y học hiện đại cũng đã chỉ ra rằng, dinh dưỡng trong rau khoai lang còn nhiều hơn trong củ khoai lang rất nhiều. Điển hình như vitamin B6 trong lá khoai lang cao gấp 3 lần trong củ khoai, vitamin C cao gấp 5 lần, viboflavin cao gấp 10 lần.\r\nĐặc biệt, so với một số loại rau khác, lượng axít axalic trong rau khoai lang ít hơn rất nhiều vì thế nguy cơ gây bệnh sỏi thận của rau khoai lang cũng ít hơn.\r\nGiúp giảm cân:\r\nRau khoai lang có nhiều chất xơ nên khi ăn sẽ tạo cảm giác no lâu. Những người trong thời gian ăn kiêng giảm cân có thể ăn rau khoai lang luộc cùng với cơm, chá sẽ có tác dụng giảm cân hiệu quả.', 49000, 100, 'raulang.jpg', 'ko'),
(3019, 3, 2, 'Thơm trái (dứa)', 'Trái thơm hay còn được biết đến với tên gọi là quả dứa. Đây là một loại quả nhiệt đới phổ biến và được rất nhiều người yêu thích. Bởi nó có hương rất thơm, vị ngọt, mùi vị độc đáo, tốt cho sức khỏe.\r\nGiá trị dinh dưỡng:\r\n- Hỗ trợ điều trị bệnh viêm khớp.\r\n- Có tính năng miễn nhiễm và làm lành vết thương.\r\n- Tốt cho sức khỏe đường ruột.\r\n- Phòng ngừa cảm lạnh, ho.\r\n- Tốt cho xương, cải thiện sức khỏe răng miệng.\r\n- Trái thơm giúp cải thiện tuần hoàn máu.', 39000, 100, 'thom.png', 'ko'),
(3020, 3, 2, 'Đu Đủ Ruột Vàng', 'Đu đủ chín chứa khoảng 90% nước, 13% đường, không có tinh bột, có nhiều carotenoit acid hữu cơ, vitamin: A, B, C, 0,9% chất béo, xenluloz (0,5%), canxi, photpho, magiê, sắt, thiamin, riboflavin.\r\nMột kết quả nghiên cứu khác cho thấy, trong 100g đu đủ có 74 - 80mg vitamin C (vitamin chủ yếu trong đu đủ), caroten (tiền vitamine A) 500 - 1.250UI. Ngoài ra, còn có các vitamin B1, B2, các acid gây men, các khoáng chất như: kali (179mg), canxi, magiê, sắt và kẽm.\r\nKhông hóa chất, không thuốc tăng trưởng, các chất làm biến đổi gen.\r\nTrong đu đủ chứa nhiều chất chống oxy hóa như vitamin C, E và A, rất tốt cho việc bảo vệ tim mạch.\r\nHàm lượng chất xơ cao giúp cải thiện vấn đề về tiêu hóa, táo bón, ngăn ngừa bệnh ung thư ruột kết.\r\nĐu đủ có tên mộc qua, tính hàn, vị ngọt mùi hơi hắc. Tác dụng thanh nhiệt, bổ tỳ, làm mát gan, nhuận tràng, giải độc, tiêu thũng. Quả đu đủ xanh được sử dụng để nghiền nát với nước dùng bôi mặt hoặc tay, chữa các vết tàn hương ở mặt, tay, còn dùng chữa chai chân và bệnh.', 43000, 100, 'dudu.jpg', 'ko'),
(3021, 3, 2, 'Khổ Qua', 'Khổ qua còn có tên gọi khác là mướp đắng. Đây là một thực phẩm thách thức đối với nhiều người, cả trẻ con và người lớn vì vị đắng của nó. Tuy có vẻ khó ăn, nhưng khổ qua lại chứa rất nhiều dinh dưỡng và rất tốt cho sức khỏe.\r\nCó nguồn gốc từ Đông Nam Á, khổ qua nay cũng trở thành một trong những thực phẩm phổ biến trên thế giới, đặc biệt rất quen thuộc với người Việt Nam.\r\nTuy nhiên, người Việt mình thường chỉ ăn khổ qua theo thói quen mà chưa nghiêm túc đong đếm lượng dinh dưỡng của khổ qua cũng như cách chế biến sao cho có lợi nhất.', 48000, 100, 'khoqua.jpg', 'ko'),
(3022, 3, 2, 'Cà tím', 'Ngăn ngừa ung thư\r\nDuy trì sức khỏe tim mạch\r\nGiảm cholesterol\r\nSản phẩm có thể tạo cảm giác no, thích hợp cho chế độ giảm cân\r\nCà tím là món ăn yêu thích của khá nhiều người vì hương vị của nó. Ngoài việc chế biến được nhiều món ăn, cà tím còn có khá nhiều lợi ích về sức khỏe mà ít người biết đến.', 45000, 100, 'ca.png', 'ko'),
(3023, 2, 1, 'Khoai Tây Bi', 'Khoai tây bi cũng giống như khoai tây thông thường, nó chỉ có điểm khác biệt duy nhất chính là kích cỡ. Khoai tây bi nhỏ hơn khoai tây thông thường rất nhiều, gọi là “bi” bởi nó nhỏ nhắn giống như những viên bi vậy. Chính vì vậy, loại khoai này vẫn sở hữu đầy đủ những tác dụng tuyệt vời của củ khoai tây.\r\nTốt cho não bộ và hệ thần kinh\r\nKhoai tây là loại rau củ có chứa hàm lượng dinh dưỡng lớn. Đặc biệt là vitamin B6. Đây là dưỡng chất cần thiết giúp cho hệ thần kinh hoạt động tốt. Nó có khả năng tạo ra các chất hữu cơ, giảm tình trạng căng thẳng, mệt mỏi và trầm cảm. Bên cạnh đó, khoai tây bi còn giúp duy trì ổn định hàm lượng glucose trong máu, giúp não bộ hoạt động tốt hơn. Hơn nữa, lượng kali có trong loại củ này còn giúp mạch máu giãn nở, cung cấp cho não bộ lượng máu vừa đủ để hoạt động có hiệu quả.\r\nGiúp giảm huyết áp, tăng cường hệ miễn dịch\r\nKhoai tây bi là thực phẩm có tác dụng giảm huyết áp hiệu quả bởi trong thành phần của nó rất giàu kali, chất xơ cũng như kukoamine. Những chất này có tác dụng điều hòa glucose, giãn mạch máu, tạo điều kiện cho máu lưu thông dễ dàng.', 56000, 100, 'khoaitay.jpg', 'ko'),
(3024, 2, 1, 'Củ cải trắng ', 'Trong 100 gam củ cải trắng thì thành phần các chất dinh dưỡng bao gồm: 1.4gam protid, 3.7gam glucid, 1.5gam xenluloza, 40mg canxi, 41miligam photpho; 1.1miligam sắt; 0.06miligam vitamin B1, 0.06miligam vitamin B2, 0.5miligam vitamin PP, 30 miligam; vitamin C\r\nHàm lượng vitamin C và các chất chống oxy hóa trong củ cải khá phong phú, nên sử dụng củ cải trong bữa ăn hàng ngày giúp ngăn chặn tác hại của gốc tự do. Hơn nữa, củ cải tươi có thể đắp lên da vì nó có đặc tính làm sạch.\r\nHàm lượng calo trong củ cải rất thấp. thêm vào đó hàm lượng chất xơ trong củ cải lại khá phong phú nên sẽ khiến cho những người muốn giảm cân có cảm giác nhanh no khi sử dụng loại thực phẩm này. Chẳng hạn, hàm lượng calo trong 100 gam củ cải có khoảng 16 calories do vậy bạn có thể thoải mái sử dụng món ăn từ củ cải vừa mang lại nhiều lợi ích cho sức khoẻ vừa giúp kiểm soát cân nặng hiệu quả.', 52000, 100, 'cucai.jpg', 'ko'),
(3025, 2, 1, 'Hành Tây', 'Hành tây – thực phẩm quen thuộc trong nhà bếp, nhưng ít người biết rằng công dụng của hành tây được ví như một loại thuốc quý tự nhiên tuyệt vời, nó có khả năng trị ho, cảm lạnh, cao huyết áp, các vấn đề liên quan đến thẩm mỹ,…\r\nành tây có tên khoa học là Allium cepa, bộ phận của hành tây là phần thân hành nhưng chúng ta hay gọi là phần củ. Hành tây không chỉ được xem là một loại gia vị giàu vitamin, a-xít folic, kalium và selenium…những chất có giá trị dinh dưỡng lớn mà còn là liều thuốc tự nhiên tuyệt vời giúp chúng ta được nhiều bệnh khác nhau.', 39000, 100, 'hanhtay.jpg', 'ko'),
(3026, 2, 1, 'Gừng', 'Đông y cho rằng, gừng có vị cay, tính ấm, vào 3 kinh phế, tỳ, vị, có tác dụng phát biểu, tán hàn, ôn trung, tiêu đàm, hành thủy, giải độc. Ngoài ra, tùy theo hình thức sử dụng, gừng có nhiều công dụng khác nhau.\r\nGừng còn có tên khác là sinh khương, can khương, bào khươ Tên khoa học Zingiber officinale Rose, họ Gừng (Zingiberaceae). Được trồng phổ biến ở mọi miền nước ta để làm gia vị và làm thuốc.\r\nMột số cách trị bệnh từ gừng\r\n- Trị lở loét khoang miệng: dùng nước gừng tươi thay trà để uống và súc miệng thường xuyên, khoảng 2 - 3 lần mỗi ngày, sẽ có hiệu quả bất ngờ, khoảng 60 - 90% vết lở loét đều biến mất.\r\n- Viêm nha chu: thường xuyên dùng nước trà tươi nóng để súc miệng hoặc uống đều có hiệu quả bệnh viêm nha chu. Nên uống hoặc súc miệng mỗi ngày 2 lần vào buổi sáng và tối. Nếu cổ họng bị rát, ngứa hoặc đau có thể cho thêm chút muối ăn vào hòa tan và uống nóng, mỗi ngày uống khoảng 2 - 3 lần.\r\n- Phòng ngừa và trị sâu răng: mỗi buổi sáng và tối kiên trì súc miệng bằng nước gừng nóng hoặc uống nước gừng nóng nhiều lần trong ngày có tác dụng bảo vệ răng, phòng ngừa và trị chứng sâu răng hiệu quả.\r\n- Trị đau nửa bên đầu: khi thấy đau một bên hoặc đau nửa đầu, dùng nước gừng nóng xoa đều ra hai tay sau đó bóp đều quanh vùng đầu bị đau khoảng 15 phút, cảm giác đau đớn sẽ nhanh chóng giảm dần, thậm chí có thể tiêu biến hoàn toàn.\r\n- Trị sắc mặt nhợt nhạt: rửa mặt thường xuyên bằng nước gừng nóng vào mỗi buổi sáng và tối có tác dụng làm cho da mặt hồng hào, sắc mặt nhợt nhạt do thiếu chất, thiếu ngủ hay lao lực sẽ nhanh chóng tan biến. Nên duy trì thói quen rửa mặt như vậy trong vòng 60 ngày liên tiếp. Theo đó, rửa mặt bằng nước gừng nóng cũng phát huy tác dụng nhất định đối với những vết thâm nám và làn da khô ráp.\r\n- Trị chứng gàu\r\n- Đau lưng và đau vai', 34000, 100, 'gung.jpg', 'ko'),
(3027, 1, 3, ' Bông cải xanh', 'Bông cải xanh hoặc súp lơ xanh là một loại cây thuộc họ cải, có hoa lớn ở đầu, thường được dùng như rau. Bông cải xanh thường được chế biến bằng cách luộc hoặc hấp, nhưng cũng có thể được ăn sống như là rau sống trong những đĩa đồ nguội khai vị. Có rất nhiều món ăn được chế biến từ bông cải xanh chẳng hạn như pasta với bông cải xanh, súp bông cải xanh, bông cải xanh xào tôm. Ta có bông cải xanh trộn dầu hào, một món ăn giàu đạm và rất ngon hay gà xào bông cải xanh món ăn âm dương kết hợp hài hòa Ngoài ra bông cải xanh được dùng để làm các món salad, xào thịt, xào hải sản, giúp món ăn hạ bớt lượng nhiệt từ dầu mỡ, thịt, đảm bảo hài hòa, cân bằng cho bữa ăn.\r\nĐối với người đang ăn kiêng, ăn theo chế độ thì bông cải xanh là một thực phẩm không thể thiếu trong mỗi bữa ăn.', 90000, 100, 'bongcai.jpg', 'ko'),
(3028, 1, 3, 'Rau má', 'Rau má không chỉ là một loại rau thông dụng, có thể ăn hàng ngày mà còn là một vị thuốc chữa được nhiều chứng bệnh như: mụn nhọt, hạ sốt, làm đẹp, tăng cường sức khỏe, giải độc, táo bón, tim mạch…\r\nNgoài ra, rau má cũng là một loại dược thảo có tính bổ dưỡng rất cao, có nhiều sinh tố, khoáng chất, những chất chống oxy hoá, có thể dùng để dưỡng âm, cải thiện trí nhớ, làm chậm sự lão hoá, cải thiện vi tuần hoàn và chữa nhiều chứng bệnh về da.\r\nRau má có thể ăn sống hoặc nấu canh, luộc hay giã nhuyễn vắt lấy nước uống.\r\nRau má được trồng theo phương thức hữu cơ không sử dụng thuốc trừ sâu & thuốc diệt cỏ, không sử dụng phân bón hóa học, không sử dụng thuốc kích thích tăng trưởng, không trồng trên đất nhiễm hóa chất nông nghiệp, không sử dụng giống biến đổi gen, không sử dụng chất bảo quản.', 38000, 100, 'rauma.jpg', 'ko'),
(3029, 1, 3, 'Xà Lách Búp Mỡ', 'Rau xà lách – món ăn bình dân, quen thuộc trong bữa ăn của người Việt. Theo Đông y, rau xà lách có vị ngọt đắng, tính mát, giải nhiệt. Theo nghiên cứu khoa học, cứ 100g rau xà lách có chứa 90g nước, 2.2g carbohydrate, 1.2g chất xơ cùng rất nhiều các khoáng chất và vitamin cần thiết. Những chia sẻ sau đây giúp chúng ta có nhiều thông tin hữu ích hơn về giá trị dinh dưỡng rau xà lách.', 45000, 100, 'xalach.jpg', 'ko'),
(3030, 1, 3, 'Rau Muống', 'Trong rau muống chứa nhiều vitamin và khoáng chất, đặc biệt là chất xơ, protein, canxi, sắt, vitamin A và vitamin C.\r\nRau cung cấp một lượng sắt lớn, hỗ trợ người mắc bệnh thiếu máu và phụ nữ mang thai.\r\nChất xơ của rau có tác dụng nhuận tràng, kích thích tiêu hóa, hiệu quả với người bị táo bón.\r\nTrong rau muống có chứa một số chất đạm quý mà nhiều loại rau khác không có như lysin, tryptophan, threonin, valin, Đây là những axit amin cần thiết cho cơ thể, tốt cho những người ốm dậy, kém ăn, thiếu chất đạm. Nó cũng giúp mọi người phòng và hỗ trợ điều trị bệnh tiểu đường.\r\nNgười bị say nắng có thể dùng nước ép rau muống với một chút muối hoặc chanh để cơ thể nhanh chóng được tiêu khát, dễ chịu.', 38000, 100, 'raumuong.jpg', 'ko'),
(3031, 1, 3, 'Lá Dứa', 'Cây lá dứa thường được dùng để tăng hương vị cho các món ăn như xôi, chè, nước giải khát,... Không chỉ dừng lại ở đó, công dụng của lá dứa còn được y khoa ghi nhận như giải cảm, ổn định đường huyết, tốt cho thần kinh, giảm đau…\r\nGiá trị dinh dưỡng:\r\n- Hỗ trợ bệnh thấp khớp.\r\n- Tốt cho dây thần kinh.\r\n- Giúp gàu ở da đầu.\r\n- Có khả năng chống oxy hóa, loại trừ các gốc tự do.\r\n- Giúp giải cảm.\r\n- Hỗ trợ được bệnh tiểu đường.', 25000, 100, 'ladua.jpg', 'ko'),
(3032, 2, 2, 'Hạt sen', 'Hạt sen tươi Senta là sản phẩm đã được sơ chế sạch sẽ, chỉ cần rửa sạch là có thể dùng chế biến rất tiện lợi.\r\nHạt sen có nguồn gốc từ một số tỉnh miền Tây, được sơ chế đóng gói theo đúng quy trình, vệ sinh sạch sẽ.\r\nSản phẩm hoàn toàn không sử dụng chất bảo quản, tẩy trắng\r\nCông dụng:\r\nDùng hạt sen có nhiều tác dụng tốt cho sức khỏe, dùng chữa cơ thể suy nhược, ăn uống kém, mất ngủ, tiêu chảy,...\r\nHướng dẫn sử dụng:\r\nBảo quản trong ngăn mát tủ lạnh.\r\nMở bao và rửa sạch trước khi chế biến.\r\nLoại hạt này thường được dùng để nấu chè hạt sen, gà hầm hạt sen, canh hạt sen… Những món ăn này, không những có vị ngọt thanh dễ chịu của hạt sen, mà còn có hương thơm và mùi vị hấp dẫn. Cam kết cung cấp các mặt hàng tươi sống, sạch sẽ, nguyên vị, đạt mọi tiêu chuẩn về chất lượng. Khối lượng tịnh chuẩn xác.\r\nĐóng gói kỹ càng, an toàn, đảm bảo vệ sinh an toàn thực phẩm. Giao hàng nhanh chóng, đầy đủ đơn hàng.', 98000, 100, 'hatsen.jpg', 'ko'),
(3033, 2, 2, 'Củ năng', 'Củ năng tươi gọt vỏ Senta là sản phẩm đã được sơ chế sạch sẽ, chỉ cần rửa sạch là có thể dùng chế biến rất tiện lợi.\r\nCủ sen có nguồn gốc từ một số tỉnh miền Tây, được sơ chế đóng gói theo đúng quy trình, vệ sinh sạch sẽ.\r\nSản phẩm hoàn toàn không sử dụng chất bảo quản, tẩy trắng.\r\nCông dụng:\r\nCủ Năng Tươi Gọt Vỏ Senta là loại củ vô cùng quen thuộc có khả năng hỗ trợ kháng khuẩn, hạ huyết áp và phòng ung thư, trong củ năng có:\r\n- 68,52% nước.\r\n- 18,75% tinh bột.\r\n- 2,25% protein.\r\n- 0,19% lipid.\r\n- Đường.\r\n- Pectin.\r\n- Các muối canxi.\r\n- Phospho.\r\n- Sắt.\r\n- Các vitamin A, B1, B2, C…\r\nCó công dụng hỗ trợ trị liệu đối với các bệnh tim mạch, đái tháo đường, giảm nguy cơ sỏi thận, phục hồi sức khỏe, giúp thanh nhiệt giải độc cho cơ thể vô cùng hiệu quả.', 55000, 100, 'cunang.jpg', 'ko'),
(3034, 2, 2, 'Củ Sắn', 'Củ sắn chắc thịt, dễ bóc, khi ăn rất giòn, ngọt và nhiều nước.\r\nGiá trị dinh dưỡng:\r\n- Hỗ trợ giảm cân.\r\n- Bổ sung viatamin, khoáng chất.\r\n- Giúp da tươi tắn.\r\nHướng dẫn sử dụng:\r\nBảo quản nơi thoáng mát.\r\nCủ sắn được dùng để ăn sống hoặc chế biến thành nhiều món ăn ngon miệng như: thịt kho củ sắn, bò xào củ sắn, chè củ sắn, sinh tố, mứt,...', 38000, 100, 'cusan.jpg', 'ko'),
(3035, 2, 2, 'Khoai lang', 'Khoai lang không chỉ là thực phẩm quen thuộc trong dân gian, mà lá và củ còn là vị thuốc trị nhiều bệnh. Trong Đông y, khoai lang có tính bình, vị ngọt, có tác dụng bồi bổ cơ thể, ích khí, cường thận, kiện vị, tiêu viêm, thanh can, lợi mật, sáng mắt.\r\nCủ khoai lang chứa nhiều xơ, protein, các vitamin A, C, B6, E, sắt, đứng cao nhất về giá trị dinh dưỡng so với các loại rau củ khác, trên cả khoai tây.\r\nVỏ khoai lang chứa nhiều vitamin và khoáng chất, giúp bảo vệ dưỡng chất bên trong, vì vậy khi luộc khoai nên để cả vỏ. Chất xơ của khoai là loại Pectin có tác dụng giúp tiêu hóa tốt, tăng thải cholesterol, chống táo bón.', 53000, 100, 'khoai.jpg', 'ko'),
(3036, 3, 1, 'Ớt sừng xanh', 'Ớt sừng xanh không quá cay như nhiều loại ớt khác, là một nguyên liệu, gia vị không thể thiếu, một loại quả chuyên dùng để trang trí cho món ăn thêm đẹp mắt.\r\nGiá trị dinh dưỡng:\r\n- Giúp bảo vệ da khỏi các tác nhân môi trường.\r\n- Chống lại các tia bức xạ.\r\n- Hỗ trợ tăng sức đề kháng, chống cảm cúm.', 58000, 100, 'otsung.jpg', 'ko'),
(3037, 3, 2, 'Bắp Mỹ ', 'Trái Bắp Mỹ có hình dạng thon dài, đầu trái hơi nhọn, có màu vàng óng rất đẹp. Có lá (Vỏ) bao quanh trái, màu vỏ vàng nhạt và có những sợi (râu) bắp màu nâu đồng bao quanh trái sau lớp vỏ. Đặc trưng của trái Bắp Mỹ rất ngọt khi ăn sống thử, có mùi thơm, bóp vài hạt bắp thấy nước màu trắng đục.Bắp Mỹ còn gọi là Ngô Mỹ, Lúa Ngô Mỹ, Bẹ Mỹ, tên La Tinh là Zea mays, có nguồn gốc từ Trung Mỹ.', 46000, 100, 'bap.jpg', 'ko'),
(3038, 3, 2, 'Chanh vàng', 'Chanh vàng Nam Phi có chứa nhiều vitamin, đặc biệt là vitamin C - là chất chống oxy hóa mạnh, giúp ngăn ngừa ung thư và nhiều căn bệnh nguy hiểm khác. Ngoài ra, còn chứa nhiều chất khoáng như kali, magiê, natri, canxi, mangan và các hợp chất đặc biệt tốt cho gan, thận khác.\r\nCông dụng\r\n Phục hồi sức khỏe nhanh chóng\r\nChanh vàng có chứa nhiều chất điện phân như  kali, magiê, natri, canxi, mangan giúp phục hồi sức khỏe sau khi vận động. Nên pha chanh vàng với ít đường hoặc mật ong, bạn sẽ được loại nước uống thơm ngon, giúp giải nhiệt, làm mát, đây cũng là một sự kết hợp lành mạnh của các chất điện giải và carbohydrate hỗ trợ sự hồi phục của cơ bắp.\r\nTăng cường miễn dịch tự nhiên\r\nTheo các nghiên cứu, một quả chanh chứa tới 51% lượng vitamin C hàng ngày của bạn. Kết hợp với các khoáng chất như canxi, sắt, magiê, photpho, kali, đồng và mangan, tất cả đều có trong chanh, giúp tăng cường hệ miễn dịch tự nhiên của cơ thể mà không phải chịu các tác dụng phụ như một số loại thuốc tăng lực.\r\nGiảm triệu chứng buồn nôn, say tàu xe\r\nNếu bạn bị say xe, buồn nôn, thay vì dùng thuốc chống say sẽ gây cảm giác mệt mỏi, hãy dùng một quả chanh vàng để ngửi sẽ giúp bạn giảm được triệu chứng say xe. Chanh vàng có mùi thơm dễ chịu, vỏ nhiều tinh dầu và có nhiều dưỡng chất giúp thư giãn tinh thần, giảm những cảm giác khó chịu khi ngồi trên xe. Bạn cũng có thể bổ sung thêm nước chanh vàng để uống, sẽ có hiệu quả cao hơn....', 47000, 100, 'chanh.jpg', 'ko'),
(3039, 3, 2, 'Đậu Hà Lan', 'Đậu hà lan không chỉ được biết đến như loại thực phẩm đơn thuần sử dụng hàng ngày mà chúng còn được các chuyên gia đánh giá như vị thuốc bổ giúp tăng cường sức khỏe cơ thể. Các dưỡng chất thiết yếu chứa trong dược liệu này giúp điều hòa huyết áp và lượng đường trong máu. Đồng thời giúp làm giảm cholesterol xấu và nâng cao sức đề kháng. Từ đó giúp giảm nguy cơ mắc bệnh tim mạch và các vấn đề sức khỏe khác.\r\nĐậu hòa lan là loại cây thân thảo, dây leo. Lá kép, có 1 – 3 đôi lá chét. Mỗi lá chét có các đầu cuốn thường biến thành tua cuốn. Bên cạnh lá chét còn có lá kèm rất lớn. Hoa mọc ở nách, thường mọc thành chùm với màu tím hoặc trắng. Quả đậu hòa lan có dẹt, màu xanh và bên trong có chứa hạt. Mỗi quả chứa khoảng 5 – 6 hạt có dạng hình cầu.', 75000, 100, 'dauhalan.jpg', 'ko'),
(3040, 1, 1, 'Bông thiên lý', 'Bông thiên lý hay còn được gọi là Dạ Lý Hương, là một loại hoa có đặc điểm màu xanh phớt vàng và bông hoa rất nhỏ. Bông thiên lý thường mọc thành chùm có mùi hương dịu nhẹ. Đặc biệt, loại hoa này có thể kết hợp với nhiều nguyên liệu để chế biến các món ăn thơm ngon và hấp dẫn khác nhau. Với hương thơm nhẹ nhàng từ những cánh hoa, vị ngọt thanh của hoa, tất cả hòa quyện tạo nên một món ăn tuyệt vời.', 112000, 100, 'thienly.jpg', 'ko'),
(3041, 1, 2, 'Húng Quế', 'Húng quế thường được ăn kèm với các loại rau sống khác và nó có mùi đặc trưng, rất dễ phân biệt. Có những món ăn nếu không có loại rau này thì sẽ không tạo nên hương vị và ăn sẽ không ngon nữa. Mặc dù chỉ là những lá nhỏ nhưng húng quế lại tạo nên màu sắc riêng không lẫn vào đâu được.\r\nGiá trị dinh dưỡng:\r\n- Có thể bảo vệ tim.\r\n- Giúp phòng ngừa ung thư.\r\n- Húng quế có thể làm giảm cơn sốt.\r\n- Giúp cai .\r\n- Tốt cho hệ hô hấp.\r\n- Có tác dụng chữa sâu răng.', 47000, 100, 'hungque.jpg', 'ko'),
(3042, 1, 1, 'Cần Nước', 'Cần nước hay còn được biết đến với nhiều tên gọi như cần ống, , cần cơm.\r\nLà loại rau khá quen thuộc với người Việt Nam.\r\nCông dụng:\r\nchứa các thành phần có lợi cho sức khỏe như: Protein, chất béo, carbohydrate, chất xơ, các loại vitamin (A, B1, B2, C,...).\r\nCó tác dụng:\r\n- Điều hòa huyết áp.\r\n- Hỗ trợ điều trị thiếu máu.\r\n- Thanh lọc cơ thể, giảm mụn nhọt.\r\n- Hỗ trợ điều trị tiểu đường, mỡ trong máu.\r\n- Giúp chữa chứng xuất huyết và đau bụng hậu sản cho phụ nữ sau sinh.\r\n- Hỗ trợ chữa viên phế quản, suyễn,...', 37000, 100, 'cannuoc.jpg', 'ko'),
(3043, 1, 1, 'Hành Paro', 'Hành Paro có giấy chứng nhận nguồn gốc xuất xứ.\r\nHành paro có khối lượng 300gr/gói\r\n3Sạch Food nhập hàng mới mỗi ngày, luôn tươi ngon khi đến tay khách hàng.\r\nHành paro hay còn gọi là tỏi tây, thân dài rất giống hành lá. Người dân ta thường dùng để thay thế cho nhau. Hành paro và hành lá đều giống nhau về màu sắc, vị ngọt, rất thơm khi xào hoặc nấu chín.\r\nCông dụng:\r\nPhần cọng trắng – thơm ngon nhất – có vết của các glucid đặc biệt là fructosan tạo nên vị ngọt dịu, vitamin nhóm B, C, E và nhiều khoáng chất. Riêng phần lá xanh lại có hàm lượng cô đặc caroten gấp trăm lần và hai lần vitamin A, C hơn phần cọng trắng.\r\nHành Paro có tác dụng tẩy độc tố, làm đẹp da, giúp cơ thể có sức đề kháng tốt với bệnh hô hấp và viêm đường hô hấp.', 39000, 100, 'hanh.jpg', 'ko'),
(3044, 2, 3, 'Khoai Mỡ', 'Chắc hẳn bạn đã từng ăn qua một món ăn được chế biến từ khoai mỡ. Khoai mỡ có tên khoa học là Dioscorea alata, củ khá to, nhiều hình dạng, thịt củ màu tím, mềm khi nấu chín. Khoai mỡ có vị ngọt tự nhiên, hấp dẫn và được sử dụng trong nhiều món ăn khác nhau, từ ngọt đến mặn.\r\nHơn nữa, chúng chứa rất nhiều vitamin, khoáng chất và chất chống oxy hóa, tất cả đều có lợi cho sức khỏe của bạn.\r\nGiá trị dinh dưỡng:\r\n- Dùng để chữa các bệnh về da và hô hấp.\r\n- Bảo vệ thành mạch tốt, giảm áp hiệu quả.\r\n- Bảo vệ hệ thống nội tiết tố ở nữ giới.\r\n- Chữa chứng trầm cảm ở nữ giới.\r\n- Chống oxy hóa hiệu quả.\r\n- Cải thiện bệnh lý đường huyết.\r\n- Giúp đường tiêu hóa phát triển.\r\n- Hỗ trợ hấp thụ dinh dưỡng.\r\n', 65000, 100, 'khoaimo.jpg', 'ko'),
(3045, 2, 2, 'Củ sen tươi', 'Củ sen mọc dưới bùn, hấp thụ chất dinh dưỡng trong đất và nước rồi chuyển hóa thành năng lượng dưới dạng tinh bột, vị bùi, giòn, hương thơm nhẹ và có thể ăn sống hoặc nấu chín tùy ý.\r\nCủ Sen Tươi Cắt Lát Senta chứa nhiều khoáng chất quan trọng như kẽm, sắt, đồng, một lượng lớn vitamin, đặc biệt là vitamin B6 có nhiều lợi ích đối với sức khỏe\r\nCó tác dụng làm mát gan, mát máu, điều hòa kinh mạch, lưu thông khi huyết, ngăn ngừa các bệnh tim mạch... nên rất tốt cho sức khỏe, đặc biệt là người cao tuổi.', 75000, 100, 'sen.jpg', 'ko'),
(3046, 2, 1, 'Sả Cây', 'Một số bài thuốc từ cây sả\r\n1. Giải cảm: Lá sả cùng với một số loại lá như kinh giới, tía tô, trắc bách diệp, bạc hà, chanh, ngải cứu, lá tre, lá ổi (mỗi nồi dùng 5 loại lá) ... đun sôi, dùng để sông giải cảm rất hiệu nghiệm.\r\n2. Chữa cảm cúm trúng hàn: Ngày dùng 15 đến 30 gam củ hoặc lá tươi để nấu nước xông. \r\n3. Trị nhức đầu: Lá sả, lá tía tô, lá kinh giới, lá ngải cứu, thêm 3-4 củ tỏi, (thiếu một thứ cũng không được), nấu nước xông. Hoặc lá sả, lá tre, lá bưởi, (hoặc lá chanh), lá tía tô, lá ổi, nấu nước xông, trước khi sông nên múc sẵn một chén để riêng, xông xong uống rồi đắp chăn mằm một lúc sẽ đỡ (bài thuốc gia truyền).\r\n4. Rễ sả giã nhỏ, xát chữa chàm mặt.\r\n5. Trị mụn nhọt: Nấu nước lá sả tắm hàng ngày.', 48000, 100, 'sa.jpg', 'ko'),
(3047, 2, 2, 'Khoai Sọ', 'Khoai sọ là thực phẩm rất quen thuộc, chế biến thành nhiều món ăn ngon,ngoài ra khoai sọ còn có nhiều công dụng y học bất ngờ. \r\nTheo y học cổ truyền, củ khoai sọ có tính bình, vị cay ngọt, vào 3 kinh tỳ, vị và đại tràng, có tác dụng tán khối kết tiêu u hạch ở cổ, nhuận tràng, thông đại tiện, thường dùng chữa các loại thũng độc sưng đau, khối kết (u hạch), bỏng lửa, viêm khớp, viêm thận, sưng hạch, bạch huyết....\r\nCủ khoai sọ mọc hoang dại thường có màu tím, ăn thì phá khí, không bổ. Củ khoai trồng có bột màu trắng dính, có vị ngọt hơi the, trơn, tính bình, điều hoà nội tạng, dùng ăn chữa được hư lao yếu sức.\r\nNgười ta luộc khoai sọ để ăn chống đói, nấu canh với rau dút, cua đồng hoặc nấu với cá quả, cá diếc, dùng ngoài chữa phong ngứa, mụn mủ.', 80000, 100, 'khoaiso.jpg', 'ko'),
(3048, 3, 2, 'Bí ngòi xanh', 'Bí ngòi xanh là loại trái thuộc họ bầu bí, thân tròn, dài, bên ngoài bí có màu xanh sậm, có ít vân. CÔNG DỤNG Bí ngòi nói chung giúp chữa các bệnh về hô hấp như hen suyễn, giúp tránh nhồi máu cơ tim và đột quỵ, ngăn ngừa cá bệnh về hoại huyết, thâm tím bị gây ra do thiếu hụt vitamin C. Bí ngòi còn giúp tăng khả năng ngăn ngừa chứng đa xơ cứng, ung thư ruột già, ngăn xơ vữa động mạch, làm hạ huyết áp. Một số công dụng khác như : Chống lão hóa, tăng cường trí nhớ và làm thuyên giảm những chứng bệnh liên quan đến lão hóa. Bí ngòi còn có tác dụng giảm cân vì các chất dinh dưỡng trong bí ngòi cũng có tác dụng làm tăng chuyển hóa, đồng thời loại quả này 90% là nước và có hàm lượng  calorie thấp nên giảm cân hiệu quả. CÁCH SỬ DỤNG Bí ngòi được chế biến thành rất nhiều món ăn, cụ thể như: bí ngòi xào nấm tươi, trứng rán bí ngòi, cá kho bí ngòi, bí ngòi xào tôm, canh bí ngòi nấu với tôm, thịt bò xào bí ngòi. Ngoài ra còn có thể làm món bí ngòi hấp, bí ngòi nướng, canh trứng bí ngòi, bí ngồi bao thịt ......   LƯỢNG DÙNG Mỗi ngày dùng khoảng 500gr bí ngòi sẽ cải thiện được sức khỏe. CÁCH BẢO QUẢN Bí ngòi có thể bảo quản trong tủ lạnh như rau quả, nhưng không bảo quản quá lâu sẽ làm giảm dinh dưỡng và tạo vị đắng khi sử dụng.', 68000, 100, 'bingoi.jpg', 'ko'),
(3049, 3, 2, 'Đậu bắp', 'Đậu bắp còn có nhiều tên gọi khác như mướp tây, bông vàng, bắp chà hay thảo cà phê, okra (Anh), có tên khoa học cũ gọi là Hibicus enculentus L. (Albelmoschus enculentus Wight et Arn) thuộc họ Đông (Malvaceae). Là loại cây có nguồn gốc từ Tây Phi, có khả năng chịu đựng được nóng bức và khô hạn tốt, được gieo trồng ở những vùng nhiệt đới hay ôn đới, thấy phổ biến tại miền Nam Hoa Kỳ. Ở nước ta, đậu bắp được trồng ở nhiều nơi nhưng tập trung ở các tỉnh phía Nam. Loài này là cây một năm hoặc nhiều năm, cao tới 2,5m. Lá dài và rộng khoảng 10 - 20cm, xẻ thùy chân vịt với 5 - 7 thùy. Hoa đường kính 4 - 8cm, với 5 cánh hoa màu trắng hay vàng, thường có các đốm đỏ hay tía tại phần gốc mỗi cánh hoa. Quả là dạng quả nang dài tới 20cm, chứa nhiều hạt. Những công dụng Một chén đậu bắp sống chứa đến 87,8mg acid folic. Đây là chất dinh dưỡng cần thiết cho cơ thể, đặc biệt đối với những phụ nữ mang thai, acid folic cực kỳ quan trọng vì giúp phòng ngừa khuyết tật ống thần kinh và các dị tật bẩm sinh khác ở thai nhi.', 76000, 100, 'daubap.jpg', 'ko'),
(3050, 3, 1, 'Su su', 'Miếng su su luộc có màu xanh nõn nà, cắn sần sật, có vị ngọt lừ quyện với một chút muối vừng thơm thơm, bùi bùi. Su su luộc phải vừa chín tới và ăn nóng mới ngon. Luộc quá lửa một chút hoặc để nguội ăn là mất hết vị su su Sapa. Nhưng đặc biệt nhất, chỉ có thể tìm thấy ở Sapa chính là ngọn su su còn xanh mơn mởn. Ngọn su su hợp nhất là xào tỏi chứ không mấy khi luộc hoặc nấu canh. Chỉ đơn giản ra giàn su su và chọn cắt vài đọt su su ở nhánh lá thứ hai kể từ ngọn vì đó là phần mềm và ngọt nhất. Sau đó, tước bỏ lớp xơ bên ngoài và bẻ thành những đoạn ngắn rồi rửa sạch và để ráo nước. Khi chế biến, trước tiên cho một ít dầu ăn vào chảo, sau đó đập một tép tỏi thả vào dầu cho chín vàng và bắt đầu thả ngọn su su đã cắt ngắn vào, đổ thêm một ít nước và nêm cho vừa ăn. Khi rau vừa chín tới, giã thêm một ít tỏi trộn vào rồi cho ra đĩa, dùng nóng', 98000, 100, 'susu.jpg', 'ko'),
(3051, 3, 2, 'Ớt hiểm', 'Ớt hiểm phân phối dựa trên hoàn toàn nguồn ớt hiểm hữu cơ, nói không hóa chất độc hại, không phân bón hóa học, thuốc trừ sâu, thuốc biến đổi gen hay kích thích tăng trưởng,…không những đảm bảo tiêu chuẩn bảo vệ sực khỏe của người sử dụng mà còn giữ nguyên vị ngon, cay xé lưỡi, làm món ăn thêm hấp dẫn   \r\nCÔNG DỤNG Không chỉ là một loại gia vị đơn thuần, ớt hiểm còn mang lại cho người ăn nhiều công dụng bất ngờ. Ớt hiểm giúp phòng chống bệnh tiểu đường, chứng rụng tóc do hóa trị liệu, chữa viêm khớp mãn tính, tăng tiết dịch vị giúp tiêu hóa tốt hơn,…', 30000, 100, 'othiem.jpg', 'ko'),
(3052, 3, 3, ' Dưa leo', 'Dưa leo hữu cơ được trồng và chăm sóc theo phương pháp hữu cơ, là sự lựa chọn hoàn hảo cho những ai đang tìm kiếm sự tươi ngon và an toàn cho sức khỏe của mình. Với tiêu chuẩn nghiêm ngặt và quy trình sản xuất cẩn thận, dưa leo hữu cơ của chúng tôi đảm bảo mang lại những giá trị dinh dưỡng tốt nhất từ tự nhiên đến tay của quý khách hàng.\r\n\r\nTươi ngon và đầy dinh dưỡng: Dưa leo hữu cơ của chúng tôi được trồng trong môi trường không sử dụng hóa chất độc hại hay phân bón hóa học. Điều này đảm bảo rằng sản phẩm của chúng tôi không chỉ tươi ngon mà còn giàu dinh dưỡng, với hương vị tự nhiên và chất lượng tốt nhất.\r\n\r\nAn toàn cho sức khỏe: Chúng tôi cam kết cung cấp dưa leo hữu cơ không chứa các hóa chất độc hại như thuốc trừ sâu, thuốc diệt cỏ hoặc chất bảo quản nhân tạo. Điều này mang lại sự yên tâm cho quý khách hàng khi sử dụng sản phẩm của chúng tôi, đồng thời đảm bảo an toàn cho sức khỏe của bạn và gia đình.\r\nHương vị tự nhiên: Dưa leo hữu cơ của chúng tôi được trồng và chăm sóc bằng các phương pháp tự nhiên, giúp giữ lại hương vị đặc trưng và dinh dưỡng tự nhiên của loại rau này. Với khẩu phần dinh dưỡng cân đối và giàu chất chống oxy hóa, dưa leo hữu cơ là lựa chọn lý tưởng để bổ sung vào chế độ ăn hàng ngày.\r\nHỗ trợ nông dân và môi trường: Bằng cách lựa chọn sản phẩm hữu cơ, bạn không chỉ đảm bảo sức khỏe cho bản thân mình mà còn hỗ trợ cho việc bảo vệ môi trường và hỗ trợ cho nông dân sử dụng phương pháp trồng trọt bền vững. Chúng tôi cam kết hỗ trợ cộng đồng nông dân cùng xây dựng một tương lai bền vững và hài hòa với thiên nhiên.', 75000, 100, 'dualeo.jpg', 'ko'),
(3053, 3, 3, 'Chanh không hạt', 'Quả chanh không hạt có đường kính khoảng 6 cm, so với chanh ta thì có kích thước lớn hơn, không hạt, cứng hơn, thân cây không có gai, quả tạo thành chùm, vỏ mỏng, nước quả ít chua hơn và không có vị đắng như chanh ta.   \r\nCÔNG DỤNG \r\n1. Nhuận trường, dễ tiêu hóa Vắt một vài giọt chanh vào sữa để uống có tác dụng hỗ trợ tiêu hóa rất tốt, đặc biệt đối với trẻ em khi hệ tiêu hóa còn yếu. Người bị táo bón nên uống nước chanh hàng ngày sẽ thông đại tiện không những thế còn tăng cường sức đề kháng cho cơ thể.   \r\n2. Bệnh nóng nên uống nhiều nước chanh Các chứng phát nhiệt của cơ thể phần lớn không ăn được, kém ăn dẫn đến cơ thể suy nhược, mệt mỏi. Hãy uống 2-3 ly nước chanh pha đường mỗi ngày để cung cấp vitamin C, đường cho cơ thể đồng thời có tác dụng giải nhiệt, bệnh phát nhiệt nhanh lành.   \r\n3. Nước chanh pha muối Có tác dụng giải khát, tiêu đờm, thông cổ. Loại thức uống này đặc biệt phù hợp với người lao động nặng, nhiều vitamin và khoáng chất bị mất do bài tiết qua da dưới dạng mồ hôi.   \r\n4. Dùng để sát trùng Chanh có tác dụng sát trùng vết thương bị côn trùng, bò sát cắn hoặc khi bị mắt đỏ, bạn có thể nhỏ vào một giọt chanh (đã được lọc kỹ) cũng rất hiệu nghiệm.   \r\n5. Vỏ chanh tươi Nấu chung với món vịt sẽ hạn chế được tính lạnh của thịt vịt.   \r\n6. Rửa lưỡi cho trẻ Hòa chút muối và nước chanh, dùng khăn bông sạch thấm dung dịch này để rửa lưỡi cho trẻ sẽ rất sạch.       \r\n7. Tác dụng làm đẹp Pha nước cốt chanh vào dung dịch gội đầu tóc sẽ láng, mềm mại, sạch gàu; Đối với da mặt bị nhờn: Dùng 1 vài giọt nước cốt chanh trộn chung với 2 thìa nước cam, bôi dung dịch này lên mặt để 10 phút và rửa sạch, da mặt sẽ dần dần hết nhờn; Đối với da bị nhăn: Dùng mật ong trộn với một vài giọt nước cốt chanh, thoa lên mặt 15 phút rồi rửa sạch với nước lạnh. Tẩy da chết: Nước cốt chanh và đường, hoặc mật ong là hôn hợp tẩy da chết ở mặt và toàn thân rất hiệu quả và tiền lợi; Bài trừ căn bệnh hôi nách: Thoa nước cốt chanh lên nách sau khi tắm, để 15 phút rồi rửa lại với nước ấm, sau một thời gian ngắn bệnh hôi nách sẽ không còn.   \r\n8. Tẩy mùi tanh ở cá Dùng nước chanh để rửa cá làm cho cá sạch hơn, tươi lâu và mất mùi hôi tanh.   \r\n9. Làm sạch tay bị dính nhựa rau Khi bạn nhặt rau muống, rau khoai, xắt bắp chuối bị dính mủ, hãy dùng nước chanh để rửa tay sẽ nhanh chóng sạch vết mủ dính.   \r\n10. Làm sạch chất nhớt của xà bông Khi tay bị nhớt do chất kiềm dư của xà bông, hãy rửa tay bằng nước chanh, chất kiềm dư sẽ bị khử, tay sẽ hết nhớt ngay.   \r\n11. Chùi vật dụng bằng nilon bị mốc Khi vật dụng làm từ nilon bị mốc, hãy cắt trái chanh làm đôi chà xát lên chỗ mốc, đến khi hết mốc rồi lấy giẻ khô lau lại sạch. \r\n12. Làm mới giày da đã cũ Khi dày da bị cũ, da trở nên khô cứng, hãy dùng nước cốt chanh thoa lên da giày, sau đó dùng giẻ lau khô rồi mới đánh xi.   \r\n13. Chữa bàn ủi bị vàng Bàn ủi dùng quá nóng bị vàng, muốn bàn ủi trắng lại, hãy cắm điện bàn ủi cho nóng, rút dây cắm ra, dùng nửa quả chanh xát lên chỗ bị vàng rồi lau sạch bằng giẻ khô, bàn ủi sẽ trắng sáng trở lại.   \r\n14. Khử mùi tủ lạnh, tủ đựng thức ăn Cắt đôi quả chanh để vào góc tủ lạnh, tủ đựng thức ăn sẽ có tác dụng khử mùi rất hiệu quả.   ', 110000, 100, 'chanhxanh.jpg', 'ko'),
(3054, 3, 2, 'Cà bee socola', '• Cà chua bi so cô la có kích thước nhỏ, quả tròn như viên bi, có màu nâu, mọng nước, ăn vào có vị hơi chua. \r\nCÔNG DỤNG • Cà chua bi sô cô la có công dụng làm đẹp như: chống lão hóa, làm da mịn màng tươi sáng, bảo vệ bề mặt da .... • Cũng giống như các loại cà chua khác công dụng chữa bệnh của cà chua rất nhiều, phòng chống ung thư, chữa viêm gan mãn tính, hỗ trợ cho người bị viêm thận, chữa bệnh tim mach, chữa bí đại tiện, thiếu máu, chữa mún nhọt, bõng lửa, chữa sốt cao kèm theo khát nước hay chữa tăng huyết áp, chảy máu chân răng... \r\nCÁCH SỬ DỤNG • Cà chua bi sô cô la thường được chuộng ăn sống hơn là chế biến thành các món ăn trong bữa cơm. Người ta ăn cà chua bi như một loại trái cây. • Cà chua có thể được ăn sống với món salad, hay ép thành nước hoa quả bổ dưỡng...   \r\nLƯỢNG DÙNG • Một vĩ cà chua bi sô cô la 500gram mỗi ngày sẽ giúp ta bồi bổ thêm nhiều chất dinh dưỡng cũng như sức đề kháng. \r\nCÁCH BẢO QUẢN • Cà chua thường chín rất nhanh khi để ở nhiệt độ phòng', 102000, 100, 'cachua.jpg', 'ko'),
(3055, 3, 1, 'Mướp hương', 'Mướp hương được thu hoạch từ nông trại chuẩn hữu cơ, không hóa chất.  Loại rau này chế biến được thành nhiều món thơm ngon: xào, canh, luộc..... \r\nBổ sung thêm chất xơ vào các bữa ăn hằng ngày. \r\nĐược chứng nhận hữu cơ USDA', 120000, 100, 'muop.jpg', 'ko'),
(3056, 1, 1, 'Húng lủi', 'Húng lủi thuộc cây thảo, là loại cây có nguồn gốc từ hoang dã, mùi thơm đặc trưng thường được dùng làm rau sạch, chế biến với nhiều món ăn, ngoài ra cây còn được sử dụng để chế biến thành nhiều loại thảo dược chữa bệnh, xua đuổi muỗi.  CÔNG DỤNG \r\nRau húng lủi chứa dồi dào chất limonene, dihydrocarvone và cineol có tác dụng kích thích tuyến nước bọt tiết ra nhiều men tiêu hóa, giúp cho hệ tiêu hóa hoạt động hiệu quả hơn. Khi bạn cảm thấy dạ dày khó chịu, cho vài cọng húng lủi vào tách trà nóng, hoặc nhai sống rau húng lủi sẽ giúp bao tử dễ chịu hơn.   \r\nKhông chỉ vậy, húng lủi còn có thể cải thiện hội chứng kích ứng ruột, làm chậm sự tăng sinh của vi khuẩn và các loại nấm gây bệnh. Húng lủi cũng có tác dụng tốt trong việc điều trị bệnh suyễn và các bệnh về hô hấp do đặc tính kháng khuẩn của nó.   \r\nNgừa ung thư: Các nghiên cứu gần đây trên tạp chí hóa học của Mỹ cũng cho thấy húng lủi có khả năng phòng chống ung thư do trong rau chứa một loại hợp chất gọi là perillyl có khả năng “giải tán” sự tụ tập của các tế bào gây ung thư ruột, phổi, da…  \r\n Làm đẹp da Do húng lủi chứa nhiều vitamin, chất chống ôxy hóa và chất kháng khuẩn nên bạn có thể dùng nước ép húng lủi để vệ sinh da mặt sẽ rất tốt.   \r\nChữa trị vết cắn côn trùng Một nghiên cứu khác được công bố trên tạp chí Phytotherapy Research (Anh) còn cho biết, tinh dầu húng lủi có đặc tính chống lở loét, dùng chữa trị những vết cắn của côn trùng như muỗi, ong… rất hiệu quả.   Giúp hơi thở thơm mát. \r\nNgoài ra, rau húng lủi còn có công dụng tuyệt vời là giúp vệ sinh răng miệng, làm hơi thở thơm tho vì nó có khả năng ức chế sự tăng trưởng của vi khuẩn sống bám ở răng, lưỡi gây hôi miệng.', 30000, 100, 'hung.jpg', 'ko'),
(3057, 1, 2, 'Lá trà xanh', 'Trà xanh là thức uống quen thuộc của nhiều người Việt vì tính thơm mát, thanh lọc, hương vị mộc mạc mà thơm ngon.', 64000, 100, 'tra.jpg', 'ko');
INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `BanChay`) VALUES
(3058, 1, 2, 'Ngò rí', 'Cây ngò rí (mùi tàu) là một loại gia vị quen thuộc trong bữa cơm. Đông y còn sử dụng ngò rí làm vị thuốc trị 10 chứng bệnh hay gặp như tiêu chảy, loét miệng, thiêu máu... Không chỉ là loại gia vị giúp món ăn trở nên thơm ngon hơn, ngò rí (hay còn gọi là ngò ta hoặc rau mùi) còn mang lại nhiều lợi ích cho sức khỏe. Thường xuyên ăn ngò rí giảm thiểu lượng cholesterol xấu   \r\n1. Trị sưng viêm Ngò rí chứa hai thành phần dưỡng chất quan trọng là cineole và axít linoleic có tác dụng chống viêm nhiễm rất tốt. Do vậy, đối với những ai bị viêm khớp hay thấp khớp thì ngò rí được xem loại thực phẩm không nên bỏ qua trong các bữa ăn hàng ngày. \r\n2. Hạ cholesterol xấu Thường xuyên ăn hoặc uống nước ép ngò rí sẽ giúp giảm thiểu lượngcholesterol xấu trong máu một cách hiệu quả. Đó là nhờ vào các hợp chất thiết yếu có trong cây ngò rí như axít linoleic, axít oleic, axít palmitic, axít stearic và axít ascorbic (vitamin C). Những hợp chất này có tác dụng làm giảm thiểu cholesterol xấu bám vào các thành động mạch và tĩnh mạch, đồng thời tăng lượng cholesterol tốt trong máu, giúp bảo vệ hệ thống tim mạch luôn khỏe mạnh. \r\n3. Trị tiêu chảy Ngò rí chứa dồi dào chất borneol và linalool có tác dụng trợ giúp tiêu hóa, trị các chứng rối loạn tiêu hóa như ăn không tiêu, nôn mửa, kiết lỵ, viêm gan và viêm ruột kết. Ngoài ra, nó cũng rất hiệu quả trong việc điều trị bệnh tiêu chảy gây ra bởi các loại vi khuẩn và nấm vì các hợp chất cineole, borneol, limonene, alpha pinene và beta phelandrene hiện diện trong ngò rí có tác dụng chống vi khuẩn rất mạnh. \r\n4. Trị loét miệng Nhờ vào hợp chất citronelol có khả năng khử trùng mạnh và các hợp chất chống vi khuẩn khác, việc ăn ngò rí thường xuyên giúp cơ thể chống lại các chứng viêm loét miệng. Bên cạnh đó, ngò rí còn giúp bạn có hơi thở thơm tho hơn. \r\n5. Trị bệnh thiếu máu Thường xuyên ăn ngò rí giúp bổ sung cho cơ thể một lượng lớn các vitamin A, C, B1, B2 và chất sắt, giúp điều trị bệnh thiếu máu một cách an toàn và hiệu quả. \r\n6. Trị bệnh đậu mùa Tinh dầu ngò rí có chứa chất chống ôxy hóa mạnh mẽ, có tác dụng chống vi khuẩn, chống nhiễm trùng và giải độc cho cơ thể. Ngoài ra, sự hiện diện của vitamin C và chất sắt có trong ngò rí giúp tăng cường hệ thống miễn dịch, từ đó giúp phòng ngừa và trị bệnh đậu mùa một cách hiệu quả. Hơn nữa, ngò rí còn có khả năng làm dịu các cơn đau và giúp bênh nhân bị đậu mùa nhanh phục hồi sức khỏe. \r\n7. Trị rối loạn kinh nguyệt Ngò rí đặc biệt tốt cho phụ nữ, nhất là những người bị rối loạn kinh nguyệt. Bằng cách kích thích và làm cân bằng các nội tiết tố trong cơ thể người phụ nữ, ngò rí giúp làm dịu các cơn đau bụng kinh và điều hòa kinh nguyệt. \r\n8. Chăm sóc mắt Ngò rí có chứa nhiều chất chống ôxy hóa, vitamin A, vitamin C và các khoáng chất như phốt pho… giúp ngăn chặn sự lão hóa sớm ở mắt, từ đó giúp phòng ngừa tình trạng thoái hóa điểm vàng và làm dịu căng thẳng cho mắt. \r\n9. Làm đẹp da Ngò rí rất tốt cho da. Bôi hỗn hợp nước ép từ lá ngò rí trộn với bột nghệ lên mặt có thể giúp trị mụn bọc và mụn trứng cá. \r\n10. Cân bằng đường huyết Bên cạnh những lợi ích nói trên, ngò rí còn có tác dụng cân bằng lượng đường huyết trong cơ thể nhờ vào việc kích thích lượng insulin trong máu tăng nhanh hơn. Ngoài ra, thường xuyên ăn ngò rí còn có thể giúp cơ thể chữa cảm lạnh, nhức đầu, sổ mũi, ngạt mũi, suy nhược thần kinh, đau dạ dày và điều trị yếu sinh lý ở nam giới.', 38000, 100, 'ngo.jpg', 'ko'),
(3059, 1, 1, 'Rau ngót', 'Rau ngót tính mát lạnh (nấu chín sẽ bớt lạnh), vị ngọt. Có công năng thanh nhiệt, giải độc, lợi tiểu, tăng tiết nước bọt, hoạt huyết hoá ứ, bổ huyết, cầm huyết, nhuận tràng, sát khuẩn, tiêu viêm, sinh cơ, có nhiều tác dụng chữa bệnh.', 86000, 100, 'ngot.jpg', 'ko'),
(3060, 1, 2, 'Rau tía tô ', 'Cây tía tô thường có chiều cao 0,5- 1m. Lá mọc đối, mép khía răng, mặt dưới tím tía, có khi hai mặt đều tía, nâu hay màu xanh lục có lông nhám.     \r\nCÔNG DỤNG Toàn thân có mùi tinh dầu thơm, có giá trị dinh dưỡng khá cao, giàu vitamin A, C, giàu hàm lượng Ca, Fe, và P, loại cây tía tô không những có thể dùng để chế biến các món ăn ngon miệng mà có tính năng chữa bệnh khá cao như: chữa mẩn ngứa, làm đẹp da,c hữa cảm ho, chữa cảm lạnh, chữa cảm sốt, nhức đầu, ngạt mũi, hữa đau bụng, đầy chướng, chữa các chứng chảy máu do ho, nôn, tiêu chảy.', 39000, 100, 'tiato.jpg', 'ko'),
(3061, 1, 2, 'Rau thì là', 'Thì là: một loài cây lấy lá làm gia vị và lấy hạt làm thuốc được sử dụng rất phổ biến ở nước ta.', 54000, 100, 'thila.jpg', 'ko'),
(3062, 1, 2, 'Rau cải mầm', 'Rau cải mầm tại Organicfood.vn đảm bảo được lựa chọn lựa và nuôi trồng trong môi trường hoàn toàn hữu cơ, đảm bảo an toàn sức khỏe và giữ nguyên các chất dinh dưỡng cho cơ thể.   \r\nCÔNG DỤNG Hàm lượng chất dinh dưỡng có trong rau cải mầm cao gấp khoảng 5 lần rau thông thường, chứa nhiều Vitamin A, B, C, E, chất xơ, khoáng chất và Amino acid, giúp tăng cường kháng thể, hỗ trợ phòng chống và điều trị bệnh ung thư, cao huyết áp, tim mạch, mỡ máu cao…, thích hợp với người tiêu hóa kém và người ăn kiêng. Bạn chỉ cần dùng một lượng nhỏ rau mầm mỗi ngày (50-70g) cũng đủ để cung cấp đầy đủ chất dinh dưỡng cho cơ thể. Rau cải mầm chứa các chất chống ôxy hoá, làm chậm quá trình lão hóa, giúp phụ nữ tăng cường sắc đẹp và sức khỏe một cách tự nhiên.', 110000, 100, 'caimam.jpg', 'ko'),
(3063, 1, 2, 'Rau bồ công anh', 'RAU BỒ CÔNG ANH còn gọi là rau bồ cóc, diếp dại, diếp trời,…, rau mọc hoang khá phổ biến ở Việt Nam. Bồ Công Anh được biết đến như một loại thảo dược quý trong Đông y, chữa các bệnh: loãng xương, suy nhược cơ thể, mụn cóc, tắt sữa, viêm dạ dày, giải độc gan,… Đây là loại rau đặc biệt có thể sử dụng tất cả các bộ phận rễ, lá và hoa.\r\nTuy nhiên ít ai biết Bồ Công Anh còn là một loại rau ngon và đầy dưỡng chất. Đặc biệt lá và rễ chứa rất nhiều vitamin (A, B, C, K…) và khoáng chất (magnesium, kẽm, kali, sắt, canxi và cholin), đồng thời có nhiều protein hơn cả rau chân vịt.    \r\nTa có thể ăn Bồ Công Anh bằng nhiều cách: trộn salad, xào, nấu canh, đặc biệt ăn kèm bánh xèo rất ngon miệng. Trà làm từ lá và hoa Bồ Công Anh giúp lợi tiểu, nhuận tràng và thanh lọc cơ thể hiệu quả.  ', 80000, 100, 'bocong.jpg', 'ko'),
(3064, 2, 2, 'Hành tím', 'Hành tím có tên khoa học là Allium Ascalonicum, hiện nay chúng được trồng trên khắp thế giới. Hành tím là loài cây thân thảo, có củ to tròn, vỏ bên ngoài màu tím đậm. Hành tím thường được chế biến để ăn sống trong món salad, bánh mì hay món nhúng. Lưu ý, khi ăn hành tím, không lột bỏ quá nhiều lớp vỏ tím, vì trong lớp vỏ này có chứa đến 75% chất chống oxy hóa, rất tốt cho sức khỏe.\r\nVề giá trị dinh dưỡng, theo nhiều nghiên cứu thì trong hành tây tím có chứa nhiều dưỡng chất và hàm lượng cũng cao hơn so với hành tây trắng. Hành tây tím có chứa chất chống oxy hóa với hàm lượng từ 415-1917 mg (hành trắng chỉ có 270-1187 mg). Hành tím cũng có chứa hàm lượng vitamin C cao, biotin, chromium, canxi, vitamin B6, axit folic, lưu huỳnh và chất xơ rất tốt cho sức khỏe. Những dưỡng chất này đều mang lại lợi ích cho cơ thể, mỗi thành phần có công dụng riêng.', 67000, 100, 'hanhtim.jpg', 'ko'),
(3065, 2, 1, 'Khoai môn', 'Khoai môn là loại củ quen thuộc trong ẩm thực Việt, nấu được cả món mặn và ngọt: chè khoai môn, canh khoai môn, bánh ngọt...', 140000, 100, 'khoaimon.jpg', 'ko'),
(3066, 2, 2, 'Củ cải đỏ', 'Củ cải đỏ hay còn được gọi là củ cải đường là loại rau củ có quan hệ gần gũi với củ dền. Củ cải đỏ có hình dạng tròn, kích thước nhỏ, có lớp vỏ mỏng màu đỏ bao bọc phần thịt trắng bên trong. Củ cải đỏ là một trong những loại rau củ có chất kháng viêm cao và tác dụng phòng chống ung thư rất tốt. \r\nCÔNG DỤNG Củ cải chứa nhiều vitamin B, và nhiều loại khoáng chất có lợi cho sức khỏe, chính vì vậy trong các bài thuốc dân gian vẫn sử dụng để chữa bệnh. Củ cải làm món ăn không bị nóng, mùa đông lạnh chúng ta thường ăn nhiều thịt, ăn thịt sẽ sinh đờm, dễ bị nóng. Khi ăn thịt chúng ta nên kết hợp với một ít củ cải hoặc làm một số món ăn củ cải, như thế không dễ bị nóng và càng có tác dụng bồi bổ dinh dưỡng rất tốt. Ngoài ra củ cải đường còn có các công dụng mà ít ai biết đến như: Trị lao phổi ho ra máu.Trị viêm phế quản mạn tính. Trẻ nhỏ bị ho.Chữa nhiệt miệng. Ăn củ cải sống - nhuận phổi. CÁCH SỬ DỤNG Củ cải đỏ được chế biến thành món nộm, hầm với món canh, ngoài ra còn có thể ngâm với dầu giấm để làm món chua ngọt. Sau đây là một số hướng dẫn để chế biến món ăn từ củ cải đỏ: Súp củ cải đỏ Salad củ cải đỏ và rau diếp   LƯỢNG DÙNG Vài củ cải đỏ mỗi ngày chế biến kèm theo các món ăn khác trong bữa cơm sẽ giúp món ăn giảm bớt tính nhiệt và lượng mỡ. \r\nCÁCH BẢO QUẢN Trước khi cho vào tủ lạnh hãy cắt riêng phần củ và lá. Bỏ phần lá và củ vào trong túi bóng riêng biệt và cho vào ngăn rau của tủ lạnh. Màu xanh của lá thì có thể chỉ kéo dài được trong khoảng 3,4 ngày, còn phần gốc thì có thể kéo dài tới 3 tuần.', 86000, 100, 'caido.jpg', 'ko'),
(3067, 2, 2, 'Củ mì', 'Là một trong các cây lương thực chủ đạo của nước ta. Khoai mì có thân nhỏ, cao khoảng 1, 5 đến 3 m, toàn cây có nhựa trắng và thân có các u nần do cuống lá để lại. Lá khoai mì thuộc dạng lá đơn, mọc so le với các cuống lá dài, phiến lá xẻ thành 5 – 8 thùy, hình chân vịt. Hoa khoai mì mọc thành cụm ở ngọn, quả hình trứng, có cánh. Rễ khoai mì thuộc dạng rễ củ, phình to và có thể dài đến 60 cm với lớp vỏ dày, lớp vỏ tróc màu vàng nâu, lớp vỏ giữa màu hồng tím, chứa nhiều tinh bột bên trong và có sợi trục như tim nến ở lõi.\r\nỞ nước ta, các loại khoai mì được trồng rộng khắp để lấy củ làm thức ăn cho người, gia súc và sản xuất các sản phẩm nông nghiệp (như tinh bột).', 40000, 100, 'cumi.jpg', 'ko');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(20) NOT NULL,
  `MatKhau` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoVaTen` varchar(30) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(11, 'hung', '123', 'lephuocnguyenhung7@gmail.com', 'Nguyên Hưng', 'Đức Tân', '0361234562', '2024-02-19'),
(12, 'hieu', '456', 'kimnganflowervitus@gmail.com', 'Lê Hiếu', 'Măng Tố', '0972341234', '2024-02-19');

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
  ADD PRIMARY KEY (`ID_HoaDon`,`ID_ThanhVien`,`ID_SanPham`),
  ADD KEY `ID_HoaDon` (`ID_HoaDon`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
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
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

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
  ADD KEY `ID_NhaCungCap` (`ID_NhaCungCap`),
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
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID_HoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID_NCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3068;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`ID_HoaDon`) REFERENCES `hoadon` (`ID_HoaDon`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NhaCungCap`) REFERENCES `nhacungcap` (`ID_NCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
