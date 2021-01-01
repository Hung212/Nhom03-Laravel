-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2020 lúc 08:58 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn_baby`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(14, 'Hello kitty', '12.jpg', '123 Huy cận hà Nội', '0384443443', 'hello-kitty', 0, '2020-12-01 00:15:58', '2020-12-01 09:26:43'),
(15, 'Doraemon', '5.jpg', '123 Huy cận Hà Nội', '0384443446', 'doraemon', 0, '2020-12-01 00:18:30', '2020-12-01 00:25:00'),
(16, 'Little Tikes', '2.jpeg', '123 Huy cận hà Nội', '0132456789', 'little-tikes', 0, '2020-12-01 00:24:23', '2020-12-01 00:33:00'),
(17, 'Fisher Price', '123.jpeg', '123 Huy cận hà Nội', '0123456789', 'fisher-price', 0, '2020-12-01 00:27:00', '2020-12-01 00:33:04'),
(18, 'Mattel', '789.jpeg', '123 Huy cận hà Nội', '0123456789', 'mattel', 0, '2020-12-01 00:29:40', '2020-12-01 00:33:08'),
(19, 'Summer Infant', '444.jpeg', '123 Huy cận hà Nội', '0123456789', 'summer-infant', 0, '2020-12-01 00:30:25', '2020-12-01 00:33:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `address`, `phone_no`, `email`, `slug`, `is_deleted`, `created_at`, `updated_at`, `user_id`) VALUES
(18, 'Nguyen van A', '123 hà nội', '0384443456', 'customer1@gmail.com', 'nguyen-van-a', 0, '2020-12-01 01:16:47', '2020-12-01 01:16:47', 9),
(19, 'Nguyen van B', '123 huy cận', '0384443456', 'customer2@gmail.com', 'nguyen-van-b', 0, '2020-12-01 09:24:36', '2020-12-01 09:24:36', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1),
(53, '2020_07_03_021215_add_user_id_to_customers_table', 2),
(54, '2020_07_03_025411_add_foreign_user_id_to_customers_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_status`, `payment_status`, `customer_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(54, 1, 1, 18, 1, '2020-12-01 01:17:07', '2020-12-01 01:19:47'),
(55, 1, 3, 18, 1, '2020-12-01 01:18:53', '2020-12-01 01:19:49'),
(56, 1, 1, 19, 0, '2020-12-01 09:24:54', '2020-12-01 09:26:17'),
(57, 1, 3, 19, 0, '2020-12-01 09:25:09', '2020-12-01 09:26:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `order_id`, `product_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(44, 1, 54, 28, 0, '2020-12-01 01:17:07', '2020-12-01 01:17:07'),
(45, 1, 55, 28, 0, '2020-12-01 01:18:53', '2020-12-01 01:18:53'),
(46, 2, 56, 25, 0, '2020-12-01 09:24:54', '2020-12-01 09:24:54'),
(47, 1, 57, 26, 0, '2020-12-01 09:25:09', '2020-12-01 09:25:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(29, 'delete_brand', 'Delete Brand', 0, NULL, NULL),
(30, 'delete_role', 'Delete Role', 0, NULL, NULL),
(31, 'delete_product', 'Delete Product', 0, NULL, NULL),
(32, 'delete_category', 'Delete Category', 0, NULL, NULL),
(33, 'delete_slide', 'Delete Slide', 0, NULL, NULL),
(34, 'delete_user', 'Delete User', 0, NULL, NULL),
(35, 'delete_order', 'Delete Order', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(112, 1, 1, NULL, NULL),
(113, 2, 1, NULL, NULL),
(114, 3, 1, NULL, NULL),
(115, 4, 1, NULL, NULL),
(116, 5, 1, NULL, NULL),
(117, 6, 1, NULL, NULL),
(118, 7, 1, NULL, NULL),
(119, 8, 1, NULL, NULL),
(120, 9, 1, NULL, NULL),
(121, 10, 1, NULL, NULL),
(122, 11, 1, NULL, NULL),
(123, 12, 1, NULL, NULL),
(124, 13, 1, NULL, NULL),
(125, 14, 1, NULL, NULL),
(126, 15, 1, NULL, NULL),
(127, 16, 1, NULL, NULL),
(128, 17, 1, NULL, NULL),
(129, 18, 1, NULL, NULL),
(130, 19, 1, NULL, NULL),
(131, 20, 1, NULL, NULL),
(132, 21, 1, NULL, NULL),
(133, 22, 1, NULL, NULL),
(134, 23, 1, NULL, NULL),
(135, 24, 1, NULL, NULL),
(136, 25, 1, NULL, NULL),
(137, 26, 1, NULL, NULL),
(138, 27, 1, NULL, NULL),
(139, 28, 1, NULL, NULL),
(140, 29, 1, NULL, NULL),
(141, 30, 1, NULL, NULL),
(142, 31, 1, NULL, NULL),
(143, 32, 1, NULL, NULL),
(144, 33, 1, NULL, NULL),
(145, 34, 1, NULL, NULL),
(146, 35, 1, NULL, NULL),
(166, 3, 2, NULL, NULL),
(167, 4, 2, NULL, NULL),
(168, 7, 2, NULL, NULL),
(169, 8, 2, NULL, NULL),
(170, 11, 2, NULL, NULL),
(171, 12, 2, NULL, NULL),
(172, 15, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 19, 2, NULL, NULL),
(175, 20, 2, NULL, NULL),
(176, 23, 2, NULL, NULL),
(177, 24, 2, NULL, NULL),
(178, 27, 2, NULL, NULL),
(179, 28, 2, NULL, NULL),
(180, 5, 3, NULL, NULL),
(181, 6, 3, NULL, NULL),
(182, 7, 3, NULL, NULL),
(183, 8, 3, NULL, NULL),
(184, 9, 3, NULL, NULL),
(185, 10, 3, NULL, NULL),
(186, 11, 3, NULL, NULL),
(187, 12, 3, NULL, NULL),
(188, 13, 3, NULL, NULL),
(189, 14, 3, NULL, NULL),
(190, 15, 3, NULL, NULL),
(191, 16, 3, NULL, NULL),
(192, 17, 3, NULL, NULL),
(193, 18, 3, NULL, NULL),
(194, 19, 3, NULL, NULL),
(195, 20, 3, NULL, NULL),
(196, 21, 3, NULL, NULL),
(197, 22, 3, NULL, NULL),
(198, 23, 3, NULL, NULL),
(199, 24, 3, NULL, NULL),
(200, 29, 3, NULL, NULL),
(201, 31, 3, NULL, NULL),
(202, 32, 3, NULL, NULL),
(203, 33, 3, NULL, NULL),
(204, 35, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(24, 'Trọn Bộ 3 cuốn tập tô màu kì diệu', '5fc5f1d3c6929', '<p>Đinh Tị<br />\r\nMSP: 2895000000105</p>', 'Bộ 3 cuốn tập tô bao gồm:\r\nSự tích bánh trung thu,\r\nSự tích tết trung thu,\r\nChiếc hộp kỳ diệu.', 'tron-bo-3-cuon-tap-to-mau-ki-dieu-banh-trung-thu-tet-trung-thu-chiec-hop-ky-dieu.jpg', 29000, 27000, 10, 'tron-bo-3-cuon-tap-to-mau-ki-dieu', 0, 1, 19, 7, 0, '2020-12-01 00:35:16', '2020-12-01 00:39:35'),
(25, 'Xe chở hàng tốt bụng', '5fc5f38ac1211', '<p><strong>Kim Đồng</strong></p>\r\n\r\n<p>MSP:&nbsp;2206000000284</p>', 'Bộ sách này gồm 6 cuốn:\r\nXe chở hàng tốt bụng, Chiếc xe buýt chu đáo, Xe cảnh sát thần tốc, Xe tắc xi nhanh nhẹn, Xe cứu hỏa thiện nghệ,', 'xe-cho-hang-tot-bung-sach-kim-dong.jpg', 35000, 24000, 13, 'xe-cho-hang-tot-bung', 1, 0, 19, 7, 0, '2020-12-01 00:44:13', '2020-12-01 09:24:54'),
(26, 'Xe lắc đèn nhạc (X-L2, Đỏ)', '5fc5f498437e6', '<p><strong>Đại ph&aacute;t t&agrave;i Long An</strong></p>\r\n\r\n<p>MSP:&nbsp;2100000000001</p>', 'Tăng cường khả năng vận động cho bé. Bé ngồi lên chơi.\r\nSản phẩm có màu sắc sinh động.\r\nChất liệu an toàn cho bé', 'xe-lac-den-nhac-x-l2-do.jpg', 450000, 445000, 11, 'xe-lac-den-nhac-x-l2-do', 0, 1, 18, 12, 0, '2020-12-01 00:47:48', '2020-12-01 09:25:09'),
(27, 'Xếp tháp hình thú - 20168', '5fc5f56127310', '<p><strong>Nam Hoa</strong></p>\r\n\r\n<p>MSP:&nbsp;2161000000012</p>', 'Độ tuổi phù hợp: trẻ từ 24 tháng tuổi\r\nKích thước( dài x rộng x cao): 15 x 11 x 17 cm\r\nSản phẩm từ gỗ tự nhiên qua xử lý bằng công nghệ hiện đại', 'xep-thap-hinh-thu-20168-nh.jpg', 212000, 210000, 20, 'xep-thap-hinh-thu-20168', 0, 1, 17, 15, 0, '2020-12-01 00:50:12', '2020-12-01 01:03:24'),
(28, 'Bảng điện tử thông minh - Thế giới thực vật', '5fc5f608ed394', '<p>Lovelykid</p>\r\n\r\n<p>MSP:&nbsp;0046070000003</p>', 'Màu sắc bắt mắt\r\nHình minh họa sinh động\r\nChất liệu an toàn', 'bang-dien-tu-thong-minh-the-gioi-thuc-vat-lnv.jpg', 75000, 55000, 18, 'bang-dien-tu-thong-minh-the-gioi-thuc-vat', 1, 0, 14, 13, 0, '2020-12-01 00:52:42', '2020-12-01 01:18:53'),
(29, 'Lều bóng 1.5M RFD243559', '5fc5f6932959b', '<p>BINYI TOYS</p>\r\n\r\n<p>MSP:&nbsp;0416000000001</p>', 'Chât liệu nhựa an toàn cho bé \r\nMàu sắc bắt mắt và tươi sáng \r\nGiúp phát triển khả năng vận động tư duy, sáng tạo của trẻ', 'leu-bong-1-5m-rfd243559.jpg', 245000, 235000, 12, 'leu-bong-15m-rfd243559', 1, 1, 16, 11, 0, '2020-12-01 00:55:10', '2020-12-01 00:55:38'),
(30, 'Bóng rổ cao su Mickey', '5fc5f75b7c8e6', '<p>MESUCA</p>\r\n\r\n<p>MSP:&nbsp;0416000000005</p>', 'Chất liệu: Cao su \r\nMàu sắc bắt mắt và tươi sáng\r\nBóng được bơm hơi trước khi sử dụng', 'bong-ro-cao-su-mickey-daa7121-a.jpg', 94000, 85000, 13, 'bong-ro-cao-su-mickey', 0, 1, 15, 10, 0, '2020-12-01 00:58:27', '2020-12-01 00:58:47'),
(31, 'FREESHIP GIAO NGAY Bộ đồ chơi đất nặn lò nướng bánh', '5fc5f7e403b2c', '<p>PLAY DOH (MỸ)</p>\r\n\r\n<p>MSP:&nbsp;2199000000026</p>', 'Dùng cho bé từ 3 tuổi\r\nSản phẩm không gây bết tay bé\r\nGiúp phát triển tư duy của bé.', 'do-choi-dat-nan-dau-bep-mini-play-doh-e7474.jpg', 799000, 599000, 10, 'freeship-giao-ngay-bo-do-choi-dat-nan-lo-nuong-banh', 1, 0, 16, 8, 0, '2020-12-01 01:02:16', '2020-12-01 01:02:16'),
(32, 'Thú bông ngựa ngộ nghĩnh Metoo', '5fc5f8e1c5b30', '<p><strong>METOO</strong></p>\r\n\r\n<p>MSP:&nbsp;2155000000011</p>', 'Kích thước(rộng x dài x cao): 48.5x19x11.5 cm\r\nPhù hợp cho bé từ 1 tuổi\r\nChất liệu vải bông cao cấp', 'thu-bong-ngua-ngo-nghinh-metoo-cy164115.jpg', 295000, 245000, 14, 'thu-bong-ngua-ngo-nghinh-metoo', 0, 1, 14, 9, 0, '2020-12-01 01:08:44', '2020-12-01 01:09:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', 'abc', 'dien-thoai', 1, '2020-06-30 00:00:28', '2020-11-30 23:34:30'),
(2, 'Phụ kiện', 'abc', 'phu-kien', 1, '2020-06-30 00:02:00', '2020-11-30 23:34:32'),
(3, 'Tai Nghe', 'abc', 'tai-nghe', 1, '2020-06-30 00:02:38', '2020-08-13 00:08:42'),
(4, 'Pin', 'abc', 'pin', 1, '2020-06-30 00:03:18', '2020-08-13 00:08:39'),
(5, 'Charger', 'abc', 'charger', 1, '2020-06-30 00:04:23', '2020-08-13 00:08:36'),
(6, 'Laptop', 'No', 'laptop', 1, '2020-08-22 00:12:24', '2020-11-30 23:34:34'),
(7, 'Sách Học tập', 'No', 'sach-hoc-tap', 0, '2020-11-30 23:34:47', '2020-11-30 23:36:26'),
(8, 'Đồ chơi bé trai', 'No', 'do-choi-be-trai', 0, '2020-11-30 23:35:02', '2020-11-30 23:35:02'),
(9, 'Đồ chơi bé gái', 'No', 'do-choi-be-gai', 0, '2020-11-30 23:35:17', '2020-11-30 23:35:17'),
(10, 'Đồ chơi cát Nước', 'No', 'do-choi-cat-nuoc', 0, '2020-11-30 23:35:36', '2020-11-30 23:36:42'),
(11, 'Bóng, Banh Nhà Banh', 'No', 'bong-banh-nha-banh', 0, '2020-11-30 23:35:59', '2020-11-30 23:36:15'),
(12, 'Xe lắc, Chòi chân', 'No', 'xe-lac-choi-chan', 0, '2020-11-30 23:36:56', '2020-11-30 23:36:56'),
(13, 'Miếng xếp hình thông minh', 'No', 'mieng-xep-hinh-thong-minh', 0, '2020-11-30 23:37:24', '2020-11-30 23:37:24'),
(14, 'Thú nhồi bông', 'No', 'thu-nhoi-bong', 0, '2020-11-30 23:38:01', '2020-11-30 23:38:01'),
(15, 'Xếp tháp hình thú', 'No', 'xep-thap-hinh-thu', 0, '2020-11-30 23:38:20', '2020-11-30 23:38:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 4, 4, NULL, NULL),
(14, 4, 9, NULL, NULL),
(15, 4, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `content`, `description`, `image`, `url`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Deal Online mỗi ngày', 'Khuyến mãi,Ưu đãi đặc biệt trong tháng 12 này hãy nhanh tay đặt hàng thôi.', 'Home-Slidebanner-Merries-700x404-PC.jpg', '#', 0, '2020-07-02 07:34:10', '2020-11-30 23:48:27'),
(2, 'Combo tiết kiệm', 'Thảm xốp hình trái cây 30x30cm, 10 miếng, 40_Hello Kitty - BST 1000 đề can - Cuộc Sống Diệu Kì', 'Home-Slidebanner.jpg', '#', 0, '2020-07-02 07:34:29', '2020-11-30 23:51:53'),
(3, 'Combo 3 lon Thực phẩm bổ sung Aptakid 3 Growing up Milk Formula, 2..', 'Sữa bột Nestlé NAN OPTIPRO 1, 0-6 tháng, 400g', 'home-slider-2.png', '#', 0, '2020-07-02 07:34:40', '2020-11-30 23:50:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 0, NULL, '$2y$10$/R2hG9ld.VWodXp152nj6elEVmguqxg4YsakqBrjDwkDUB9PNjPyO', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(2, 'ToanBT', 'toan160798@gmail.com', 0, NULL, '$2y$10$9fexI66yCgnrIjWwz7r8XO3CcEHh5j3pMKiTlNZzYKoR0g29KriJW', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(3, 'HoiNP', 'phuchoi@gmail.com', 0, NULL, '$2y$10$guuRzH.82MrqnPj700a4Mu2uOe8CpQ/171ft9dul8Xdv11QBZCeY.', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(4, 'NghiaDT', 'dinhnghia@gmail.com', 1, NULL, '$2y$10$6zigjstHuniBAJ5m5So8fOQgH431f5O7tEEDfT2D8lk1VOcsFou46', NULL, NULL, 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'customer1', 'customer1@gmail.com', 1, NULL, '$2y$10$7WHTHs4/5IAxOAyHyjAW6OQ4emu4RCWRMlDg0K558eWMYW.9/arVO', NULL, 'eOojy1rFJDxwEsBjm2jI7WGt0gmpQmbRdDEXj70DUgp2Zs4fonu3UoRBzzQs', 0, '2020-12-01 01:16:47', '2020-12-01 01:16:47'),
(10, 'customer2', 'customer2@gmail.com', 1, NULL, '$2y$10$yzvT9ALz/T/xLH1mx..k/.PJLYCC8d/PTrpnVVE9aR72I1ypPxZLK', NULL, 'ElNfBxn53QRgVXIW1YzeKl9JJw1MjsBnIU64gbjND5gLfD1kXmKKfc272Hr4', 0, '2020-12-01 09:24:36', '2020-12-01 09:24:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
