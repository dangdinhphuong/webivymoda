-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2021 lúc 06:16 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webivymoda`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartegory`
--

CREATE TABLE `cartegory` (
  `id` int(11) NOT NULL,
  `cate_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(1, 65, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `Tensp` varchar(255) NOT NULL,
  `Anh_sp` varchar(255) NOT NULL,
  `Gia_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `cate_id`, `Tensp`, `Anh_sp`, `Gia_sp`) VALUES
(64, 0, 'QUẦN LỬNG KHAKI DÁNG REGULAR MS 21E3016', 'sp1.1.jfif', 150000),
(65, 0, 'quả cam', 'sp1.jfif', 995000),
(67, 0, 'ZUÝP BÚT CHÌ CẠP NHÚN', 'sp5.jfif', 350000),
(68, 0, 'ZUÝP BÚT CHÌ CẠP NÂU', 'sp10.jfif', 550000),
(72, 0, 'Đầm dài hồng', 'sp14.jfif', 550000),
(73, 0, 'ZUÝP BÚT CHÌ DÀI CẠP NÂU', 'sp16.jfif', 650000),
(74, 0, 'ĐẦM DÀI VÀNG', 'sp15.jfif', 550000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `images`, `email`, `password`) VALUES
(1, 'admin', '', '', '202cb962ac59075b964b07152d234b70'),
(3, 'admin', '', 'phamdinhphong12@gmail.com', '$2y$10$d4NziDmCv1TX0JtD91WxM.p3Ygurp16x3cltDxQdZkqBeNOzt9hRS'),
(4, 'admin', '', 'admin1234@gmail.com', '$2y$10$IlGr61ESlJ8CcaMgWnwG5eirZYvjHchWu8IEesSpFZA0kZrKcxQ4y');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cartegory`
--
ALTER TABLE `cartegory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cartegory`
--
ALTER TABLE `cartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
