-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 04:04 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userAdmin` varchar(255) NOT NULL,
  `passAdmin` varchar(255) NOT NULL,
  `emailAdmin` varchar(255) NOT NULL,
  `avata` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userAdmin`, `passAdmin`, `emailAdmin`, `avata`, `status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', 'admin.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdat`
--

CREATE TABLE `chitietdat` (
  `MaDat` varchar(20) CHARACTER SET utf8 NOT NULL,
  `MaTour` int(11) NOT NULL,
  `NgayDi` varchar(200) CHARACTER SET utf8 NOT NULL,
  `SoLuongKhach` int(11) NOT NULL,
  `khac` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `MaCom` int(11) NOT NULL,
  `MaTV` int(20) NOT NULL,
  `MaTour` int(20) NOT NULL,
  `NoiDungCom` text CHARACTER SET utf8 NOT NULL,
  `Vote` int(11) NOT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`MaCom`, `MaTV`, `MaTour`, `NoiDungCom`, `Vote`, `reply`) VALUES
(1, 1, 1, 'Các mẫu website bán tour đều có thể cho phép các doanh nghiệp công ty tùy ý cấu hình các tour du lịch về giá cả, thời gian, điểm đến, điểm đi, lịch trình chuyến ...', 5, ''),
(2, 1, 1, 'rthjh,jhfđ', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `dattour`
--

CREATE TABLE `dattour` (
  `MaDat` varchar(20) NOT NULL,
  `MaTV` int(20) NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaitour`
--

CREATE TABLE `loaitour` (
  `MaLoai` varchar(5) CHARACTER SET utf8 NOT NULL,
  `TenLoai` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaitour`
--

INSERT INTO `loaitour` (`MaLoai`, `TenLoai`) VALUES
('1', 'Tour Miền Bắc');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MaPH` int(11) NOT NULL,
  `TenNguoiGui` varchar(30) CHARACTER SET utf8 NOT NULL,
  `EmailNguoiGui` varchar(30) CHARACTER SET utf8 NOT NULL,
  `TieuDe` varchar(100) CHARACTER SET utf8 NOT NULL,
  `NoiDung` text CHARACTER SET utf8 NOT NULL,
  `NgayGui` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`MaPH`, `TenNguoiGui`, `EmailNguoiGui`, `TieuDe`, `NoiDung`, `NgayGui`) VALUES
(1, 'Nguyễn Bảo Ngọc', 'nguyenngoc1950@gmail.com', 'Hà Nội - Lào Cai - Sapa ', 'Cho mình hỏi về thời gian củ thể xuất phát ở đâu đc ko ạ?', '2018-11-16 13:21:09'),
(3, 'Trương Văn Dũng', 'tvdung@gmail.com', 'Miền Tây - Sa Đéc - Cần Thơ \r\n\r\n', 'Có hướng dẫn viên nào xinh đẹp trong tour này ko ạ?', '2018-11-16 08:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `MaSale` int(11) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gioithieu` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gianguoilon` int(11) NOT NULL,
  `giatreem` int(11) NOT NULL,
  `ngaykhoihanh` date NOT NULL,
  `diemkhoihanh` varchar(255) NOT NULL,
  `ngaythemSale` datetime NOT NULL,
  `slideshow` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`MaSale`, `MaLoai`, `title`, `gioithieu`, `noidung`, `image`, `gianguoilon`, `giatreem`, `ngaykhoihanh`, `diemkhoihanh`, `ngaythemSale`, `slideshow`) VALUES
(1, 1, 'Hà Nội - Lào Cai - Sapa', ' TP. HỒ CHÍ MINH - NỘI BÀI (HÀ NỘI) - LÀO CAI – SAPA (Ăn trưa, chiều)', '- Bản Tả Van - Lao Chải đường vào Tả Van quanh co một bên là thung lũng Mường Hoa với những thửa ruộng bậc thang màu mỡ được tổ điểm bởi màu xanh của ngô và lúa.', '5bf2c02dd7539-5be501e5d645a-43534320_593631531071891_5692022584321769472_n.jpg', 7500000, 2000000, '2018-11-27', 'Sài Gòn', '2018-11-21 05:18:27', '5bf2c02dd7771-5be501e5d645a-43534320_593631531071891_5692022584321769472_n.jpg'),
(3, 1, 'Hà Nội - Lào Cai ', 'sdfdfd', '- Bản Tả Van - Lao Chải đường vào Tả Van quanh co một bên là thung lũng Mường Hoa với những thửa ruộng bậc thang màu mỡ được tổ điểm bởi màu xanh của ngô và lúa.', '5bf2c916da77e-5bee65750e5d1-1_45865.jpg', 546546, 879678, '0000-00-00', 'Sài Gònn', '2018-11-19 03:30:46', '5bf2c916da934-5bee65750e5d1-1_45865.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `MaTV` int(11) NOT NULL,
  `usename` varchar(255) NOT NULL,
  `passTV` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(11) NOT NULL,
  `emailTV` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `soCMT` int(20) NOT NULL,
  `soDT` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`MaTV`, `usename`, `passTV`, `hoten`, `gioitinh`, `emailTV`, `diachi`, `soCMT`, `soDT`) VALUES
(1, 'ngocbao', 'e10adc3949ba59abbe56e057f20f883e', 'ngocbao', 'nam', 'ngocbao@gmail.com', 'Quảng Bình', 194646574, 366388171);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `TenTinTuc` varchar(30) CHARACTER SET utf8 NOT NULL,
  `AnhTT` varchar(30) CHARACTER SET utf8 NOT NULL,
  `NoiDung` text CHARACTER SET utf8 NOT NULL,
  `NgayGuiTT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `MaTour` int(11) NOT NULL,
  `MaLoai` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TenTour` varchar(100) CHARACTER SET utf8 NOT NULL,
  `TGTour` varchar(255) CHARACTER SET utf8 NOT NULL,
  `GiaTour` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NoiDungTour` text CHARACTER SET utf8 NOT NULL,
  `AnhTour` varchar(255) CHARACTER SET utf8 NOT NULL,
  `NgayKhoiHanh` datetime NOT NULL,
  `DiemKhoiHanh` varchar(100) CHARACTER SET utf8 NOT NULL,
  `NgayThem` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`MaTour`, `MaLoai`, `TenTour`, `TGTour`, `GiaTour`, `NoiDungTour`, `AnhTour`, `NgayKhoiHanh`, `DiemKhoiHanh`, `NgayThem`) VALUES
(1, '1a', 'Đà Lạt - Giao Lưu Văn Hoá Cồng Chiêng Tây Nguyên\r\n', 'Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3), khởi hành đi Đà Lạt. Trên đường đi tham quan:\r\n- Thác Đam B’ri: một trong những thác nước đẹp và cao nhất tại cao nguyên Bảo Lộc. Ăn trưa tại Khu du lịch.\r\n\r\n', '555555555', 'Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3), khởi hành đi Đà Lạt. Trên đường đi tham quan:\r\n- Thác Đam B’ri: một trong những thác nước đẹp và cao nhất tại cao nguyên Bảo Lộc. Ăn trưa tại Khu du lịch. \r\n- Nhà thờ Domain De Marie: theo dòng Nữ tu Bác Ái, với kiến trúc là sự kết hợp hài hòa giữa phương Đông và phương Tây cùng vườn hoa được chăm chút kỹ đã tạo nên sức hút cho ngôi nhà thờ.\r\nBuổi tối, Quý khách tự do thưởng thức cà phê trong không khí se lạnh của Đà Lạt, ngắm cảnh Hồ Xuân Hương về đêm. \r\nNghỉ đêm tại Đà Lạt.\r\n\r\n', '', '2018-11-16 06:12:22', 'da nang', '2018-11-16 01:10:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdat`
--
ALTER TABLE `chitietdat`
  ADD PRIMARY KEY (`MaDat`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`MaCom`);

--
-- Indexes for table `dattour`
--
ALTER TABLE `dattour`
  ADD PRIMARY KEY (`MaDat`);

--
-- Indexes for table `loaitour`
--
ALTER TABLE `loaitour`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MaPH`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`MaSale`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`MaTV`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`MaTour`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `MaCom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MaPH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `MaTV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `MaTour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
