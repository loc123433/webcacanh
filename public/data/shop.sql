-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 06:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
DROP DATABASE IF EXISTS `shopca`;
CREATE DATABASE IF NOT EXISTS `shopca` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shopca`;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Cá cảnh- vật nuôi'),
(2, 'Thức ăn'),
(3, 'Đồ trang trí hồ- bể'),
(4, 'cây thủy sinh');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi_id` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` float NOT NULL DEFAULT 0,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhangct`
--

CREATE TABLE `donhangct` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mathang_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `thanhtien` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

CREATE TABLE `mathang` (
  `id` int(11) NOT NULL,
  `tenmathang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giagoc` float NOT NULL DEFAULT 0,
  `giaban` float NOT NULL DEFAULT 0,
  `soluongton` int(11) NOT NULL DEFAULT 0,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `luotmua` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathang`
--


INSERT INTO `mathang` (`id`, `tenmathang`, `mota`, `giagoc`, `giaban`, `soluongton`, `hinhanh`, `danhmuc_id`, `luotxem`, `luotmua`) VALUES
(1, 'Cá Dĩa Beo - Leopar Red Discus', '<p>Cá Dĩa Beo - Leopar Red Discus</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C-30°C</p><p>Thức ăn: trùn chỉ, tim bò...</p><p>Tập tính: sống bày đàn</p>', 450000, 450000, 10, 'images/ca/ca1.jpg', 1, 1, 0),
(2, 'Cá Phượng Hoàng Vàng - German Gold Ram Balloon', '<p>Cá Phượng Hoàng Vàng - German Gold Ram Balloon</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C</p><p>Thức ăn: cám,trùn chỉ,bobo,...</p><p>Tập tính: sống bày đàn</p>', 50000, 50000, 20, 'images/ca/ca2.jpg', 1, 1, 0),
(3, 'Cá Phượng Hoàng Lam Lùn - Baloon German Ram', '<p>Cá Phượng Hoàng Acara - Blue Acara Cichlid</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C</p><p>Thức ăn: cám,trùn chỉ,bobo,...</p><p>Tập tính: sống bày đàn</p>', 30000, 30000, 20, 'images/ca/ca3.jpg', 1, 0, 0),
(4, 'Cá Phượng Hoàng', '<p>Cá Phượng Hoàng Lam Lùn - Baloon German Ram</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C</p><p>Thức ăn: cám,trùn chỉ,bobo,...</p><p>Tập tính: sống bày đàn</p>', 44000, 44000, 30, 'images/ca/ca4.jpg', 1, 0, 0),
(5, 'Cá Phượng Hoàng Peru Đỏ - Apistogramma Agassizii Red', '<p>Cá Phượng Hoàng Peru Đỏ - Apistogramma Agassizii Red</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C</p><p>Thức ăn: cám,trùn chỉ,bobo,...</p><p>Tập tính: sống bày đàn</p>', 30000, 30000, 25, 'images/ca/ca5.jpg', 1, 0, 0),
(6, 'Cá Phượng Hoàng Ngũ Sắc Lùn - Electric Blue Ram Balloon', '<p>Cá Phượng Hoàng Ngũ Sắc Lùn - Electric Blue Ram Balloon</p><p>Môi trường sống</p><p>pH: 7 </p><p>Nhiệt độ: 28°C</p><p>Thức ăn: cám,trùn chỉ,bobo,...</p><p>Tập tính: sống bày đàn</p>', 30000, 30000, 50, 'images/ca/ca6.jpg', 1, 0, 0),
(7, 'Cây thủy sinh cắt cắm dễ trồng không CO2', '<p>Hàng có luân phiên nên nếu phân loại nào hết thì sẽ được thay bằng cây khác tương tự.</p><p>1 cốc cây có khoảng 13-25 ngọn tuỳ loại</p><p>Trong quá trình vận chuyển có thể có rủi ro, khách hàng cân nhắc vấn đề này trước khi đặt hàng. Khi nhận hàng gặp vấn đề về hàng không đúng hoặc sự cố khác vui lòng liên hệ ngay shop để được hỗ trợ kịp thời</p>', 13500, 13500, 30, 'images/cay/cay1.jpg', 4, 0, 0),
(8, 'Cây thủy sinh Sen cảnh trang trí bể cá, tép Betta Guppy', '<p>Mô hình cây Sen cảnh nhựa dùng trang trí bể cá cảnh</p><p>Sản phẩm mới 100%, chất lượng cao</p><p> Sản phẩm thích hợp cho bể cá của bạn, cũng là một nơi ẩn náu tuyệt vời cho cá, giúp cá chơi đùa thích thú hơn.</p><p>Được thiết kế với chân đế có trọng lượng nên chúng có thể đứng vững trong bể cá.</p><p>Sản phẩm được làm sống động và có màu sắc chi tiết để tăng thêm sự sống động và tự nhiên cho bể cá của bạn.</p>', 18000, 18000, 20, 'images/cay/cay2.jpg', 4, 0, 0),
(9, 'Cây ấu thái thủy sinh - bán cạn dễ trồng như sen - trang trí bể cá ấu thái top view', '<p>Đọc kỹ trách phát sinh khiếu nại xảy ra</p><p>Lưu ý ấu rất nhậy cảm, trường hợp đơn hàng bị shiper giao chậm hoặc delay khiến hàng hư hỏng, bên shop không đền bù nha, vì lãi không báo nhiêu đâu</p><p>Giá trên là 1 cây</p><p>Trường hợp hàng là Cây hư hỏng do a chị đặt ship Tiết Kiệm shop sẽ không bồi hoàn.</p>', 6799, 6799, 10, 'images/cay/cay3.jpg', 4, 0, 0),
(10, 'Cây Thủy Sinh Hồng Thái Dương - 20k/10 ngọn', '<p>Cây Thủy Sinh Hồng Thái Dương</p><p>Vị Trí : Hậu cảnh , Trung Cảnh tùy mục đích và bố cục khi chơi</p>, Độ khó : dễ </p><p>Tốc Độ Phát Triển : Nhanh</p><p>Ánh sáng : Trung bình , cao</p>', 50000, 50000, 15, 'images/cay/cay4.jpg', 4, 1, 0),
(11, 'Cây thủy sinh rong la hán xanh trồng thẳng, trang trí, lọc hồ cá 10 nhánh C002 (CHỈ SHIP KHU VỰC PHÍA NAM)', '<p>1 nhánh dài từ 15-20cm.</p><p>Số lượng: 5, 10, 20 nhánh.</p><p>Rong la hán (Cây la hán xanh) là một loại cây thuỷ sinh phổ biến được trồng trong các bể cá nhỏ và bể thuỷ sinh. </p><p>Rong la hán (Cây la hán xanh) là một loại cây thuỷ sinh phổ biến được trồng trong các bể cá nhỏ và bể thuỷ sinh. </p>', 100000, 100000, 10, 'images/cay/cay5.jpg', 4, 0, 0),
(12, 'Thợ Lặn Bể Cá Đồ Trang Trí Hồ Cá Tép, Thuỷ Sinh', '<p>Mô hình thợ lặn trang trí hồ cá tép thuỷ sinh giúp bể của bạn trở nên thú vị hơn
Vui lòng chọn theo PHÂN LOẠI đã ghi chú</p>', 62800, 62800, 20, 'images/ho/ho1.jpg', 3, 0, 0),
(13, 'Đồ Trang Trí Bể Cá Hình Mèo Hoạt Hình Mini', '<p>Thông số kỹ thuật: Chất liệu: Nhựa</p><p>Kích thước: xấp xỉ 4cm / 1.57in</p><p>7 màu sắc và kiểu dáng tùy chọn: Tự chọn</p><p>Số lượng: 1</p>', 20000, 20000, 20, 'images/ho/ho2.jpg', 3, 0, 0),
(14, 'Cây cầu bằng resin nhân tạo tiện dụng trang trí bể cá cảnh đẹp mắt chất lượng cao', '<p>Loại sản phẩm: Đồ trang trí retro bể cá cảnh</p><p>Gói hàng bao gồm: 1 đồ trang trí bể cá (Không bao gồm bất kỳ phụ kiện nào khác)</p><p>Chất liệu: Resin</p>', 51400, 51400, 20, 'images/ho/ho3.jpg', 3, 0, 0),
(15, 'Mô hình Mái Đình ', '<p>Chất liệu sản phẩm: Resin - composite</p><p>Chất liệu sản phẩm: Resin - composite</p><p>Rửa sạch trước khi cho vào bể.</p><p>Rửa sạch trước khi cho vào bể.</p>', 185000, 185000, 20, 'images/ho/ho4.jpg', 3, 0, 0),
(16, 'Thác khói trầm hương cao cấp [NON BỘ], Tháp trầm hương khỏi ngược - Thưởng trà, tĩnh tâm', '<p>Thác khói trầm hương cao cấp [NON BỘ], Tháp trầm hương khỏi ngược - Thưởng trà, tĩnh tâm</p><p>Lưu ý khi mua Thác khói trầm hương cao cấp [NON BỘ], Tháp trầm hương khỏi ngược</p><p>Quý khách vui lòng chọn đúng phân loại sản phẩm cần mua, tránh trường hợp nhầm lẫn khi nhận hàng.</p><p>SHOP KHUYẾN KHÍCH KHÁCH HÀNG MUA TRẦM NỤ CỦA SHOP ĐỂ CÓ CHẤT LƯỢNG TỐT NHẤT, KHÓI CHẢY NHIỀU, MÙI HƯƠNG THƠM</p>', 24000, 24000, 20, 'images/ho/ho5.jpg', 3, 0, 0),
(17, '50g Thức Ăn Cá Cám Thái Inve 5/8 - Cám Inve 3/5 Cho Cá Guppy, Betta, Bình Tích, Cá Nhỏ, Cá Thủy Sinh', '<p>Kích thích phát triển toàn diện cá</p><p>Là thức ăn dạng hạt</p><p>Đạm trên 40%</p><p>Mùi hương kích thích cá ăn mạnh</p><p>Cám ít tan giúp giữ sạch môi trường nước</p>', 39000, 39000, 20, 'images/t/t1.jpg', 2, 0, 0),
(18, 'Cám cá GoldFish BESSN - Cám cá Ranchu - Thức ăn Cá vàng - Tăng trọng và Lên màu sắc đẹp', '<p>Đặc điểm: Cám cá GoldFish BESSN giàu Protein, chất béo, vitamin, khoáng chất,... giúp cá tăng trưởng nhanh và lên màu đẹp.</p><p>Thành phần: Bột cá, Bột tôm, Bột mì, mầm lúa mì, dầu cá, tảo xoắn Spirulina, vitamin tổng hợp,...</p><p>Thành phần: Bột cá, Bột tôm, Bột mì, mầm lúa mì, dầu cá, tảo xoắn Spirulina, vitamin tổng hợp,...</p>', 84000, 84000, 20, 'images/t/t2.jpg', 2, 0, 0),
(19, 'THỨC ĂN CÁ RỒNG INCH GOLD 454gr', '<p>THỨC ĂN CÁ RỒNG INCH GOLD 454gr</p><p>Inch Gold thức ăn cao cấp dành cho cá rồng , là nhãn hiệu được tin dùng bởi các trại cá rồng nước ngoài .</p><p> Là dòng thức ăn cao cấp ăn giàu protein , chất xơ và hỗn hợp vitamin .</p><p> Hỗ trợ tăng màu nhanh và kháng bệnh khuẩn .</p>', 109000, 109000, 200, 'images/t/t3.jpg', 2, 0, 0),
(20, 'San Hô Nút Áo Tím', '<p><strong>Môi trường sống</strong></p><p>pH: 7 </p><p>+ Định lượng: 120g/m2.</p><p>Nhiệt độ: 28°C</p><p><strong>Thức ăn:</strong></p><p> cám,trùn chỉ...</p><p>Tập tính: sống theo đàn,có cắn nhau</p>', 132000,120000, 40, 'images/cay/cay6.jpg', 4, 2, 1),
(21, 'San Hô Trứng Mực', '<p><strong>Môi trường sống</strong></p><p>pH: 7.</p><p>+ Định lượng: 120g/m2.</p><p>Nhiệt độ: 28°C</p><p><strong>Thức ăn:</strong></p><p> cám,trùn chỉ...</p><p>Tập tính: sống theo đàn,có cắn nhau</p>', 120000, 12000, 50, 'images/cay/cay7.jpg', 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT 3,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `sodienthoai`, `matkhau`, `hoten`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'abc@abc.com', '0988994683', '900150983cd24fb0d6963f7d28e17f72', 'Long Xuyên', 1, 1, 'signup.png'),
(2, 'def@abc.com', '11111111', '900150983cd24fb0d6963f7d28e17f72', 'Mèo máy Doraemon', 2, 1, 'avatar.jpg'),
(3, 'ghi@abc.com', '0988994685', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên GHI', 2, 1, NULL),
(4, 'kh1@gmail.com', '0988994686', '900150983cd24fb0d6963f7d28e17f72', 'Nguyễn Thị Thu An', 3, 1, NULL),
(5, 'kh2@gmail.com', '0988994687', '900150983cd24fb0d6963f7d28e17f72', 'Hồ Xuân Minh', 3, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`),
  ADD KEY `diachi_id` (`diachi_id`);

--
-- Indexes for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `mathang_id` (`mathang_id`);

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhangct`
--
ALTER TABLE `donhangct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `diachi_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD CONSTRAINT `donhangct_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhangct_ibfk_2` FOREIGN KEY (`mathang_id`) REFERENCES `mathang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
