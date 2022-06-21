-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 22, 2022 lúc 06:30 AM
-- Phiên bản máy phục vụ: 8.0.29-0ubuntu0.20.04.3
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `booking1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `description` text,
  `image` text,
  `status` tinyint(1) DEFAULT '1',
  `sub_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_comment` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `created_at`, `updated_at`, `deleted`, `description`, `image`, `status`, `sub_title`, `title`, `total_comment`) VALUES
(1, '2022-06-22 05:24:37', '2022-06-22 05:24:37', 0, 'Song Hỷ\r\nCâu chúc “Song Hỷ Lâm Môn” và hình ảnh chữ “Song Hỷ” mang sắc đỏ may mắn đã trở thành một biểu tượng trong văn hóa cưới hỏi Á Đông, mang ý nghĩa về hai việc vui mừng của cả nhà trai và nhà gái, thể hiện lời chúc phúc của hai bên gia đình về một cuộc sống hôn nhân hạnh phúc cho đôi vợ chồng son.\r\n\r\nLấy cảm hứng từ hơi thở đương đại, lễ cưới được trang hoàng một cách tinh tế với những tông màu phong phú, từ sắc đen xám hiện đại lạ mắt, sắc đỏ sang trọng và sắc trắng tao nhã. Đúng với tên gọi của chủ đề này: tất cả đều hướng tới sự hoàn mỹ.\r\n', '/blogs/0d16a781c28a42c6a7154344319c86b4.jpg', 1, 'Chúng tôi hiểu rằng, một đám cưới trong mơ sẽ luôn mang đậm dấu ấn cá nhân và phải thật đặc biệt như chính chủ nhân của buổi tiệc.', 'Wedding Concepts', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `current_id` bigint DEFAULT NULL,
  `date_checkin` date DEFAULT NULL,
  `date_checkout` date DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_person` int NOT NULL,
  `number_of_room` int NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `created_at`, `updated_at`, `current_id`, `date_checkin`, `date_checkout`, `deleted`, `email`, `name`, `number_of_person`, `number_of_room`, `payment`, `price`, `room_type`, `status`) VALUES
(1, '2022-06-22 02:00:13', '2022-06-22 02:00:13', 3, '2022-06-14', '2022-06-30', 0, 'hoangthanhcong@gmail.com', 'Hoàng Thanh công', 1, 0, 'Chưa thanh toán', 160000000, 'Cơ bản', 'Chưa nhận phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `blog_id` bigint NOT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_room`
--

CREATE TABLE `comment_room` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `reply_id` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_room`
--

INSERT INTO `comment_room` (`id`, `created_at`, `updated_at`, `deleted`, `email`, `message`, `name`, `reply_id`) VALUES
(1, '2022-06-22 02:08:29', '2022-06-22 02:08:29', 0, 'lethevinh@gmail.com', 'Phòng rất tốt', 'Lê Thế Vinh', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) DEFAULT NULL,
  `message` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` text,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `phone_number` varchar(30) NOT NULL,
  `total_price` decimal(12,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `created_at`, `updated_at`, `address`, `deleted`, `email`, `id_card`, `name`, `phone_number`, `total_price`) VALUES
(1, '2022-06-22 01:23:39', '2022-06-22 01:23:39', '', 0, 'hoangvanan@gmail.com', '', 'Hoàng Văn An', '096472333', '0.00'),
(2, '2022-06-22 01:24:10', '2022-06-22 01:24:10', '', 0, 'luongthemy@gmail.com', '', 'Lương Thế Mỹ', '096472334', '0.00'),
(3, '2022-06-22 01:24:34', '2022-06-22 01:24:34', '', 0, 'phamvanthai@gmail.com', '', 'Phạm Văn Thái', '096322222', '0.00'),
(4, '2022-06-22 01:25:03', '2022-06-22 01:25:03', '', 0, 'phamtiennam@gmail.com', '', 'Phạm Tiến Nam', '0968300399', '0.00'),
(5, '2022-06-22 01:25:36', '2022-06-22 01:25:36', '', 0, 'nguyenvanthanh@gmail.com', '', 'Nguyễn Văn Thành', '096473333', '0.00'),
(6, '2022-06-22 01:27:28', '2022-06-22 01:27:28', '', 0, 'lebadinh@gmail.com', '', 'Lê Bá Đinh', '0965888999', '0.00'),
(7, '2022-06-22 01:28:00', '2022-06-22 01:28:00', '', 0, 'qqhien@gmail.com', '', 'Quy Thị  Hiền', '099847722', '0.00'),
(8, '2022-06-22 01:28:33', '2022-06-22 01:28:33', '', 0, 'luongvanbang@gmail.com', '', 'Lương Văn Bằng', '0965932032', '0.00'),
(9, '2022-06-22 02:00:13', '2022-06-22 02:00:13', NULL, 0, 'hoangthanhcong@gmail.com', NULL, 'Hoàng Thanh công', '0', '160000000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'ADMIN'),
(2, NULL, NULL, NULL),
(3, NULL, NULL, 'ADMIN'),
(4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `bed_size` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `image` text,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `number_amount` int NOT NULL,
  `price` double NOT NULL,
  `room_size` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `created_at`, `updated_at`, `bed_size`, `deleted`, `description`, `image`, `location`, `name`, `number_amount`, `price`, `room_size`, `unit`) VALUES
(1, '2022-06-22 00:57:27', '2022-06-22 00:57:27', 'Kingsize', 1, '<p><i>ewaeraewraewr</i></p><p>&nbsp;</p><p><i>aeraeraewr</i></p><p><i>aeraeraewr</i></p><p><i>aeraerqaeraer</i></p><p><i>aeraeraeraeraer</i></p>', NULL, '', '', 0, 0, '0m2', ''),
(2, '2022-06-22 01:06:55', '2022-06-22 01:06:55', 'Kingsize', 1, '', NULL, '', '', 0, 0, '0m2', ''),
(3, '2022-06-22 01:49:37', '2022-06-22 01:49:37', 'Smallsize', 0, '<p>Bạn đủ điều kiện nhận giảm giá Genius tại Vung Tau Melody Apartment! Để tiết kiệm tại chỗ nghỉ này, bạn chỉ cần <a href=\"https://account.booking.com/auth/oauth2?dt=1655836574&amp;response_type=code&amp;aid=309654&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;bkng_action=hotel&amp;lang=vi&amp;state=UtsGBH3E6naThKtOYXGRraF4diwO0d2sh-FOTZM4RoY8DRzHdYXDGVv7YCx7Gm69HE5kTJvdFDj7MqHvTefL01tlDUS6uZgviCj5GcOkd8lVK7A91KE-iuCpN5_SMsC_I02P7MC4MjMXFIWHsBLpkMDYoE8KeeD2YbExW0VpYiu1lfBYPnPBBW5J-1QU5sqRQvuxv2rGomde7NkaV1NWdLOQEj2lFAuktbcGAi5hW79rZB3aIxS27rWpAto_XlHp8H1ZB1k9ekqnYJtwV_DpMG_38ZAsS3LYXzWyEH9PXHnsU-E0OC3N0nwn4uez8uM2Goa1WqC0zJOXylLf6twIbG066lKDBVSJ61kdZlmEMX86LjuXgeN_y8HZg3UGGD3RNQqCP9wARqy5he8I4Buxe-kFceteRCmPrzA26EMZAgh-7GhDDqAWG5XpkNH5FZ70pLaWOu1TiK1onXtpxW1WMFChPSb9M0UETmYe5g-NDhPCWAwTH1lB7f_liIzICs9BsGGnZ_cCpWYbKKGsCr-tWGyDjqHbN61sk_2y8ePrk-gzGczfvHTx91tMMgA9RXR1SRjCPABVcWSqOifh5kIqYsoFKD0lpn0aMGjoNkG1Ar3a2mOqnvF_gDgrwoKo6ZgfrQZKZyiZtG55kMZ-BhCu1i_OJV0x8ewjHfYtvfxiLMOYUD7nZDhTWd10R1YkMufRE-YGUgmFoxjBQ_SzUwaPXxSh7Go_QSmnof7c__q8iITB9toXG6g6vXw3BoMEVRmUHdFP5cj6vc5XUgSydI1JRCRux8QWhD1aIcNUrDam5KFVqPLo4R2VG1Yr1gPd8eQU9ZlPXA_4oaz_9W-nyPj62Yhcv21L9lYtyk1EzwQS232rrbBoCYYdkxQ1Ed4_jxvKbBwC2_9DGzxfqpfDnrCmyXfs4IlCUYHmTYVhoo6ktYlaMdeKda3fMYwNVyM5czvpOTSbHie1C7rhtVj_ov6qqjtZ8qAGWhJU8O2t4rA_4-p0L7wO-JJAEAuNYixfSXQT8fQDmV0q_XSOVTunEtZc-LMdM6hUmits5-jYbC52F2lpzWcDKLA0K1AUx-DkZGrB2Y--xlzpfUpE9bjine3GCk1jvxsK_7JwO-WMxIybt3N8x__GinBO0TX2nZzIgg\"><strong>đăng nhập / đăng ký</strong></a>.</p><p>Chỗ nghỉ này cách bãi biển 7 phút đi bộ. Nằm ở thành phố Vũng Tàu, cách Bãi Sau 550 m và Bãi Dứa 1,2 km, Vung Tau Melody Apartment cung cấp chỗ nghỉ với WiFi miễn phí và khu vực ghế ngồi.</p><p>Tất cả chỗ nghỉ tại đây được trang bị máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi đi kèm khu vực ăn uống và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh, áo choàng tắm cùng dép đi trong phòng. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.</p><p>Căn hộ có sân hiên.</p><p>Vung Tau Melody Apartment nằm trong bán kính 1,4 km từ Bãi Trước và 1,7 km từ Tượng Chúa Kitô Vua. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 108 km.</p><p>Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm <strong>9,0</strong> cho kỳ nghỉ dành cho 2 người.</p>', '/rooms/room-details-img1.jpg', '14 Cổ nhuế', 'Phòng sang trọng', 2, 100000, '2m2', 'Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_details`
--

CREATE TABLE `room_details` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `price` double NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `room_details`
--

INSERT INTO `room_details` (`id`, `created_at`, `updated_at`, `deleted`, `price`, `room_type`, `room_id`) VALUES
(1, '2022-06-22 00:57:27', '2022-06-22 00:57:27', 0, 0, 'Cơ bản', 1),
(2, '2022-06-22 01:06:55', '2022-06-22 01:06:55', 0, 0, 'Cơ bản', 2),
(3, '2022-06-22 01:49:37', '2022-06-22 01:49:37', 0, 10000000, 'Cơ bản', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_path` text,
  `name` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `room_images`
--

INSERT INTO `room_images` (`id`, `created_at`, `updated_at`, `file_path`, `name`, `room_id`) VALUES
(1, '2022-06-22 01:49:37', '2022-06-22 01:49:37', '/rooms/room-details-img1.jpg', 'room-details-img1.jpg', 3),
(2, '2022-06-22 01:49:37', '2022-06-22 01:49:37', '/rooms/room-details-img2.jpg', 'room-details-img2.jpg', 3),
(3, '2022-06-22 01:49:37', '2022-06-22 01:49:37', '/rooms/room-details-img3.jpg', 'room-details-img3.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_tags`
--

CREATE TABLE `room_tags` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `room_id` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `content` text,
  `deleted` tinyint(1) DEFAULT '0',
  `icon` text,
  `image` text,
  `sort_description` text,
  `status` tinyint(1) DEFAULT '1',
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `created_at`, `updated_at`, `content`, `deleted`, `icon`, `image`, `sort_description`, `status`, `title`) VALUES
(1, '2022-06-22 03:06:25', '2022-06-22 03:06:25', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n', 0, 'flaticon-hotel', '/services/room-style-img1.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.', 1, ' Đặt phòng khách sạn vào những nơi mong muốn'),
(2, '2022-06-22 03:18:49', '2022-06-22 03:18:49', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n', 0, 'flaticon-resort', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.', 1, 'Đặt chỗ nghỉ dưỡng tại một địa điểm tốt và phù hợp'),
(3, '2022-06-22 03:19:30', '2022-06-22 03:19:30', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n', 0, 'flaticon-buildings', '/services/room-details-img2.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.', 1, 'Đặt phòng làm cỏ ở nơi thích hợp và tốt'),
(4, '2022-06-22 03:20:29', '2022-06-22 03:20:29', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'flaticon-businessmen', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.\r\n\r\n', 1, 'Đặt phòng hội nghị ở vị trí phù hợp và tốt'),
(5, '2022-06-22 03:20:29', '2022-06-22 03:20:29', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'flaticon-businessmen', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.\r\n\r\n', 1, 'Đặt phòng hội nghị ở vị trí phù hợp và tốt'),
(6, '2022-06-22 03:20:29', '2022-06-22 03:20:29', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'flaticon-businessmen', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.\r\n\r\n', 1, 'Đặt phòng hội nghị ở vị trí phù hợp và tốt'),
(7, '2022-06-22 03:20:29', '2022-06-22 03:20:29', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'flaticon-businessmen', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.\r\n\r\n', 1, 'Đặt phòng hội nghị ở vị trí phù hợp và tốt'),
(8, '2022-06-22 03:20:29', '2022-06-22 03:20:29', '<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng đặt ph&ograve;ng kh&aacute;ch sạn ở một vị tr&iacute; tốt như &yacute; muốn.&nbsp;Điều n&agrave;y sẽ c&oacute; thể tạo ra những cảm x&uacute;c tốt.&nbsp;Điều n&agrave;y sẽ thực sự hiệu quả cho ch&uacute;ng t&ocirc;i v&agrave; tất cả &amp; tất cả kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 'flaticon-businessmen', '/services/room-details-img3.jpg', 'Bạn có thể dễ dàng đặt phòng khách sạn ở một vị trí tốt như ý muốn. Điều này sẽ có thể tạo ra những cảm xúc tốt. Điều này sẽ thực sự hiệu quả cho chúng tôi và tất cả & tất cả khách hàng & khách hàng.\r\n\r\n', 1, 'Đặt phòng hội nghị ở vị trí phù hợp và tốt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` text,
  `birthday` bigint DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `name` varchar(128) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `address`, `avatar`, `birthday`, `deleted`, `email`, `is_active`, `name`, `password`, `username`) VALUES
(1, '2022-06-07 22:30:07', '2022-06-07 22:30:07', NULL, NULL, NULL, 0, 'admin@gmail.com', 1, 'admin', '$2a$10$1zLb2sLNFftjtVD/LYL0aOSDTugz4.fickbclfcCI72dwhBX.WaRG', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1okoilyd2fe2lmdqj01rdn14b` (`message`),
  ADD KEY `FK9aakob3a7aghrm94k9kmbrjqd` (`blog_id`);

--
-- Chỉ mục cho bảng `comment_room`
--
ALTER TABLE `comment_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_9uds0al9lwjtwx1regiegmdjn` (`message`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_b7q9eiiv8r3gr874udbomealf` (`message`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_rfbvkrffamfql7cjmen8v976v` (`email`),
  ADD UNIQUE KEY `UK_6v6x92wb400iwh6unf5rwiim4` (`phone_number`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_details`
--
ALTER TABLE `room_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKos85t2tqc3afvhll2y7klvyrh` (`room_id`);

--
-- Chỉ mục cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtky1jnwoh1hv50m263p2vlt0y` (`room_id`);

--
-- Chỉ mục cho bảng `room_tags`
--
ALTER TABLE `room_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm17dd7dtsrw0uf8fpk6pm5jcu` (`room_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment_room`
--
ALTER TABLE `comment_room`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `room_details`
--
ALTER TABLE `room_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `room_tags`
--
ALTER TABLE `room_tags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
