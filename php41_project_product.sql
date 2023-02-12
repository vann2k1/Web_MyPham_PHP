-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2020 lúc 03:42 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php41_project_product`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'BÀN GHẾ'),
(2, 'KỆ SÁCH'),
(3, 'GIƯỜNG'),
(4, 'TỦ QUẦN ÁO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `fullname`, `email`, `address`, `phone`) VALUES
(2, 'Nguyễn Văn A', 'admin1@mail.com', 'ha noi', '0825585459'),
(3, 'Nguyễn Văn A', 'tung.anhb3@gmail.com', 'ha noi', '0825585459'),
(4, 'tung anh', 'admin1@gmail.com', 'Thôn Thanh Hương Xã Xuân Quỳ Huyện Như Xuân Tỉnh Thanh Hóa', '0399966637'),
(5, 'fsfs', 'jkb', 'hkb', 'jhghj'),
(6, 'tung anh', 'tung.anhb3@gmail.com', 'Thôn Thanh Hương Xã Xuân Quỳ Huyện Như Xuân Tỉnh Thanh Hóa', '0399966637');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0: chưa giao hàng - 1: đã giao hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `create_at`, `status`) VALUES
(4, 2, '2019-09-23', 0),
(5, 3, '2019-09-30', 0),
(6, 4, '2019-10-14', 0),
(7, 5, '2019-10-15', 0),
(8, 6, '2019-10-28', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `price`, `number`) VALUES
(7, 4, 4, 6490000, 3),
(8, 4, 3, 8490000, 3),
(9, 5, 5, 27990000, 4),
(10, 5, 6, 16990000, 1),
(11, 6, 8, 5990000, 1),
(12, 7, 2, 12990000, 1),
(13, 8, 5, 27990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `hotproduct` int(1) NOT NULL,
  `img` varchar(500) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `category_id`, `description`, `content`, `hotproduct`, `img`, `price`) VALUES
(1, 'GIƯỜNG MFC', 3, '<p>Chất liệu: Gỗ MDF nhập khẩu Mailaysia\r\nGiá: - 1.6 * 2m : 6.000.000/ Cái - 1.8 * 2m: 6.500.000/ Cái \r\n( Giá trên chưa bao gồm tap đầu giường + hộc kéo ngăn trang trí)</p>\r\n', '\r\n', 1, '1.jpg', 20490000),
(2, 'KỆ SÁCH', 3, '<p>Trong th&aacute;ng 5 năm nay, thị trường thiết bị cho nh&agrave; th&ocirc;ng minh bỗng dưng s&ocirc;i động khi Google Assistant bất ngờ được hỗ trợ tiếng Việt tại Việt Nam. Việc Google mang&nbsp;Assistant tiếng Việt về Việt Nam d&agrave;nh cho smartphone khiến cho nhiều người kỳ vọng n&oacute; sẽ c&oacute; mặt sớm tr&ecirc;n c&aacute;c thiết bị Google Home để gi&uacute;p điều khiển căn nh&agrave; bằng tiếng mẹ đẻ.&nbsp;</p>\r\n', '\r\n', 1, '2.jpg', 12990000),
(3, 'KỆ TIVI PHÒNG KHÁCH', 3, '<p>(D&acirc;n tr&iacute;)&nbsp;- Th&ocirc;ng tin chi tiết về cấu h&igrave;nh của Galaxy Note10 vừa bị r&ograve; rỉ, cho thấy sản phẩm sẽ c&oacute; đến 4 phi&ecirc;n bản kh&aacute;c nhau, trong đ&oacute; phi&ecirc;n bản cao cấp nhất sẽ sở hữu bộ nhớ RAM l&ecirc;n đến 12GB.</p>\r\n', '\r\n', 1, '3.jpg', 8490000),
(4, 'BÀN GHẾ XẾP GỌN', 3, '<p>(D&acirc;n tr&iacute;)&nbsp;- Apple đ&atilde; giới thiệu m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh Pro Display XDR tại Hội nghị C&aacute;c nh&agrave; ph&aacute;t triển Thế giới (WWDC) đang diễn ra, với mức gi&aacute; b&aacute;n l&ecirc;n đến 5.000USD, c&ugrave;ng những t&iacute;nh năng nổi bật. Tuy nhi&ecirc;n, điểm đ&aacute;ng ch&uacute; &yacute; nhất của m&agrave;n h&igrave;nh n&agrave;y đ&oacute; l&agrave; kh&ocirc;ng c&oacute; sẵn... ch&acirc;n đế v&agrave; muốn sử dụng, người d&ugrave;ng sẽ phải mua th&ecirc;m gi&aacute; đỡ cho sản phẩm với gi&aacute; 999USD.</p>\r\n', '<p>Tại WWDC đang diễn ra, CEO Tim Cook của Apple đ&atilde; giới thiệu chiếc m&aacute;y t&iacute;nh Mac Pro thế hệ mới nhất của Apple, với cấu h&igrave;nh cực &ldquo;khủng&rdquo;, bao gồm bộ xử l&yacute; Intel Xeon thế hệ mới c&oacute; tới 28 l&otilde;i, bộ nhớ RAM l&ecirc;n đến 1,5TB c&ugrave;ng c&ocirc;ng suất l&ecirc;n tới 300W v&agrave; sở hữu hệ thống tản nhiệt c&ocirc;ng nghiệp mạnh mẽ. Điều n&agrave;y cho ph&eacute;p n&oacute; c&oacute; thể chạy kh&ocirc;ng giới hạn ở c&ocirc;ng suất tối đa trong mọi l&uacute;c.</p>\r\n\r\n<p>Dĩ nhi&ecirc;n, đi k&egrave;m cấu h&igrave;nh mạnh mẽ n&agrave;y l&agrave; một mức gi&aacute; kh&ocirc;ng hề rẻ ch&uacute;t n&agrave;o, khi Mac Pro c&oacute; mức gi&aacute; l&ecirc;n đến 5.999USD (140,3 triệu đồng).</p>\r\n\r\n<p><img alt=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/pro-standav-1559707307402.jpg\" title=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 1\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh Pro Display XDR c&oacute; gi&aacute; 4.999USD, chưa bao gồm gi&aacute; ch&acirc;n đế</p>\r\n\r\n<p>Mức gi&aacute; 5.999USD chỉ l&agrave; mức gi&aacute; chiếc m&aacute;y t&iacute;nh Mac Pro, nghĩa l&agrave; muốn sử dụng sản phẩm, người d&ugrave;ng cần phải mua th&ecirc;m m&agrave;n h&igrave;nh cho chiếc m&aacute;y t&iacute;nh n&agrave;y. V&agrave; Apple cũng đ&atilde; giới thiệu th&ecirc;m m&agrave;n h&igrave;nh đi k&egrave;m với t&ecirc;n gọi Pro Display XDR. Sản phẩm c&oacute; k&iacute;ch thước 32-inch, độ ph&acirc;n giải 6K, hỗ trợ dải m&agrave;u 10-bit thực sự, độ s&aacute;ng cực đại 1.600 nit, tỷ lệ tương phản 1.000.000:1, g&oacute;c nh&igrave;n si&ecirc;u rộng... Sản phẩm cũng c&oacute; mức gi&aacute; b&aacute;n kh&ocirc;ng hề rẻ, l&ecirc;n đến 4.999USD (tương đương 116 triệu đồng).</p>\r\n\r\n<p><img alt=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/pro-stand-1-1559707306443.jpg\" title=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 2\" /></p>\r\n\r\n<p>Phần ch&acirc;n đế d&agrave;nh cho m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh của Apple được b&aacute;n ri&ecirc;ng với gi&aacute;... 999USD</p>\r\n\r\n<p>Tuy nhi&ecirc;n, điều đ&aacute;ng n&oacute;i l&agrave; m&agrave;n h&igrave;nh c&oacute; gi&aacute; cực &ldquo;ch&aacute;t&rdquo; n&agrave;y lại kh&ocirc;ng được b&aacute;n k&egrave;m... ch&acirc;n đế. Nghĩa l&agrave; muốn sử dụng sản phẩm, người d&ugrave;ng sẽ sử dụng... vật g&igrave; đ&oacute; để k&ecirc; m&agrave;n h&igrave;nh l&ecirc;n, hoặc phải bỏ ra để mua th&ecirc;m phụ kiện ch&acirc;n đế hoặc gi&aacute; treo cho m&agrave;n h&igrave;nh n&agrave;y được Apple b&aacute;n ri&ecirc;ng.</p>\r\n\r\n<p>Người d&ugrave;ng c&oacute; thể bỏ ra số tiền... 999USD (tương đương 23 triệu đồng) để mua phần ch&acirc;n đế c&oacute; t&ecirc;n Pro Stand cho m&agrave;n h&igrave;nh sản phẩm, hoặc số tiền 199USD (4,6 triệu đồng) để mua phần m&oacute;c treo c&oacute; t&ecirc;n VESA để gắn m&agrave;n h&igrave;nh l&ecirc;n tường hoặc gi&aacute; treo.</p>\r\n\r\n<p>Với phần ch&acirc;n đế Pro Stand, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng điều chỉnh độ cao của m&agrave;n h&igrave;nh hoặc xoay m&agrave;n h&igrave;nh theo chiều dọc.</p>\r\n\r\n<p><img alt=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/pro-stand-2-1559707313331.gif\" title=\"Bỏ ra 5.000 USD để mua màn hình máy tính Apple nhưng vẫn chưa đủ - 3\" /></p>\r\n\r\n<p>Phần ch&acirc;n đế n&agrave;y gi&uacute;p m&agrave;n h&igrave;nh của Apple c&oacute; thể xoay theo chiều dọc</p>\r\n\r\n<p>Dĩ nhi&ecirc;n số tiền 999USD cho một phần ch&acirc;n đế m&agrave;n h&igrave;nh l&agrave; số tiền kh&ocirc;ng hề nhỏ. Với số tiền n&agrave;y, người d&ugrave;ng vẫn ho&agrave;n to&agrave;n c&oacute; thể mua được một m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh chất lượng cao đến từ những h&atilde;ng c&ocirc;ng nghệ kh&aacute;c. V&agrave; để sử c&oacute; thể sở hữu một chiếc m&aacute;y t&iacute;nh Mac Pro ho&agrave;n chỉnh (bao gồm cả m&aacute;y, m&agrave;n h&igrave;nh v&agrave;... ch&acirc;n đế), người d&ugrave;ng sẽ phải bỏ ra số tiền tổng cộng 11.997USD (chưa bao gồm thuế), một con số kh&ocirc;ng hề nhỏ cho một bộ m&aacute;y t&iacute;nh để b&agrave;n.</p>\r\n\r\n<p>Ngay sau khi giới thiệu ch&acirc;n đế Pro Stand với mức gi&aacute; &ldquo;đi&ecirc;n rồ&rdquo;, Apple đ&atilde; lập tức trở th&agrave;nh chủ đề ch&acirc;m biếm của giới c&ocirc;ng nghệ. Nhiều người đ&atilde; kh&ocirc;ng ngần ngại chỉ tr&iacute;ch Apple &ldquo;h&uacute;t m&aacute;u&rdquo; người d&ugrave;ng một c&aacute;ch th&aacute;i qu&aacute;, khi biến một vật dụng thường chừng như kh&ocirc;ng thể thiếu của một m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh (phần ch&acirc;n đế) trở th&agrave;nh một thứ c&oacute; thể kiếm ra tiền.</p>\r\n\r\n<p>Volume 90%</p>\r\n\r\n<p>Ph&aacute;t</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Video giới thiệu về Mac Pro, m&agrave;n h&igrave;nh Pro Display XDR v&agrave; ch&acirc;n đế Pro Stand của Apple</p>\r\n\r\n<p><strong>T.Thủy</strong></p>\r\n', 1, '4.jpg', 6490000),
(5, 'TỦ QUẦN ÁO', 2, '<p>(D&acirc;n tr&iacute;)&nbsp;- Th&aacute;ng 6 cũng kh&aacute; s&ocirc;i động cho thị trường di động trong nước với sự xuất hiện của một số mẫu sản phẩm mới cũng như việc điều chỉnh gi&aacute; b&aacute;n của c&aacute;c sản phẩm cũ trước đ&oacute;.</p>\r\n', '<p><strong>Samsung Galaxy A9 2018</strong></p>\r\n\r\n<p><em>Gi&aacute;: 9,5 triệu đồng</em></p>\r\n\r\n<p><em>Đ&atilde; giảm: 3 triệu đồng</em></p>\r\n\r\n<p><img alt=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/loat-thiet-bi-giam-gia-dang-chu-y-dau-thang-6-docx-1559697813651.jpeg\" title=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 1\" /></p>\r\n\r\n<p>Mẫu smartphone đầu ti&ecirc;n tr&ecirc;n thế giới sở hữu hệ thống 4 camera ở mặt sau lưng của Samsung đ&atilde; c&oacute; mức giảm kh&aacute; tốt ngay đầu th&aacute;ng 6 về mức 9,5 triệu đồng.&nbsp;</p>\r\n\r\n<p>Điểm nhấn của Galaxy A9 đ&oacute; l&agrave;&nbsp;bốn ống k&iacute;nh ở cụm camera sau với lần lượt một camera ch&iacute;nh độ ph&acirc;n giải 24 MP, tự động lấy n&eacute;t v&agrave; khẩu độ lớn f/1.7.&nbsp;Ống k&iacute;nh thứ hai l&agrave; ống tele với khả năng&nbsp;zoom quang học x2.&nbsp;Ống thứ 3 c&oacute; độ ph&acirc;n giải 8 MP, khẩu độ F/2.4 cũng kh&ocirc;ng k&eacute;m phần hấp dẫn v&agrave; h&atilde;ng gọi n&oacute; l&agrave; camera si&ecirc;u rộng (Ultra Wide), c&oacute; g&oacute;c rộng như mắt người nh&igrave;n l&ecirc;n đến 120 độ.</p>\r\n\r\n<p>V&agrave; camera cuối c&ugrave;ng l&agrave; camera depth độ ph&acirc;n giải 5 MP, khẩu độ f/2.2,&nbsp;cho ph&eacute;p tự do t&ugrave;y chỉnh độ s&acirc;u trường ảnh v&agrave; lấy n&eacute;t tr&ecirc;n vật thể để cho ra những bức ảnh x&oacute;a ph&ocirc;ng.</p>\r\n\r\n<p><strong>Oppo R17 Pro</strong></p>\r\n\r\n<p><em>Gi&aacute;: 13,9 triệu đồng&nbsp;</em></p>\r\n\r\n<p><img alt=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/loat-thiet-bi-giam-gia-dang-chu-y-dau-thang-6-docx-1559697813816.jpeg\" title=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 2\" /></p>\r\n\r\n<p>Với mức giảm 3 triệu đồng, đ&acirc;y l&agrave; sản phẩm đ&aacute;ng mua khi người d&ugrave;ng cần một chiếc m&aacute;y ảnh di động để chụp ảnh.&nbsp;&nbsp;</p>\r\n\r\n<p>D&ograve;ng sản phẩm n&agrave;y tạo điểm nhấn với hệ thống&nbsp;camera ch&iacute;nh 20 MP khẩu f/2.6 đảm nhận chức năng x&oacute;a ph&ocirc;ng, camera phụ 12 MP v&agrave; một camera phụ kh&aacute;c 12 MP với khẩu độ c&oacute; thể tự động điều chỉnh trong khoảng f/1.5 - f/2.4; cho ph&eacute;p chụp ảnh thiếu s&aacute;ng tốt hơn đ&aacute;ng kể.&nbsp;</p>\r\n\r\n<p>Hệ thống camera n&agrave;y c&ograve;n c&oacute; th&ecirc;m chống rung quang học OIS, chống l&agrave; mờ, nh&ograve;e ảnh v&agrave; cho khả năng phơi s&aacute;ng l&acirc;u hơn.&nbsp;</p>\r\n\r\n<p>Camera trước của m&aacute;y độ ph&acirc;n giải kh&aacute; cao 25MP, trang bị cảm biến Sony IMX576, khẩu độ f/2.0 v&agrave; hỗ trợ t&iacute;nh năng HDR thời gian thực (real-time HDR).</p>\r\n\r\n<p>Ngo&agrave;i ra, Oppo R17 c&ograve;n g&acirc;y ch&uacute; &yacute; với sạc si&ecirc;u nhanh SuperVOOC, c&oacute; thể sạc 10 ph&uacute;t c&oacute; ngay 40% pin.&nbsp;</p>\r\n\r\n<p><strong>iPhone XR 64 GB</strong></p>\r\n\r\n<p><em>Gi&aacute;: 17,9 triệu đồng</em></p>\r\n\r\n<p><em>Đ&atilde; giảm: 2 triệu đồng</em></p>\r\n\r\n<p><img alt=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/loat-thiet-bi-giam-gia-dang-chu-y-dau-thang-6-docx-1559697813946.jpeg\" title=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 3\" /></p>\r\n\r\n<p>Sau khi giảm 3 triệu đồng, thế hệ iPhone mới nhất của Apple cũng giảm sốc th&ecirc;m 1 triệu đồng. Đ&acirc;y được xem l&agrave; lần giảm gi&aacute; chưa từng c&oacute; tiền lệ đối với c&aacute;c mẫu sản phẩm đến từ Apple.&nbsp;</p>\r\n\r\n<p>iPhone XR năm nay g&acirc;y ch&uacute; &yacute; với con chip&nbsp;A12 Bionic - bộ vi xử l&yacute; di động mạnh mẽ nhất hiện nay&nbsp;của Apple được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 7nm v&agrave; trang bị 6 l&otilde;i xử l&yacute;.&nbsp;iPhone XR cũng được ưu &aacute;i trang bị&nbsp;mở kh&oacute;a bằng gương mặt&nbsp;Face ID thế hệ mới với tốc độ phản hồi nhanh hơn so với iPhone X.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, iPhone XR d&ugrave;ng m&agrave;n h&igrave;nh c&ocirc;ng nghệ LCD k&iacute;ch thước 6,1 inch,&nbsp;camera ch&iacute;nh m&aacute;y&nbsp;c&oacute; độ ph&acirc;n giải 12 MP với khẩu độ f/1.8, được trang bị cảm biến ho&agrave;n to&agrave;n mới, hỗ trợ chụp ảnh Smart HDR&hellip;</p>\r\n\r\n<p><strong>iPhone 8 Plus 64 GB</strong></p>\r\n\r\n<p><em>Gi&aacute;: 18,9 triệu đồng</em></p>\r\n\r\n<p><em>Đ&atilde; giảm: 1 triệu đồng</em></p>\r\n\r\n<p><img alt=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/05/loat-thiet-bi-giam-gia-dang-chu-y-dau-thang-6-docx-1559697814063.jpeg\" title=\"Loạt smartphone giảm giá đáng chú ý đầu tháng 6/2019 - 4\" /></p>\r\n\r\n<p>Mẫu iPhone 8 Plus cũng c&oacute; mức giảm 1 triệu đồng trong thời điểm sức mua đang sụt giảm kh&aacute; mạnh ở Việt Nam.&nbsp;</p>\r\n\r\n<p>Thế hệ iPhone n&agrave;y d&ugrave;ng bộ vi xử l&yacute; A11 Bionic ho&agrave;n to&agrave;n mới,&nbsp;nhanh hơn 25% so với l&otilde;i xử l&yacute; hiệu suất tr&ecirc;n A10 trước đ&acirc;y v&agrave; 4 l&otilde;i hiệu suất thấp sẽ nhanh hơn 70% so với c&aacute;c l&otilde;i xử l&yacute; hiệu suất thấp của A10.</p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;Apple trang bị t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y tương th&iacute;ch chuẩn Qi tr&ecirc;n mẫu sản phẩm n&agrave;y, c&oacute; khả năng sạc đầy 50% dung lượng pin chỉ với 30 ph&uacute;t.</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>\r\n', 1, '6.jpg', 27990000),
(6, 'KỆ SÁCH THÔNG MINH', 2, '<p>(D&acirc;n tr&iacute;)&nbsp;- H&atilde;ng bảo mật Trend Micro đ&aacute;nh gi&aacute; Việt Nam vẫn thuộc nh&oacute;m đứng đầu Đ&ocirc;ng Nam &Aacute; về mức độ bị tấn c&ocirc;ng m&atilde; độc, d&ugrave; ch&iacute;nh phủ v&agrave; c&aacute;c tập đo&agrave;n lớn đ&atilde; quan t&acirc;m nhiều hơn đến lĩnh vực n&agrave;y trong một v&agrave;i năm trở lại đ&acirc;y.</p>\r\n', '<p><strong>Thực trạng bảo mật tại Việt Nam</strong></p>\r\n\r\n<p><img alt=\"Việt Nam thuộc nhóm đứng đầu Đông Nam Á về mức độ bị tấn công mã độc - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/trendmicro-1559643142426.jpg\" title=\"Việt Nam thuộc nhóm đứng đầu Đông Nam Á về mức độ bị tấn công mã độc - 1\" /></p>\r\n\r\n<p>Việt Nam đứng đầu trong khu vực về mức độ nguy hiểm của c&aacute;c cuộc tấn c&ocirc;ng m&atilde; độc.</p>\r\n\r\n<p>Theo thống k&ecirc; của Trend Micro, trong Qu&yacute; I/2019, Việt Nam đứng trong số những nước bị tấn c&ocirc;ng bởi nhiều mối đe dọa bảo mật h&agrave;ng đầu của Đ&ocirc;ng Nam &Aacute; bao gồm m&atilde; độc tống tiền (ransomware), m&atilde; độc ng&acirc;n h&agrave;ng (banking malware), m&atilde; độc macro (macro malware), v&agrave; mối đe dọa email.</p>\r\n\r\n<p>Cụ thể, đối với loại h&igrave;nh m&atilde; độc tống tiền v&agrave; m&atilde; độc macro, Việt Nam đứng đầu trong khu vực về mức độ nguy hiểm của c&aacute;c cuộc tấn c&ocirc;ng. Về nguy cơ từ email, Việt Nam đứng thứ 2 - chỉ sau Indonesia, v&agrave; m&atilde; độc ng&acirc;n h&agrave;ng đứng ở vị tr&iacute; thứ 3.</p>\r\n\r\n<p>Trong đ&oacute;, khối ng&acirc;n h&agrave;ng Việt Nam tiếp tục l&agrave; mục ti&ecirc;u tấn c&ocirc;ng của tội phạm c&ocirc;ng nghệ th&ocirc;ng tin. Quỹ tiền tệ thế giới ước t&iacute;nh, thiệt hại t&agrave;i ch&iacute;nh do tấn c&ocirc;ng an ninh mạng g&acirc;y ra tr&ecirc;n to&agrave;n thế giới c&oacute; thể l&ecirc;n đến 100 triệu đ&ocirc; la, tương đương 9% thu nhập r&ograve;ng của ng&acirc;n h&agrave;ng.</p>\r\n\r\n<p>&quot;Kh&ocirc;ng thể xem nhẹ tầm quan trọng của việc nắm bắt t&igrave;nh h&igrave;nh bảo mật hiện tại,&quot; Jaruwan Nok, Gi&aacute;m đốc Trend Micro, cho biết. &quot;Những mối đe dọa an ninh mạng ng&agrave;y c&agrave;ng trở n&ecirc;n tinh vi hơn khiến c&aacute;c biện ph&aacute;p bảo vệ truyền th&ocirc;ng cũng kh&ocirc;ng đủ để đảm bảo an to&agrave;n&quot;.</p>\r\n\r\n<p><strong>97% m&atilde; độc tống tiền ở Việt Nam đến qua đường email</strong></p>\r\n\r\n<p><img alt=\"Việt Nam thuộc nhóm đứng đầu Đông Nam Á về mức độ bị tấn công mã độc - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/ong-dhanya-thakkar-pho-chu-tich-trend-micro-khu-vuc-amea-1559642942204.jpg\" title=\"Việt Nam thuộc nhóm đứng đầu Đông Nam Á về mức độ bị tấn công mã độc - 2\" /></p>\r\n\r\n<p>&Ocirc;ng Dhanya Thakkar - Ph&oacute; Chủ tịch Trend Micro khu vực AMEA.</p>\r\n\r\n<p>Theo Trend Micro, email tiếp tục l&agrave; lối v&agrave;o phổ biến nhất của tội phạm an ninh mạng. Dạng nguy cơ n&agrave;y đang ph&aacute;t triển v&agrave; ng&agrave;y c&agrave;ng tinh vi, với 97% m&atilde; độc tống tiền hiện nay đến qua đường email.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, may mắn l&agrave; Trend Micro lại l&agrave; một trong những chuy&ecirc;n gia tốt nhất thuộc lĩnh vực n&agrave;y tr&ecirc;n thế giới, với việc được Forrester Research c&ocirc;ng nhận l&agrave; &ldquo;nh&agrave; ti&ecirc;n phong&rdquo; về bảo mật email trong năm 2019.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; thực trạng bảo mật, an to&agrave;n th&ocirc;ng tin ở Việt Nam, &ocirc;ng Jaruwan Nok cho rằng trong những năm gần đ&acirc;y t&igrave;nh h&igrave;nh đ&atilde; được cải thiện hơn rất nhiều. Theo đ&oacute;, ch&iacute;nh phủ v&agrave; c&aacute;c tập đo&agrave;n lớn đ&atilde; bắt đầu quan t&acirc;m nhiều hơn tới lĩnh vực an ninh mạng. Tuy nhi&ecirc;n, vẫn c&ograve;n rất nhiều vấn đề cần phải lưu t&acirc;m.</p>\r\n\r\n<p><strong>Nguyễn Nguyễn</strong></p>\r\n', 0, '5.jpg', 16990000),
(7, 'TỦ QUẦN ÁO ĐA NĂNG', 2, '<p>(D&acirc;n tr&iacute;)&nbsp;- Huawei mới đ&acirc;y đ&atilde; phủ nhận ho&agrave;n to&agrave;n c&aacute;c th&ocirc;ng tin về việc cắt giảm d&acirc;y chuyền sản xuất điện thoại tại Foxconn - đơn vị lắp r&aacute;p ch&iacute;nh của c&ocirc;ng ty.</p>\r\n', '<p>&quot;Huawei b&aacute;c bỏ những tuy&ecirc;n bố n&agrave;y. Mức sản xuất to&agrave;n cầu của ch&uacute;ng t&ocirc;i l&agrave; b&igrave;nh thường, kh&ocirc;ng c&oacute; sự điều chỉnh đ&aacute;ng ch&uacute; &yacute; n&agrave;o theo cả hai hướng&quot;, một ph&aacute;t ng&ocirc;n vi&ecirc;n của c&ocirc;ng ty cho biết.</p>\r\n\r\n<p>Trước đ&oacute; &iacute;t ng&agrave;y, theo một b&aacute;o c&aacute;o từ SCMP, nh&agrave; m&aacute;y Foxconn được cho l&agrave; đ&atilde; ngừng một số d&acirc;y chuyền sản xuất của điện thoại Huawei do h&atilde;ng n&agrave;y cắt giảm bớt số lượng đơn đặt h&agrave;ng đối với d&ograve;ng điện thoại mới.</p>\r\n\r\n<p>Th&ocirc;ng tin Huawei thu hẹp quy m&ocirc; sản xuất khi đ&oacute; được hiểu như một hệ quả tất yếu, sau khi c&ocirc;ng ty bị ch&iacute;nh phủ Mỹ đưa v&agrave;o &quot;danh s&aacute;ch đen&quot; - khiến nhiều đối t&aacute;c cung cấp linh kiện v&agrave; phần mềm ngưng cấp ph&eacute;p, hỗ trợ.</p>\r\n\r\n<p>Trong đ&oacute;, thiệt hại lớn nhất nhất đối với điện thoại Huawei đ&oacute; l&agrave; Google ngừng hỗ trợ cập nhật hệ điều h&agrave;nh Android, v&agrave; c&ocirc;ng ty ARM ngừng cung cấp kiến tr&uacute;c chip để Huawei sản xuất vi xử l&yacute; Kirin.</p>\r\n\r\n<p><img alt=\"Huawei phản bác tin đồn cắt giảm sản xuất điện thoại thông minh - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/01/hw-1559354345843.jpg\" title=\"Huawei phản bác tin đồn cắt giảm sản xuất điện thoại thông minh - 2\" /></p>\r\n\r\n<p>Trước đ&oacute;, Huawei đ&atilde; duy tr&igrave; vị tr&iacute; số 2 to&agrave;n cầu về doanh số điện thoại th&ocirc;ng minh trong qu&yacute; đầu ti&ecirc;n của năm c&ugrave;ng đ&agrave; tăng trưởng thần kỳ, đạt 50,3% so với c&ugrave;ng kỳ năm ngo&aacute;i, với 59,1 triệu thiết bị, v&agrave; chiến 19% thị phần. Sự tăng trưởng của Huawei thậm ch&iacute; đe dọa lu&ocirc;n vị tr&iacute; dẫn đầu của Samsung d&ugrave; h&atilde;ng n&agrave;y &quot;độc chiếm&quot; trong nhiều năm, với mức ch&ecirc;nh lệch kh&ocirc;ng qu&aacute; lớn.</p>\r\n\r\n<p>Dẫu phản b&aacute;c th&ocirc;ng tin cắt giảm sản xuất điện thoại th&ocirc;ng minh, song Huawei kh&ocirc;ng thể phủ nhận những kh&oacute; khăn đang phải đối mặt. Đặc biệt l&agrave; niềm tin của người ti&ecirc;u d&ugrave;ng quốc tế đối với điện thoại th&ocirc;ng minh của Huawei đang bị sứt mẻ nghi&ecirc;m trọng.</p>\r\n\r\n<p>Tại c&aacute;c diễn đ&agrave;n rao vặt, trao đổi online, điện thoại Huawei vẫn tiếp tục được giao b&aacute;n nhiều với mức gi&aacute; giảm s&acirc;u. Hiện tại, một chiếc Huawei P30 Pro d&ugrave; vừa qua sử dụng &iacute;t ng&agrave;y, nhưng gi&aacute; đ&atilde; giảm xuống dưới 13 triệu đồng (gi&aacute; b&aacute;n tại cửa h&agrave;ng l&agrave; 23 triệu). Trong khi đ&oacute;, d&ograve;ng P20 Pro của năm ngo&aacute;i đ&atilde; giảm xuống dưới 6 triệu đồng.</p>\r\n\r\n<p>&quot;Khi vấn đề mới xuất hiện, vẫn c&ograve;n qu&aacute; sớm để n&oacute;i liệu ch&uacute;ng t&ocirc;i c&oacute; thể đạt được mục ti&ecirc;u hay kh&ocirc;ng&quot;, &ocirc;ng Zhao Ming, Chủ tịch một trong những chi nh&aacute;nh của Huawei khẳng định niềm tin của m&igrave;nh trong bối cảnh kh&oacute; khăn. &quot;Trở ngại chỉ khiến ch&uacute;ng t&ocirc;i mạnh mẽ hơn, bất kể trong t&acirc;m l&yacute; hay h&agrave;nh động&quot;.</p>\r\n\r\n<p><strong>Nguyễn Nguyễn</strong></p>\r\n', 0, '7.jpg', 19990000),
(8, 'BÀN ĂN THÔNG MINH', 2, '<p>(D&acirc;n tr&iacute;)&nbsp;- Đ&acirc;y l&agrave; những m&oacute;n đồ c&ocirc;ng nghệ mới kh&aacute; th&uacute; vị d&agrave;nh cho người d&ugrave;ng vừa được b&aacute;n ra thị trường Việt với mức gi&aacute; dưới 1 triệu đồng.</p>\r\n', '<p><strong>Ninestars DZT-10-29S</strong></p>\r\n\r\n<p><em>Gi&aacute;: 600 ng&agrave;n đồng</em>&nbsp;</p>\r\n\r\n<p><img alt=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/nhung-mon-do-cong-nghe-doc-dao-cho-nha-thong-minh-gia-duoi-1-trieudocx-1559624761019.gif\" title=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 1\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; mẫu th&ugrave;ng r&aacute;c th&ocirc;ng minh sở hữu cảm biến hồng ngoại để c&oacute; thể tự đ&oacute;ng hoặc mở khi ph&aacute;t hiện tay người d&ugrave;ng ở trong khoảng c&aacute;ch 30cm trở lại. Người d&ugrave;ng c&oacute; thể điều chỉnh khoảng c&aacute;ch từ 6 đến 30 cm để ra lệnh cho nắp th&ugrave;ng r&aacute;c mở v&agrave; bỏ r&aacute;c v&agrave;o dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<p>Th&ugrave;ng r&aacute;c n&agrave;y c&oacute; dung t&iacute;ch tối đa 10 l&iacute;t, g&oacute;c mở tối đa 90 độ gi&uacute;p bỏ r&aacute;c v&agrave;o dễ d&agrave;ng m&agrave; kh&ocirc;ng cần phải sử dụng tay chạm v&agrave;o bề mặt nắp.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra th&ugrave;ng r&aacute;c n&agrave;y d&ugrave;ng pin 2A tiết kiệm năng lượng c&oacute; thể sử dụng li&ecirc;n tục trong v&ograve;ng 6 th&aacute;ng với mỗi ng&agrave;y mở nắp khoảng 20 lần.&nbsp;</p>\r\n\r\n<p><strong>M&aacute;y l&agrave;m kem YOULG&nbsp;</strong></p>\r\n\r\n<p><em>Gi&aacute;: 800 ng&agrave;n đồng&nbsp;</em></p>\r\n\r\n<p><img alt=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/nhung-mon-do-cong-nghe-doc-dao-cho-nha-thong-minh-gia-duoi-1-trieudocx-1559624761609.jpeg\" title=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 2\" /></p>\r\n\r\n<p>Kem lạnh sẽ l&agrave; m&oacute;n ăn kho&aacute;i khẩu của nhiều người trong thời điểm nắng n&oacute;ng k&eacute;o d&agrave;i. Tuy nhi&ecirc;n, những vi&ecirc;n kem ở c&aacute;c cửa h&agrave;ng lại chứa chất phụ gia khiến nhiều người kh&ocirc;ng tự tin sử dụng. V&igrave; vậy, một thiết bị l&agrave;m kem nhỏ gọn sẽ l&agrave; m&oacute;n h&agrave;ng đ&aacute;ng gi&aacute; gi&uacute;p người d&ugrave;ng c&oacute; thể l&agrave;m những vi&ecirc;n kem an to&agrave;n cho gia đ&igrave;nh.&nbsp;</p>\r\n\r\n<p>M&aacute;y l&agrave;m kem YOULG c&oacute; thiết kế kh&aacute; nhỏ gọn v&agrave; nặng chỉ 2,3 kg. H&atilde;ng n&agrave;y t&iacute;ch hợp dung t&iacute;ch chứa 800ml, c&ocirc;ng suất 12W để c&oacute; thể l&agrave;m kem cho 2-3 người ăn. Việc của người d&ugrave;ng chỉ l&agrave; chuẩn bị c&aacute;c nguy&ecirc;n liệu l&agrave;m kem v&agrave; m&aacute;y sẽ tự động l&agrave;m ra kem trong v&ograve;ng &nbsp;24 tiếng.&nbsp;</p>\r\n\r\n<p><strong>Pinlo PL &ndash; B007W2W</strong></p>\r\n\r\n<p><em>Gi&aacute;: 650 ng&agrave;n đồng</em></p>\r\n\r\n<p><img alt=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 3\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/nhung-mon-do-cong-nghe-doc-dao-cho-nha-thong-minh-gia-duoi-1-trieudocx-1559624761725.jpeg\" title=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 3\" /></p>\r\n\r\n<p>Một chiếc m&aacute;y xay sinh tố cầm tay c&oacute; thể sử dụng bất cứ l&uacute;c n&agrave;o sẽ l&agrave; m&oacute;n h&agrave;ng th&uacute; vị cho người d&ugrave;ng ở mọi l&uacute;c mọi nơi. Thiết kế của mẫu Pinlo PL &ndash; B007W2W kh&aacute; nhỏ gọn, dung t&iacute;ch chứa của b&igrave;nh l&agrave; 350ml, c&oacute; thể l&agrave;m ra một ly sinh tố ngon l&agrave;nh cho một người.&nbsp;</p>\r\n\r\n<p>Mẫu m&aacute;y sinh tố n&agrave;y d&ugrave;ng pin t&iacute;ch hợp dung lượng 2.000 mAh c&oacute; thể say li&ecirc;n tục tr&ecirc;n 20 lần với c&ocirc;ng suất cực đại đạt 70W.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, n&oacute; c&oacute; th&ecirc;m nắp đậy cho b&igrave;nh chứa sau khi say, gi&uacute;p bảo quản v&agrave; sử dụng dễ d&agrave;ng m&agrave; kh&ocirc;ng cần mang theo một chiếc ly đi k&egrave;m.&nbsp;</p>\r\n\r\n<p><strong>Mini M2&nbsp;</strong></p>\r\n\r\n<p><em>Gi&aacute;: 900 ng&agrave;n đồng</em></p>\r\n\r\n<p><img alt=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 4\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/nhung-mon-do-cong-nghe-doc-dao-cho-nha-thong-minh-gia-duoi-1-trieudocx-1559624761863.jpeg\" title=\"Những món đồ công nghệ độc đáo cho nhà thông minh giá dưới 1 triệu - 4\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; mẫu m&aacute;y massage đầu kh&aacute; gọn nhẹ, gi&uacute;p người d&ugrave;ng c&oacute; thể mang đi bất cứ l&uacute;c n&agrave;o. Mẫu m&aacute;y n&agrave;y t&iacute;ch hợp 4 b&aacute;nh xoay c&oacute; 28 đầu massage v&agrave; 84 điểm con tiếp x&uacute;c, gi&uacute;p massage giảm đ&acirc;u, giảm stress cho người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p>Thiết bị n&agrave;y được ho&agrave;n thiện bởi silicon c&oacute; độ đ&agrave;n hồi tốt v&agrave; kh&ocirc;ng l&agrave;m đau người d&ugrave;ng khi tiếp x&uacute;c.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, n&oacute; c&oacute; nguồn pin 1.200 mAh, gi&uacute;p m&aacute;y hoạt động l&acirc;u sau mỗi lần sạc.&nbsp;</p>\r\n\r\n<p><strong>Gia Minh</strong></p>\r\n', 0, '8.jpg', 5990000),
(9, 'HỘP ĐỰNG TRÀ', 1, '<p>(D&acirc;n tr&iacute;)&nbsp;- Một doanh nh&acirc;n trẻ tuổi người Trung Quốc, người được mệnh danh &ldquo;tiểu Jack Ma&rdquo; đ&atilde; chi ra số tiền 4.567.888USD để c&oacute; được bữa ăn trưa ri&ecirc;ng c&ugrave;ng với tỷ ph&uacute; Warren Buffett.</p>\r\n', '<p>Cuộc đấu gi&aacute; thường ni&ecirc;n một buổi ăn trưa ri&ecirc;ng c&ugrave;ng với tỷ ph&uacute; Warren Buffett đ&atilde; kết th&uacute;c v&agrave; người gi&agrave;nh chiến thắng năm nay đ&atilde; chi ra số tiền 4.567.888USD để c&oacute; được bữa ăn c&ugrave;ng vị tỷ ph&uacute; nổi tiếng n&agrave;y. Con số n&agrave;y đ&atilde; vượt qua mức gi&aacute; kỷ lục l&agrave; 3.456.789 USD m&agrave; phi&ecirc;n đấu gi&aacute; từng đạt được trong năm 2012 v&agrave; 2016.</p>\r\n\r\n<p>Kh&aacute;c với nhiều năm trước khi t&ecirc;n của người chiến thắng phi&ecirc;n đấu gi&aacute; thường được giấu k&iacute;n, danh t&iacute;nh của người chiến thắng năm nay được x&aacute;c định l&agrave; Justin Sun.</p>\r\n\r\n<p>Justin (Yuchen) Sun, sinh năm 1990, l&agrave; một doanh nh&acirc;n người Trung Quốc v&agrave; l&agrave; nh&agrave; s&aacute;ng lập c&ocirc;ng ty tiền ảo TRON. Justin Sun được nhiều người đặt cho biệt danh &ldquo;tiểu Jack Ma&rdquo;, theo t&ecirc;n nh&agrave; s&aacute;ng lập h&atilde;ng thương mại điện tử Aliaba v&agrave; l&agrave; người gi&agrave;u nhất Trung Quốc. Hiện tại TRON đang l&agrave; đồng tiền ảo c&oacute; gi&aacute; trị lớn thứ 10 thế giới với vốn h&oacute;a 2,56 tỷ USD.</p>\r\n\r\n<p><img alt=\"Ai đã chi hơn 4,5 triệu USD để ăn trưa cùng tỷ phú Warren Buffett? - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2019/06/04/justin-sun-1-1559636894450.jpg\" title=\"Ai đã chi hơn 4,5 triệu USD để ăn trưa cùng tỷ phú Warren Buffett? - 1\" /></p>\r\n\r\n<p>Justin Sun được nhiều người đặc biệt danh &ldquo;tiểu Jack Ma&rdquo;, đ&atilde; chi ra hơn 4,5 triệu USD để ăn trưa c&ugrave;ng Warren Buffett</p>\r\n\r\n<p>Tỷ ph&uacute; Warren Buffettt, Gi&aacute;m đốc điều h&agrave;nh của Berkshire Hathaway, thực hiện việc đấu gi&aacute; một buổi ăn trưa với m&igrave;nh mỗi năm một lần để quy&ecirc;n tiền cho Quỹ Glide, quỹ gi&uacute;p đỡ người v&ocirc; gia cư ở San Francisco. Nh&agrave; đầu tư đại t&agrave;i Buffettt đ&atilde; quy&ecirc;n g&oacute;p được gần 30 triệu USD cho quỹ từ thiện n&agrave;y trong những năm qua.</p>\r\n\r\n<p>Ăn trưa c&ugrave;ng Warren Buffett, nh&agrave; đầu tư t&agrave;i ba v&agrave; l&agrave; người gi&agrave;u thứ tư tr&ecirc;n thế giới c&oacute; thể l&agrave; bữa ăn mang lại cơ hội để t&igrave;m hiểu về những kinh nghiệm giao dịch, đầu tư v&agrave; những lời khuy&ecirc;n đ&aacute;ng gi&aacute; từ ch&iacute;nh Buffett. Do vậy, nhiều người, đa phần l&agrave; c&aacute;c doanh nh&acirc;n, đ&atilde; kh&ocirc;ng ngần ngại chi ra những khoản tiền khổng lồ để gi&agrave;nh được quyền ăn trưa c&ugrave;ng Warren Buffett.</p>\r\n\r\n<p>Người chiến thắng trong cuộc đấu gi&aacute; c&oacute; thể mời 7 người bạn của họ được ăn trưa với nh&agrave; đầu tư Buffettt tại nh&agrave; h&agrave;ng Smith &amp; Wollensky ở New York. Chia sẻ tr&ecirc;n trang c&aacute; nh&acirc;n của m&igrave;nh, Justin Sun cho biết dự định sẽ mời th&ecirc;m c&aacute;c nh&acirc;n vật nổi tiếng kh&aacute;c trong giới tiền ảo để c&ugrave;ng tham gia bữa ăn trưa với Buffett.</p>\r\n\r\n<p>Năm nay 88 tuổi v&agrave; nắm giữ khối t&agrave;i sản 89,9 tỷ USD trong tay. Warren Buffett l&agrave; một trong số c&aacute;c nh&agrave; từ thiện h&agrave;o ph&oacute;ng nhất thế giới khi đ&atilde; ủng hộ hơn 35 tỷ USD cho c&aacute;c hoạt động từ thiện v&agrave; t&iacute;nh ri&ecirc;ng trong năm 2018, &ocirc;ng đ&atilde; chi ra 3,4 tỷ USD để ủng hộ cho c&aacute;c tổ chức từ thiện. Buffett c&ugrave;ng với một số tỷ ph&uacute; kh&aacute;c như Bill Gates, Mark Zuckerberbg... cũng đ&atilde; c&ugrave;ng k&yacute; v&agrave;o một bản cam kết sẽ chi ra 99% t&agrave;i sản của m&igrave;nh cho mục đ&iacute;ch từ thiện.</p>\r\n\r\n<p><strong>T.Thủy</strong></p>\r\n', 0, '9.jpg', 1060000),
(10, 'HỘP RƯỢU', 1, '<p>(D&acirc;n tr&iacute;)&nbsp;- Smartphone m&agrave;n h&igrave;nh kh&ocirc;ng viền l&agrave; xu thế thiết kế chung trong những năm gần đ&acirc;y, v&agrave; c&aacute;c h&atilde;ng smartphone c&oacute; những giải ph&aacute;p kh&aacute;c nhau để giấu đi camera trước nhằm thu gọn tối đa viền m&agrave;n h&igrave;nh. Mới đ&acirc;y, Oppo v&agrave; Xiaomi vừa h&eacute; lộ một giải ph&aacute;p mới, đ&oacute; l&agrave; ẩn lu&ocirc;n camera trước v&agrave;o b&ecirc;n trong m&agrave;n h&igrave;nh.</p>\r\n', '<p>Để trang bị thiết kế kh&ocirc;ng viền m&agrave;n h&igrave;nh l&ecirc;n sản phẩm của m&igrave;nh, c&aacute;c h&atilde;ng smartphone đ&atilde; đưa ra nhiều giải ph&aacute;p kh&aacute;c nhau, bao gồm m&agrave;n h&igrave;nh &ldquo;tai thỏ&rdquo; để chừa lại một phần &ldquo;tai thỏ&rdquo; nhằm bố tr&iacute; camera trước, hay m&agrave;n h&igrave;nh &ldquo;giọt nước&rdquo; l&agrave; một biến thể của m&agrave;n h&igrave;nh &ldquo;tai thỏ&rdquo; hay gần đ&acirc;y l&agrave; kiểu thiết kế &ldquo;th&ograve; thụt&rdquo; với camera trước được thụt v&agrave;o b&ecirc;n trong m&aacute;y v&agrave; chỉ hiện ra khi cần d&ugrave;ng đến...</p>\r\n\r\n<p>Một số h&atilde;ng kh&aacute;c như Samsung lại sử dụng giải ph&aacute;p m&agrave;n h&igrave;nh &ldquo;đục lỗ&rdquo;, với camera trước được bố tr&iacute; ngay b&ecirc;n trong m&agrave;n h&igrave;nh, tạo th&agrave;nh một lỗ tr&ograve;n ngay tr&ecirc;n m&agrave;n h&igrave;nh v&agrave; khi m&agrave;n h&igrave;nh bật s&aacute;ng, lỗ tr&ograve;n của camera trước sẽ giống như một lỗ thủng tr&ecirc;n m&agrave;n h&igrave;nh, điều n&agrave;y cũng ảnh hưởng &iacute;t nhiều đến t&iacute;nh thẩm mỹ của sản phẩm.</p>\r\n\r\n<p>Mới đ&acirc;y, Oppo lại vừa đưa ra một giải ph&aacute;p mới để ẩn đi camera trước tr&ecirc;n smartphone của m&igrave;nh, đ&oacute; l&agrave; giấu camera ngay b&ecirc;n trong m&agrave;n h&igrave;nh của sản phẩm.</p>\r\n\r\n<p>Oppo đ&atilde; cho đăng tải một đoạn clip ngắn tr&ecirc;n trang Twitter của m&igrave;nh, cho thấy một chiếc smartphone với thiết kế kh&ocirc;ng viền m&agrave;n h&igrave;nh, tuy nhi&ecirc;n điều đặc biệt l&agrave; khi k&iacute;ch hoạt ứng dụng camera tr&ecirc;n sản phẩm, lập tức camera trước sẽ hiện ra ở tr&ecirc;n m&agrave;n h&igrave;nh để sử dụng.</p>\r\n\r\n<p>&ldquo;Với những ai đang t&igrave;m kiếm chiếc smartphone kh&ocirc;ng &ldquo;tai thỏ&rdquo;, trải nghiệm m&agrave;n h&igrave;nh ho&agrave;n hảo, h&atilde;y chuẩn bị kinh ngạc. Bạn đang chi&ecirc;m ngưỡng c&ocirc;ng nghệ camera selfie b&ecirc;n dưới m&agrave;n h&igrave;nh đầu ti&ecirc;n của ch&uacute;ng t&ocirc;i&rdquo;, Oppo giới thiệu về đoạn video được đăng tải l&ecirc;n Twitter.</p>\r\n\r\n<p>Volume 90%</p>\r\n\r\n<p>Ph&aacute;t</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oppo h&eacute; lộ về c&ocirc;ng nghệ giấu camera trước v&agrave;o b&ecirc;n trong m&agrave;n h&igrave;nh smartphone</p>\r\n\r\n<p>Trong khi đ&oacute; cũng như c&ugrave;ng thời điểm, một h&atilde;ng smartphone Trung Quốc kh&aacute;c l&agrave; Xiaomi cũng đ&atilde; cho đăng tải một đoạn video ngắn tr&ecirc;n trang Twitter ch&iacute;nh thức của m&igrave;nh. Trong đoạn video n&agrave;y, Xiaomi đ&atilde; cho thấy 2 chiếc smartphone, trong đ&oacute; chiếc smartphone b&ecirc;n phải c&oacute; thiết kế m&agrave;n h&igrave;nh &ldquo;giọt nước&rdquo; để bố tr&iacute; camera trước, trong khi đ&oacute; chiếc smartphone b&ecirc;n tr&aacute;i c&oacute; thiết kế ho&agrave;n to&agrave;n kh&ocirc;ng viền.</p>\r\n\r\n<p>Khi c&ocirc; g&aacute;i trong đoạn clip k&iacute;ch hoạt ứng dụng camera để sử dụng camera trước, người d&ugrave;ng sẽ kh&ocirc;ng thể nhận thấy được vị tr&iacute; camera trước được xuất hiện tr&ecirc;n chiếc smartphone b&ecirc;n tr&aacute;i n&agrave;y, điều n&agrave;y cho thấy Xiaomi đ&atilde; ẩn giấu camera trước v&agrave;o b&ecirc;n trong m&agrave;n h&igrave;nh của sản phẩm.</p>\r\n\r\n<p>&ldquo;Bạn muốn l&eacute;n nh&igrave;n một ch&uacute;t v&agrave;o tương lai? Xin giới thiệu đến bạn c&ocirc;ng nghệ camera b&ecirc;n dưới m&agrave;n h&igrave;nh&rdquo;, Xiaomi tuy&ecirc;n bố c&ugrave;ng đoạn clip được đăng tải l&ecirc;n trang Twitter.</p>\r\n\r\n<p>Volume 90%</p>\r\n\r\n<p>Ph&aacute;t</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xiaomi giới thiệu smartphone với camera trước giấu b&ecirc;n trong m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Việc giấu camera trước v&agrave;o b&ecirc;n trong m&agrave;n h&igrave;nh cũng giống như kiểu thiết kế m&agrave;n h&igrave;nh &ldquo;đục lỗ&rdquo;, khi camera trước được đặt tr&ecirc;n m&agrave;n h&igrave;nh, tuy nhi&ecirc;n c&ocirc;ng nghệ của Oppo v&agrave; Xiaomi đ&atilde; khắc phục được nhược điểm của m&agrave;n h&igrave;nh &ldquo;đục lỗ&rdquo; đ&oacute; l&agrave; nội dung vẫn sẽ hiển thị b&igrave;nh thường tr&ecirc;n ở vị tr&iacute; đặt camera trước tr&ecirc;n m&agrave;n h&igrave;nh, thay v&igrave; chỉ hiển thị một lỗ đen như kiểu m&agrave;n h&igrave;nh &ldquo;đục lỗ&rdquo;. Điều n&agrave;y sẽ khiến nhiều người kh&ocirc;ng thể nhận ra được vị tr&iacute; của camera trước đang giấu tr&ecirc;n m&agrave;n h&igrave;nh v&agrave; sẽ chỉ biết được khi k&iacute;ch hoạt ứng dụng camera. Điều n&agrave;y sẽ gi&uacute;p tăng t&iacute;nh thẩm mỹ trong thiết kế sản phẩm.</p>\r\n\r\n<p>Hiện vẫn chưa r&otilde; thời điểm Xiaomi v&agrave; Oppo &aacute;p dụng c&ocirc;ng nghệ giấu camera v&agrave;o b&ecirc;n trong m&agrave;n h&igrave;nh l&ecirc;n sản phẩm thực tế, nhưng nhiều khả năng những chiếc smartphone được trang bị c&ocirc;ng nghệ n&agrave;y sẽ sớm được xuất hiện trong tương lai.</p>\r\n\r\n<p><strong>T.Thủy</strong></p>\r\n', 0, '10.jpg', 5990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'admin1@mail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'admin2@mail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'admin3@mail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'admin4@mail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
