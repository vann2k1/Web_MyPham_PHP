-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2021 lúc 11:37 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php41`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `SalesId` int(11) NOT NULL,
  `Product` varchar(90) NOT NULL,
  `TotalSales` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`SalesId`, `Product`, `TotalSales`) VALUES
(1, 'Son moi', 1400),
(2, 'Kem duong da', 800),
(3, 'phan ma hong', 590),
(4, 'kem duong am', 915);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `Number`) VALUES
(1, 'Son Môi', 1400),
(2, 'Phấn Má Hồng', 350),
(3, 'Kem Trắng Da', 430),
(4, 'Kem Dưỡng Ẩm', 380);

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
(6, 'tung anh', 'tung.anhb3@gmail.com', 'Thôn Thanh Hương Xã Xuân Quỳ Huyện Như Xuân Tỉnh Thanh Hóa', '0399966637'),
(7, 'truong ngoc trương', 'tung.anhb3@gmail.com', 'như thanh', '236487236'),
(8, 'vinh', 'tung.anhb3@gmail.com', 'qưereqw', '0825585459'),
(9, 'vinh', 'tung.anhb3@gmail.com', 'ưer4ew', '0825585459'),
(10, 'vinh', 'admin1@mail.com', 's', '0825585459'),
(11, 'oanh', 'van.richard1903@gmail.com', 'hà nội', '1234567');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `createdate` datetime NOT NULL,
  `del_flag` int(1) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `title`, `content`, `image`, `createdate`, `del_flag`, `Mota`) VALUES
(1, 'Làm sao để giữ chồng ?', '<p>&ldquo;T&ocirc;i tin rằng đa số những b&agrave; vợ kh&ocirc;ng để &yacute; rằng người chồng ngắm nh&igrave;n l&agrave;n da của họ nhiều hơn họ tưởng. T&ocirc;i cũng kh&ocirc;ng biết điều n&agrave;y cho đến khi một chuy&ecirc;n gia tư vấn l&agrave;m đẹp khuy&ecirc;n t&ocirc;i: h&atilde;y giữ l&agrave;n da trẻ trung, bởi vẻ tươi trẻ ch&iacute;nh l&agrave; những g&igrave; đ&agrave;n &ocirc;ng t&igrave;m kiếm. Đừng qu&ecirc;n chăm s&oacute;c l&agrave;n da của m&igrave;nh. Đừng d&ugrave;ng mặt m&igrave;nh như một nơi &ldquo;thử&rdquo; x&agrave; ph&ograve;ng. Vậy l&agrave;m sao c&oacute; thể lấy lại vẻ đẹp của m&igrave;nh theo c&aacute;ch đ&oacute;?&rdquo; Đ&oacute; l&agrave; lời quảng c&aacute;o tr&ecirc;n một tờ b&aacute;o của x&agrave; ph&ograve;ng Palmolive năm 1932. Lời đe dọa của Palmolive hay cũng l&agrave; c&acirc;u hỏi từ đ&aacute;y t&acirc;m can của mọi chị em &ldquo;l&agrave;m sao để giữ chồng?&rdquo; đ&atilde; tạo sự thu h&uacute;t từ ngay c&aacute;i nh&igrave;n đầu ti&ecirc;n của bất k&igrave; người phụ nữ n&agrave;o. Thế th&igrave; thử hỏi l&agrave;m sao quảng c&aacute;o n&agrave;y lại kh&ocirc;ng khiến cho Palmolive đạt doanh thu kỉ lục v&agrave;o năm 1932 cơ chứ?</p>\r\n', '1.jpg', '2021-05-07 23:17:49', 1, 'Tôi tin rằng đa số những bà vợ không để ý rằng người chồng ngắm nhìn làn da của họ nhiều hơn họ tưởng. Tôi cũng không biết điều này cho đến khi một chuyên gia tư vấn làm đẹp khuyên tôi: hãy giữ làn da trẻ trung, bởi vẻ tươi trẻ chính là những gì đàn ông tìm kiếm. Đừng quên chăm sóc làn da của mình.'),
(3, 'Những màu son hứa hẹn sẽ ”khuấy đảo” thu đông 2021', '<h1>1. M&agrave;u đỏ rượu</h1>\r\n\r\n<p>M&agrave;u son đỏ rượu kh&ocirc;ng phải sắc son mới nhất nhưng n&oacute; lại lu&ocirc;n thời thượng v&agrave; quyến rũ nhất.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; m&agrave;u son thường xuy&ecirc;n được ca ngợi về mức độ t&ocirc;n da v&agrave; l&agrave;m bật l&ecirc;n kh&iacute; chất của những người sử dụng n&oacute;. D&ugrave; sở hữu l&agrave;n da trắng sứ hoặc hơi ngăm đen th&igrave; khi t&ocirc; điểm m&ocirc;i xinh bằng m&agrave;u đỏ rượu, gương mặt bạn cũng sẽ trở n&ecirc;n tươi s&aacute;ng v&agrave; thu h&uacute;t hơn hẳn.</p>\r\n\r\n<p>Nhất l&agrave; v&agrave;o thời điểm trời chuyển lạnh, sử dụng sắc son đỏ ấm &aacute;p sẽ gi&uacute;p bạn v&ocirc; c&ugrave;ng nổi bật v&agrave; thu h&uacute;t.</p>\r\n\r\n<h1>2. M&agrave;u hồng nude</h1>\r\n\r\n<p>Những c&ocirc; n&agrave;ng nữ t&iacute;nh y&ecirc;u th&iacute;ch sự nhẹ nh&agrave;ng, dịu d&agrave;ng sẽ lu&ocirc;n đặt m&agrave;u hồng nude l&ecirc;n h&agrave;ng đầu khi chọn son.</p>\r\n\r\n<p>Những bạn g&aacute;i kh&ocirc;ng qu&aacute; cầu k&igrave; về trang điểm m&agrave; y&ecirc;u th&iacute;ch sự ngọt ng&agrave;o, nhẹ nh&agrave;ng vừa phải cũng n&ecirc;n sắm ngay một em son m&agrave;u n&agrave;y. Vậy l&agrave; bạn sẽ kh&ocirc;ng phải lo m&igrave;nh nhợt nhạt, k&eacute;m tươi tắn khi xuống phố trong m&ugrave;a thu đ&ocirc;ng lạnh lẽo nữa.</p>\r\n\r\n<h1>3. M&agrave;u cam ch&aacute;y</h1>\r\n\r\n<p>Nếu bạn l&agrave; một t&iacute;n đồ make up th&igrave; cũng biết m&agrave;u son cam ch&aacute;y kh&ocirc;ng phải l&agrave; m&agrave;u son mới, cũng đ&atilde; hot từ những năm trước, nhưng ch&uacute;ng vẫn lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu của những c&ocirc; n&agrave;ng y&ecirc;u son.</p>\r\n\r\n<p>M&agrave;u cam ch&aacute;y l&agrave; sự trộn lẫn giữa m&agrave;u cam v&agrave; n&acirc;u pha th&ecirc;m ch&uacute;t đỏ tạo ra một tone m&agrave;u son trầm ấm rất dễ sử dụng.</p>\r\n\r\n<h1>4. M&agrave;u đỏ n&acirc;u</h1>\r\n\r\n<p>C&aacute;c c&ocirc; n&agrave;ng c&oacute; l&agrave;n da s&aacute;ng, ưa th&iacute;ch sự nổi bật, ph&aacute; c&aacute;ch sẽ cực kỳ hợp với tone m&agrave;u n&agrave;y. Đỏ n&acirc;u đ&atilde; chinh phục kh&ocirc;ng biết bao nhi&ecirc;u c&ocirc; n&agrave;ng bởi sự nổi loạn, mới mẻ nhưng cũng đầy quyến rũ v&agrave; thời thượng của n&oacute;.</p>\r\n\r\n<h1>5. M&agrave;u terracotta</h1>\r\n\r\n<p>Tuy đ&acirc;y kh&ocirc;ng phải l&agrave; một m&agrave;u mới nhưng tone m&agrave;u gần giống với đỏ gạch n&agrave;y lại được chị em rất ưa chuộng. M&agrave;u son n&agrave;y ch&iacute;nh l&agrave; sự kết hợp độc đ&aacute;o giữa cổ điển v&agrave; hiện đại.</p>\r\n', '3.jpg', '0000-00-00 00:00:00', 1, 'Nếu bạn lo sợ mình kém tươi tắn hay thiếu nổi bật khi xuống phố vào mùa thu đông thì hãy tham khảo ngay bài viết dưới đây để bắt kịp trend các màu son đang cực hot những ngày cuối năm 2021 này nhé.'),
(6, 'Nữ phụ trong phim của Lee Min Ho đẹp xuất sắc với 4 màu son cơ bản', '<p>Ng&agrave;y h&ocirc;m qua, bộ phim &quot;Qu&acirc;n Vương Bất Diệt&quot; của đ&agrave;i SBS đ&atilde; g&acirc;y một cơn chấn động kh&ocirc;ng hề nhỏ trong cộng đồng mạng m&agrave; l&yacute; do trước ti&ecirc;n, d&agrave;n cast chủ lực của t&aacute;c phẩm hội tụ to&agrave;n những c&aacute;i t&ecirc;n si&ecirc;u xịn như: Lee Min Ho, Kim Go Eun hay t&agrave;i tử Lee Jung Jin&hellip;</p>\r\n\r\n<p>D&ugrave; mới chỉ l&ecirc;n s&oacute;ng th&ocirc;i nhưng rating của Qu&acirc;n Vương Bất Diệt đ&atilde; vượt qua h&agrave;ng loạt những c&aacute;i t&ecirc;n đ&igrave;nh đ&aacute;m với hai chữ số. Hầu hết đều d&agrave;nh lời khen cho d&agrave;n diễn vi&ecirc;n visual kh&ocirc;ng thể đỉnh hơn.&nbsp;</p>\r\n\r\n<p>V&agrave; ngo&agrave;i những ng&ocirc;i sao đ&atilde; quen với kh&aacute;n giả xem phim truyền h&igrave;nh, một b&oacute;ng hồng xinh đẹp kh&aacute;c cũng nhận được sự quan t&acirc;m chẳng k&eacute;m g&igrave; c&aacute;c đồng nghiệp nhờ visual đỉnh cao, đ&oacute; ch&iacute;nh l&agrave; Jung Eun Chae &ndash; diễn vi&ecirc;n đảm nhận vai nữ thủ tướng đầu ti&ecirc;n v&agrave; trẻ nhất của H&agrave;n Quốc.</p>\r\n\r\n<p>C&oacute; thể thấy l&agrave; b&ecirc;n cạnh style đẳng cấp ch&iacute;nh trị gia, nhan sắc của &quot;nữ thủ tướng&quot; cũng g&acirc;y ấn tượng ở vẻ sang trọng, qu&yacute; ph&aacute;i. V&agrave; tất nhi&ecirc;n, ngo&agrave;i dung mạo trời cho, kh&ocirc;ng thể phủ nhận rằng c&aacute;ch trang điểm, l&agrave;m t&oacute;c, đặc biệt l&agrave; 4 m&agrave;u son dưới đ&acirc;y đ&atilde; gi&uacute;p Jung Eun Chae bật l&ecirc;n vẻ qu&yacute; tộc trong từng khung h&igrave;nh. &nbsp;&nbsp;</p>\r\n\r\n<p><strong>1. Son đỏ</strong></p>\r\n\r\n<p>M&agrave;u son kinh điển n&agrave;y chưa bao giờ l&agrave;m c&aacute;nh chị em thất vọng. Sắc son đỏ kh&ocirc;ng chỉ t&ocirc;n da, dễ d&ugrave;ng m&agrave; c&ograve;n ph&ugrave; ph&eacute;p cho gương mặt th&ecirc;m sắc sảo, quyến rũ. B&ecirc;n cạnh đ&oacute;, ngắm những khoảnh khắc g&acirc;y b&atilde;o của &quot;nữ thủ tướng&quot; Jung Eun Chae, ch&uacute;ng ta c&agrave;ng c&oacute; thể khẳng định l&agrave; m&agrave;u son đỏ rất hợp với những bộ c&aacute;nh sang trọng, đồng thời củng cố th&ecirc;m vẻ thượng lưu cho chủ nh&acirc;n.</p>\r\n\r\n<p><strong>2. Son cam đất</strong></p>\r\n\r\n<p>Son cam đất trẻ trung, kh&ocirc;ng qu&aacute; k&eacute;n da, thậm ch&iacute; c&ograve;n đem đến cho chủ nh&acirc;n vẻ &quot;t&acirc;y t&acirc;y&quot; sang trọng. Nếu bạn sở hữu nước da trắng, son cam đất nhạt l&agrave; một lựa chọn rất ph&ugrave; hợp, mang đến vẻ thanh tao, nh&atilde; nhặn. Trong trường hợp bạn sở hữu l&agrave;n da tối m&agrave;u, h&atilde;y ưu &aacute;i son cam đất t&ocirc;ng đậm, gương mặt sẽ trở n&ecirc;n sang chảnh h&uacute;t hồn.</p>\r\n\r\n<p><strong>3. Son đỏ hồng</strong></p>\r\n\r\n<p>Son đỏ hồng mang đến cho &quot;nữ thủ tướng&quot; diện mạo sắc sảo, quyền lực nhưng vẫn đủ tươi tắn chứ kh&ocirc;ng hắc &aacute;m. Nếu sợ son đỏ hồng k&eacute;n da th&igrave; bạn h&atilde;y học theo &quot;nữ thủ tướng&quot;, chọn sắc độ thật đậm để d&ugrave; da ngăm hay trắng cũng đều chinh phục được v&agrave; to&aacute;t l&ecirc;n vẻ sang trọng.</p>\r\n\r\n<p><strong>4. Son hồng đất</strong></p>\r\n\r\n<p>M&agrave;u son hồng đất ngọt ng&agrave;o, trẻ trung, kh&ocirc;ng k&eacute;n da v&agrave; quan trọng, sắc son nh&atilde; nhặn n&agrave;y sẽ cho chủ nh&acirc;n diện mạo thanh lịch, tinh tế. V&agrave; v&igrave; lẽ đ&oacute;, c&aacute;c n&agrave;ng rất n&ecirc;n bổ sung một c&acirc;y son m&agrave;u hồng đất cho gia t&agrave;i l&agrave;m đẹp của m&igrave;nh. &nbsp;</p>\r\n', '2.jpg', '2021-05-11 00:00:00', 1, '4 màu son dưới đây đã giúp Jung Eun Chae bật lên vẻ quý tộc trong từng khung hình mà ai nhìn vào cũng ngưỡng mộ.'),
(7, '5 màu son cực đẹp cho các nàng da ngăm, đánh lên không lo bị xỉn da vàng răng mà cực kì tôn mặt', '<p><strong>1. Son tone m&agrave;u trầm</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những loại son m&agrave;u trầm thường mang lại vẻ đẹp rất lạ, tươi mới cho những n&agrave;ng sở hữu&nbsp;nước da ngăm, da b&aacute;nh mật. Đừng lo lắng rằng son tone trầm sẽ l&agrave;m sẫm m&agrave;u da bạn, ch&uacute;ng kh&ocirc;ng những khiến da kh&ocirc;ng tối đi m&agrave; c&ograve;n gi&uacute;p tổng thể gương mặt tươi s&aacute;ng v&agrave; thu h&uacute;t hơn.</p>\r\n\r\n<p>Đặc biệt v&agrave;o những sự kiện quan trọng, tiệc t&ugrave;ng buổi tối th&igrave; những gam m&agrave;u n&agrave;y gi&uacute;p bạn nổi bật hơn hẳn, kh&ocirc;ng trở th&agrave;nh t&acirc;m điểm của buổi tiệc nhưng cũng đủ khiến bạn kh&ocirc;ng lu mờ trước mọi người. Ngo&agrave;i ra,&nbsp;tone son m&agrave;u đỏ&nbsp;trầm c&oacute; thể mang lại vẻ đẹp c&aacute; t&iacute;nh, h&uacute;t hồn v&agrave; đ&ocirc;i ch&uacute;t cổ điển. Tuy nhi&ecirc;n chỉ th&iacute;ch hợp v&agrave;o dịp đặc biệt th&ocirc;i nh&eacute;. C&aacute;c m&agrave;u tone trầm kh&ocirc;ng ph&ugrave; hợp với khung cảnh b&igrave;nh thường.</p>\r\n\r\n<h3><strong>2. Son m&agrave;u cam</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Son cam l&agrave; m&agrave;u kh&ocirc;ng thể thiếu của mọi c&ocirc; n&agrave;ng, ch&uacute;ng ph&ugrave; hợp với mọi loại da, từ&nbsp;da trắng s&aacute;ng&nbsp;đến l&agrave;n da ngăm đen. M&agrave;u cam cũng c&oacute; nhiều loại, chỉ cần một ch&uacute;t kh&eacute;o l&eacute;o n&agrave;ng cũng đ&atilde; c&oacute; thể lựa chọn m&agrave;u sắc cho ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<p>M&agrave;u cam thời thượng, trẻ trung, dễ đ&aacute;nh bật tone da v&agrave; khiến đường n&eacute;t khu&ocirc;n mặt sắc sảo hơn. Nếu n&agrave;ng l&agrave; c&ocirc; n&agrave;ng c&aacute; t&iacute;nh, năng động th&igrave; m&agrave;u cam l&agrave; sự lựa chọn đ&uacute;ng đắn d&agrave;nh cho bạn. Lưu &yacute; rằng kh&ocirc;ng n&ecirc;n chọn c&aacute;c m&agrave;u cam sữa hay m&agrave;u cam qu&aacute; ch&oacute;i m&agrave; thay v&agrave;o đ&oacute; n&ecirc;n chọn c&aacute;c sắc cam pha đỏ,&nbsp;son cam đất, đ&acirc;y đều l&agrave; những m&agrave;u son cho da ngăm&nbsp;rất t&ocirc;n l&agrave;n da&nbsp;bạn.</p>\r\n\r\n<h3><strong>3. Son m&agrave;u nude</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;u son nude kh&aacute; nhẹ nh&agrave;ng, trang nh&atilde;, tạo hiệu ứng m&ocirc;i d&agrave;y, căng b&oacute;ng v&agrave; c&oacute; phần sexy, tuy nhi&ecirc;n ch&uacute;ng cũng c&oacute; điểm yếu l&agrave; cần kĩ thuật make up chuy&ecirc;n nghiệp hơn nếu kh&ocirc;ng bạn sẽ l&agrave;m tổng thể gương mặt nhợt nhạt, thiếu sức sống.&nbsp;Khi trang điểm bạn n&ecirc;n kết hợp theo lối trang điểm mắt đậm, sắc sảo, tập trung phần mắt nhiều hơn, m&agrave;u m&aacute; trung t&iacute;nh v&agrave; nhớ đ&aacute;nh khối mặt, cuối c&ugrave;ng l&agrave; chọn m&agrave;u son nude ph&ugrave; hợp.</p>\r\n\r\n<p><strong>4. Son đỏ cam</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;u son đỏ cam&nbsp;ph&ugrave; hợp với sắc tố m&ocirc;i đậm m&agrave;u, gi&uacute;p l&agrave;n da ngăm trở n&ecirc;n s&aacute;ng hơn, đồng thời cũng l&agrave; m&agrave;u son h&agrave;i h&ograve;a v&agrave; tạo n&ecirc;n vẻ đẹp nữ t&iacute;nh cho chị em da ngăm.</p>\r\n\r\n<p>Chị em da ngăm đen tuyệt đối kh&ocirc;ng n&ecirc;n l&agrave;m bạn với c&aacute;c m&agrave;u son qu&aacute; s&aacute;ng m&agrave;u hay m&agrave;u son bợt bởi sự mất c&acirc;n bằng giữa m&agrave;u son v&agrave; m&agrave;u da sẽ c&agrave;ng tố c&aacute;o l&agrave;n da sạm m&agrave;u của bạn đồng thời khiến bạn tr&ocirc;ng mất tự nhi&ecirc;n.</p>\r\n\r\n<p><strong>5. Son đỏ n&acirc;u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;u son đỏ pha n&acirc;u trầm ấm v&agrave; b&iacute; ẩn gi&uacute;p bạn thật nổi bật v&agrave; tỏa s&aacute;ng trong c&aacute;c bữa tiệc tối. Kh&ocirc;ng những vậy, đ&acirc;y cũng l&agrave; m&agrave;u son khiến l&agrave;n da bạn trở n&ecirc;n sexy v&agrave; quyến rũ hơn.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; m&agrave;u son gi&uacute;p c&acirc;n bằng sắc th&aacute;i m&agrave;u da cho chị em c&oacute; tone da tối m&agrave;u v&agrave; ph&ugrave; hợp hơn cả với phụ nữ ngo&agrave;i 30 theo đuổi phong c&aacute;ch c&aacute; t&iacute;nh, cuốn h&uacute;t. Nếu kh&ocirc;ng th&iacute;ch m&agrave;u son qu&aacute; đậm, bạn c&oacute; thể thử đ&aacute;nh 1 lớp son mỏng hơn hoặc sử dụng son kem thay v&igrave; son l&igrave;.</p>\r\n', '4.jpg', '2021-05-11 00:00:00', 0, '');

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
(5, 3, '2019-09-30', 1),
(6, 4, '2019-10-14', 0),
(7, 5, '2019-10-15', 2),
(8, 6, '2019-10-28', 2),
(9, 7, '2020-10-08', 1),
(10, 8, '2021-03-14', 1),
(11, 9, '2021-03-26', 1),
(12, 10, '2021-05-06', 1),
(13, 11, '2021-05-11', 2);

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
(13, 8, 5, 27990000, 1),
(14, 9, 15, 115000, 1),
(15, 9, 14, 179000, 1),
(16, 10, 14, 179000, 1),
(17, 11, 14, 179000, 1),
(18, 12, 15, 115000, 1),
(19, 13, 9, 130000, 1);

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
(1, 'Son mờ lì', 1, 'Xuất xứ : Hàn Quốc    <br />   \r\nKích cỡ : Full size<br />\r\n', 'Son có màu sắc khá bắt mắt, có thể giữ được trong khoảng thời gian từ 7-9 giờ trong ngày mà không sợ bị trôi.', 1, 'son_mo_li.jpg', 650000),
(2, 'Black rouge mousse', 1, 'Xuất xứ : Hàn Quốc<br />\r\nKích cỡ : Full size<br />', 'Hãng mỹ phẩm Black Rouge không làm chị em thất vọng khi liên tục tung ra những dòng son mới với chất lượng ngày càng được nâng cấp. Đầu năm 2019, Black Rouge trình làng bộ sưu tập son Black Rouge Mousse Blending gồm 5 màu, hãy cùng BlogAnChoi xem xét các màu son này nhé.', 1, 'black_rougo_mousse.jpg', 550000),
(3, 'Ombre lipstick', 1, 'Xuất xứ : Hàn Quốc<br />\r\nKích cỡ : Full size<br />', 'Tạo ra một đôi môi ombre mà không phức tạp bằng cách sử dụng son môi ba màu độc đáo này trong một công thức nhiều dưỡng, sắc tố. Công thức dạng kem nhẹ giúp giữ ẩm cho đôi môi cho đôi môi mềm mại và màu sắc đều, mịn giúp bạn luôn thoải mái khi trang điểm.', 0, 'ombre_lipstick.jpg', 499000),
(4, 'Nivea', 1, 'Xuất xứ : Hàn Quốc\r\nKích cỡ: Full size', 'Nivea có nhiều dòng son dưỡng môi khác nhau, trong đó 4 dòng phổ biến nhất là son dưỡng không màu huyền thoại Nivea Essential Care, dòng có màu Nivea Fruity Shine, dòng chống nắng Nivea Med Protection và cuối cùng là son dưỡng dạng hũ Nivea Lip Butter Vanilla & Macamadia Kiss', 0, 'nivea.jpg', 289000),
(5, 'Black rouge', 1, 'Xuất xứ : Hàn Quốc\r\nKích cỡ : tiêu chuẩn', '* Thành Phần Chính Và Công Dụng:\r\nSon kem lì mịn thuộc dòng Air Fit Velvet Tint Blueming Garden của Black Rouge với chất son nhẹ tênh, giúp bạn hạn chế tối đa tình trạng khô môi. Son lên chuẩn sắc và giữ màu đến 8 tiếng và có một lớp base hồng nhẹ giúp môi luôn có sức sống. Thiết kế thân vuông đặc trưng của thương hiệu Black Rouge với logo được in hologram óng ánh sang trọng.\r\n\r\n- Kết cấu velvet bám chắc trên đôi môi và rõ sắc son chỉ với một lần chạm nhẹ\r\n- Chất son nhẹ như không tránh cảm giác gây nặng môi\r\n- Thành phần giàu dưỡng ẩm tránh gây khô môi như những dòng son tint khác\r\n- Hương trái cây ngọt ngào sẽ lôi cuốn mọi cô gái ngay lập tức\r\n- Kết cấu mịn cùng màu sắc tươi sáng giúp che khuyết điểm môi hiệu quả chỉ sau một lần đánh\r\n- Độ bám màu của son tốt, giữ nguyên sắc môi xinh cả ngày dài\r\n- 5 sắc hoa nở rộ thu hút, dễ dàng cho nhiều phong cách makeup.', 0, 'black_rouge.jpg', 599000),
(6, 'Son Kem Lì Laskin Matte Liptint Korea', 1, 'Xuất xứ: Hàn quốc\r\nKích cỡ : tiêu chuẩn', 'Son kem lì Laskin Lipstick Korea\r\n- Thông tin chung:\r\n+ Thương hiệu: Laskin\r\n+ HSD: 3 năm từ ngày sản xuất\r\n+ Số công bố: \r\n+ Định lượng: 6ml\r\n+ Tính chất: Son kem lì\r\n- Bộ sưu tập son Laskin Cosmetic, bao gồm 5 màu son\r\n#1 Jolly - Cam Da\r\n#2 Dreamy - Đỏ Hồng Đất\r\n#3 Classy - Đỏ Cam Cháy\r\n#4 Trendy - Đỏ Gạch\r\n#5 Witty - Đỏ Nâu\r\n- Màu 01 Jolly \r\n+ Cam da với độ ấm vừa phải nên không làm khuôn mặt nhợt nhạt. Với màu này các nàng nên kết hợp trang điểm theo phong cách Âu Mỹ sẽ cho một vẻ ngoài cá tính, sang chảnh và đầy thu hút.\r\n\r\n- Màu 02 Dreamy - Đỏ hồng đất\r\n+ Là một tone màu hồng đất ấm, thiên hồng nhiều hơn nên dễ phù hợp với màu da vàng của người châu á, hơn nữa cũng dễ kết hợp với nhiều kiểu makeup khác nhau.\r\n+ Nếu bạn thích một màu son đỏ nhưng không quá... đỏ, đỏ đất Dreamy tươi tắn nhưng dịu dàng là một sự lựa chọn cực kỳ phù hợp.\r\n\r\n- Màu 03 Classy đỏ cam cháy: \r\n+ Tông son nổi bật, tươi mới nhất trong bảng 5 màu son. Khi cần thu hút sự chú ý của mọi người hay muốn trở lên tự tin hơn với phong cách trẻ trung năng động thì đây là màu son hoàn toàn giúp các cô gái trở nên nổi bật hơn. \r\n+ Màu son không kén tông da và men răng, và đặc biệt khá ưng trên mặt mộc.\r\n\r\n- Màu 04 Trendy Đỏ Gạch: Màu son thuộc tone đỏ gạch trầm nhưng nghiêng về sắc cam nhiều hơn nên cũng tươi và trẻ trung hơn. Sắc son sẽ làm cho khuôn mặt cùng men răng các nàng bức sáng, không kén tone da, rất thích hợp cho những cô nàng công sở chọn phong cách trang điểm nhẹ nhàng với sắc son vô cùng thanh lịch.\r\n\r\n- Màu 05 Witty - Đỏ Nâu: Đây là màu son hot trend nhất hiện nay và cũng là màu best saller của tất cả hãng son. sự kết hợp tinh tế giữa đỏ truyền thống và đỏ nâu  tạo nên một màu son vừa cổ điển, vừa hiện đại, phù hợp hầu hết tone da và không hề kén răng.', 0, 'Son_Kem_Li_Laskin_Matte_Liptint_Korea.jpg', 386000),
(7, 'Phấn Má Hồng Sivanna Obsession', 2, 'Xuất xứ : hàn Quốc\r\nKích cỡ : Tiêu chuẩn', 'Đối với các cô nàng thường xuyên trang điểm thì việc đánh phấn má hồng được xem là bước quan trọng không thể thiếu cho vẻ đẹp hoàn hảo. Sivanna Colors Obsession HF3015 20g là dòng phấn má hồng đặc biệt đến từ thương hiệu mỹ phẩm hàng đầu Thái Lan đang được nhiều người yêu thích. \r\n\r\nSản phẩm là sự kết hợp hài hòa giữa phấn má hồng với phấn tạo khối-highlight bắt sáng giúp tạo hiệu ứng cho làn da tươi tắn tràn đầy sức sống.\r\n\r\nPhấn má hồng bắt sáng Sivanna Colors Obsession HF3015 20g là một trong những bảo bối cho các nàng tỏa sáng dù ở bất kì nơi nào.\r\n\r\nĐặc điểm nổi bật của phấn má: Kết cấu phấn mỏng nhẹ, mịn màng Bền màu và độ bám cao Tạo hình thể với hạt phấn trong suốt và sáng lấp lánh, đem đến nét rạng rỡ cho làn da ngay tức thì. Mang đến hiệu ứng cho đôi gò má ửng hồng tự nhiên, trong trẻo Giúp làn da tỏa sáng tự nhiên. Có thể sử dụng như phấn highlight để tạo khối cho gương mặt thon gọn và nổi bật.\r\n\r\ncực mịn và nhuyễn, không gây vón cục và rất dễ tán, không bí da và độ bám cũng cực kì lâu. Bảng phấn sẽ tạo vẻ rạng rỡ và tươi tắn, phản chút ánh nhũ nhẹ nhàng, đa công dụng với khả năng dùng làm màu mắt, má hồng, bắt sáng hoặc tạo khối cho khuôn mặt tươi sáng và thu hút hơn.\r\n\r\nNàng nào yêu thích kiểu phấn Ombre thì đây là một gợi ý không thể nào tuyệt vời hơn luôn ạ. Phấn má hồng bắt sáng Sivanna Colors Obsession HF3015 được thiết kế theo kiểu ombre, phấn sẽ chuyển màu từ nhạt sang đậm, hoặc chuyển dần sang một màu khác trong cùng một ô. Nàng sẽ dễ dàng phối màu để trang điểm.', 1, 'Phan_Ma_Hong_Sivanna_Obsession.jpg', 276000),
(8, 'Phấn Má Hồng Lameila Gốm Vitality Blush Color Geometry', 2, 'Xuất xứ : Trung quốc\r\nKích cỡ : Tiêu chuẩn', 'Phấn má hồng lameila vality là má hông dạng phấn nén truyền thống nhưng rất hiện đại, hợp thời trang & cá tính.\r\n– Những gam màu đơn sắc chuyển từ nhạt sang đậm phù hợp với nhu cầu trang điểm mịn, lì, khô thoáng.\r\n– Màu sắc được pha trộn cũng như hiệu ứng phát sáng tại những điểm giao thoa, giúp gương mặt trông nổi bật & cá tính hơn, bắt kịp xu hướng trang điểm thời thượng của thế giới, phù hợp với nhiều phong cách trang điểm khác nhau từ đi làm, đi học đến đi chơi, du lịch.', 0, 'Phan_Ma_Hong_Lameila_Gom_Vitality_Blush_Color_Geometry.jpg', 545000),
(9, 'Phấn má hồng SANIYE một màu nhẹ nhàng lâu trôi chuyên dụng trang điểm E0119', 2, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Thông tin sản phẩm:\r\n  Thương hiệu: SANIYE\r\n  Tên sản phẩm: Phấn má hồng một màu\r\n  Màu sắc: 8 màu\r\n  Kích thước: 6.5*6.5*1.5cm\r\n  Khối lượng: 43g\r\n  Ngày sản xuất: 2019.10\r\n  Hết hạn sử dụng: 2 năm kể từ ngày sản xuất\r\n  Thích hợp cho loại da: mọi loại da\r\n  Gói hàng bao gồm: 1 * Hộp phấn má hồng một màu\r\n  \r\n  Ưu điểm nổi bật: \r\n  ? Dễ dàng lên màu\r\n  ? Kết cấu mềm mại\r\n  ? Hồng và sáng\r\n  ? Nhẹ và mềm\r\n  ? Dễ dàng lên màu\r\n  ? Giúp cho bạn trở nên thanh lịch và hào phóng', 1, 'phan3.jpg', 130000),
(10, 'Phấn má hồng đơn sắc Lameila Blusher Color Geometry BLG6', 2, 'Xuất xứ : hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Đây là một trong những phấn má hồng được các tín đồ làm đẹp ưu ái , không chỉ bởi màu sắc đa dạng phù hợp với nhiều tone màu da mà còn bởi chất lượng phấn quá chuẩn để mang đến một lớp make up hoàn hảo suốt cả ngày dài. \r\n\r\nƯu điểm nổi bật :\r\n- Phấn có thiết kế hộp nhỏ gọn, chắc chắn giúp nàng có thể dễ dàng bỏ túi mang theo bên mình khắp mọi nơi. \r\n- Đặc biệt chất phấn cực kì mỏng mịn với các hạt phấn có khả năng bắt sáng tuyệt vời. \r\n- Khi tán lên da, những hạt phấn siêu mịn dễ dàng tiệp vào da tạo hiệu ứng ửng hồng tự nhiên, không hề bị dày cộm hay bí bít lỗ chân lông.\r\n- Phấn giữ bền màu, lâu trôi suốt cả ngày dài.\r\n', 0, 'phan4.jpg', 165000),
(11, 'Phấn Má Hồng Mengxuan Lâu Trôi Chất Lì Lấp Lánh', 2, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'HÀNG CHÍNH HÃNG 100% \r\n Thời hạn sử dụng: 3 Năm\r\n Đóng gói: 1 Cái / hộp\r\n Thành phần chính: Mica, titanium dioxide, silica, vitamin E, chất tạo màu, v.v.\r\n Khối lượng tịnh: 10g\r\n Người hồi giáo có thể sử dụng được 100% ', 0, 'phan5.jpg', 135000),
(12, 'Phấn má hồng Milani Baked Blush', 2, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', '- Sản phẩm có chất phấn mềm mịn, lâu trôi và có thể bền màu cả ngày.\r\n- Màu lên mượt, bám và rất đẹp do có sự hòa quyện giữa các màu sắc với nhau tạo nên sắc màu tự nhiên nhất khi lên da.\r\n- Chỉ cần dùng cọ phớt nhẹ duy nhất một lần thôi, sản phẩm cũng đã giúp đôi má của bạn lên màu rất chuẩn, cam ra cam, hồng ra hồng, nhũ mịn và bền màu.\r\n- Ngoài ra, vỏ sản phẩm mang một vẻ cổ điển, thanh lịch và vô cùng chắc chắn, vừa tay. Không tạo ra cảm giác nặng nề, quá khổ.\r\n- Thiết kế sang trọng, nhỏ gọn, xinh xắn với gương và cọ theo kèm, bạn có thể mang theo bên mình để sử dụng khi cần.\r\n* Hướng dẫn sử dụng :\r\nMá hồng này dạng baked, bạn có thể dùng chúng ướt hoặc khô. Dùng khô như các loại phấn má thông thường, hoặc làm ẩm cọ bằng cách xịt một chút xíu nước, sau đó dùng như bình thường. Khi dùng ướt, màu blush sẽ lên rõ hơn là khi dùng khô.\r\n', 0, 'phan6.jpg', 121000),
(13, 'Kem Trắng Da Body Ova WhitePro Chính Hãng', 3, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn ', 'OVA WHITEPRO là kem dưỡng trắng body nuôi dưỡng phục hồi, làm săn chắc và cải thiện độ đàn hồi\r\ncho da. Đặc biết nhất, WHITEPRO giúp nâng tông, kích trắng rõ rệt trong vòng 15-20 phút và nếu sử\r\ndụng đều đặn trong 7-10 ngày, sẽ duy trì được kết quả da trăng hồng, mìn màng, căng bóng, và thơm\r\ntho.\r\n\r\nLỢI ÍCH &amp; ƯU ĐIỂM\r\n- 3 lớp bảo vệ:\r\nDưỡng ẩm: giúp da sáng mịn và mềm mại\r\nTái tạo tế bào, trẻ hóa làn da: tăng cường bảo vệ da trước các yếu tố từ môi trường, giúp da căng sáng,\r\ngiảm nếp nhăn\r\nKích trắng nâng tông: da sáng, trắng hồng chỉ sau vài phút sử dụng\r\n- Chỉ số chống nắng SPF 30+: chống nắng hiệu quả\r\n- Phục hồi làn da bị tổn thương, mỏng yếu do lột, tẩy, lạm dụng mỹ phẩm. Giải quyết tình trạng da bị phụ\r\nthuộc các chất như corticoid, Hydroquinone…\r\n- Cung cấp vitamin C và E giúp chống lại các gốc tự do và kích thích sự hình thành collagen\r\n- An toàn: chiết xuất hoàn toàn từ thiên nhiên không gây kích ứng\r\n- Thoải mái: không bết dính, không bóng nhờn, không trôi khi gặp nước', 0, 'kem1.jpg', 198000),
(14, 'KEM DƯỠNG ẨM TRẮNG DA ALOINS EAUDE CREAM S', 4, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', '?? KEM DƯỠNG ẨM TRẮNG DA ALOINS EAUDE CREAM S ? \r\n\r\n?DÙNG CHO CẢ MẶT, BODY HOẶC DÙNG NHƯ KEM TAY\r\n\r\n? Aloins Eaude Cream S được chiết xuất từ cây Lô Hội giúp trắng da, dưỡng ẩm cho da, trị khô da, nứt nẻ da và ngăn chặn nám da do sự hình thành melamin ở tuổi 30.\r\n\r\n? Kem dưỡng da Aloins là loại kem dưỡng ẩm trắng da, có tác dụng nuôi dưỡng làn da sáng mịn, tạo độ ẩm sâu cho da, cung cấp dưỡng chất cần thiết cho 1 làn da khỏe mạnh, bảo vệ ADN màng tế bào, kiểm soát tiến trình lão hóa của da\r\n\r\n? Chiết xuất lô hội có trong Aloins Eaude Cream S giúp dưỡng ẩm cho da, làm da càng ngày càng khỏe mạnh, trắng sáng, hồng hào, mịn màng 1 cách tự nhiên.\r\n\r\n? Kem còn có tác dụng giảm viêm, giảm triệu chứng khô rát khi cháy nắng', 1, 'kem2.jpg', 179000),
(15, 'Kem dưỡng da mặt ban đêm face nhau thai Seimy - Diamond Luxury dưỡng trắng , cấp ẩm, mờ nám, trị mụn', 3, 'Xuất xứ: Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Bộ đôi kem dưỡng và tinh chất DIAMOND LUXURY là kết tinh của những tinh hoa tinh tuý nhất, sở hữu công nghệ hiện đại nhất bóc tách các tế bào bổ sung nuôi dưỡng làn da căng bóng tự nhiên. \r\n\r\n  Quá trình lựa chọn các thành phần để tạo nên hiệu quả phù hợp với mọi loại da là vô cùng quan trọng, không chỉ sở hữu những thành phần HẢO HẠNG QUÝ HIẾM, bộ đôi DIAMOND LUXURY còn đem đến những công dụng tuyệt vời cho làn da : \r\n+ Giúp cấp ẩm, bổ sung dưỡng chất dành cho da.\r\n+ Làm da săn chắc, căng bóng, giảm mụn, mờ vết thâm.\r\n+ Chống lão hoá chảy sệ da.\r\n+ Giảm mờ các vết thâm nám lâu năm và nám sắc tố.\r\n+ Dưỡng trắng da từ sâu bên trong bằng các hoạt chất làm trắng tự nhiên.\r\n+ Phục hồi da yếu, da hư tổn, da sử dụng phải kem trộn.\r\n+ Tái tạo, nuôi dưỡng làn da từ sâu bên trong.\r\n+ Thu nhỏ lỗ chân lông, nâng tông tự nhiên.\r\n+ Tạo sự mềm mại, đàn hồi cho làn da.\r\n+ Mờ nếp nhăn, vết chân chim, ngăn quá trình hình thành sắc tố melanin tạo thành nám\r\n+ Bổ sung Collagen nuôi dưỡng các tế bào làm tái tạo giúp làn da trẻ hoá.', 1, 'kem3.jpg', 115000),
(16, 'POND\'S Kem Trắng Da Không Tì Vết Ban Đêm', 3, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Khi quá trình tái tạo da diễn ra mạnh mẽ nhất. Dưỡng chất kem đêm giúp tái tạo làn da và hồi phục những hư tổn hàng ngày để tăng cường dưỡng trắng da ngay cả trong khi bạn ngủ. Công thức dưỡng trắng GenActiv™, hoạt động tích cực từ sâu bên trong (tại lớp biểu bì), làm giảm quá trình hình thành hắc sắc tố. Sản phẩm có khả năng thích ứng chuyên biệt trên từng làn da, giúp dưỡng trắng và giảm thâm nám tối ưu, mang lại vẻ trắng sáng cho làn da. Với Kem Pond\'s Trắng Không Tì Vết bạn sẽ thức dậy mỗi ngày với vẻ đẹp trắng rạng ngời.', 0, 'kem4.jpg', 199000),
(17, 'Kem Trắng Da Chống Lão Hoá SULWHASOO Luminature Glow 5ml', 3, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Kem kiểm soát độ sáng bóng và bề mặt da ,mang vẻ đẹp trắng hồng cho làn da\r\nGiúp khí sắc da đẹp tự nhiên  không cần trang điểm.\r\n\r\nKem glow cream Với sáng chế độc quyền chỉ có ở Sulwhasoo.\r\n\r\n Bôi sau các lớp giúp các chất dinh dưỡng và độ bóng duy trì lâu,không gây bí da\r\n\r\n?Giúp trắng  da với chiết xuất  hoàng kim(vàng) tâc dụng giữ chặt các sắc tố melanin chống nám tàn nhang,giúp làn da rạng rỡ. \r\n\r\n?giúp da láng mịn săn chắc với chiết xuất từ cây kim ngân. \r\n\r\n?Trị mụn thu nhỏ lỗ chân lông. \r\n?Bóng da với chiết xuất từ dầu quả anh đào. \r\n\r\nSản phẩm thích hợp với mọi loại da\r\nKể cả da nhạy cảm nhất. Da yếu nhất \r\n\r\nTích hợp 3 bước chỉ trong 1 loại kem:\r\ndưỡng trắng,chống nhăn Căng da,săn chắc da \r\n\r\nCòn thay thế cả bước kem lót trước trang điểm', 0, 'c1.jpg', 315000),
(18, 'Kem trắng da chống lão hóa Ohui phyto vital Prime Advancer ampoule capture cream 7ml', 3, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Kem trắng da chống lão hóa Ohui phyto vital Prime Advancer ampoule capture cream\r\n\r\n có tác dụng chống lão hóa, chống nhăn, giúp da săn chắc căng bóng trắng sáng mịn màng như da em bé. Tinh chất thẩm thấu sâu vào 3 lớp biểu bì, thân bì và hạ bì để nuôi dưỡng da từ gốc cho bạn một làn da khỏe và đẹp tự nhiên một cách bền vững.\r\n\r\n- Sét chống lão hóa Ohui phyto vital Prime Advancer\r\n\r\n giữ cho phần cốt lõi của da luôn được vững chắc. Đồng thời, nuôi dưỡng từ sâu bên trong tăng cường khả năng bảo vệ da, giữ da luôn tươi trẻ, khỏe mạnh trước các tác động có hại như stress, tia cực tím UV hay khói bụi, môi trường ô nhiễm bên ngoài\r\n \r\nCông dụng:\r\n- Làm mềm và trắng da\r\n- Chống lão hóa, làm trẻ hóa da\r\n- Làm săn chắc da\r\n- Phục hồi da sau tổn thương\r\n- Giữ ẩm cho da\r\n-trị mụn ', 0, 'c2.jpg', 430000),
(19, 'Kem trắng da ngừa Lão hoá White Doctor Skin Lighting', 3, 'Xuất xứ : Hàn quốc\r\nKích cỡ : Tiêu chuẩn', 'Ship hàng toàn quốc - Thanh toán khi nhận hàng - Đổi trả dễ dàng\r\n\r\nKem trắng da mặt chống lão hóa White Doctors giúp da trắng sáng, mịn màng tự nhiên, chống lão hóa da, loại bỏ gân máu, xóa bỏ các nếp nhăn, giúp da mặt mềm mại và được thư giãn, tăng sức đề kháng chống viêm da, làm đều tông màu da, se khít lỗ chân lông, da căng mịn hồng hào đẹp tự nhiên.\r\n\r\nThành Phần :\r\n\r\nKem dưỡng trắng da chống lão hóa White Doctors là một sự kết hợp hoàn hảo các tinh chất dưỡng da tự nhiên : Bột Yến Mạch, tinh chất tế bào gốc, tinh chất nhau thai cừu, chiết xuất dầu oliu, dịch chiết xuất nhân sâm, tinh chất Bạch Quả, vitamin E, Vitamin C tinh khiết, vitamin B3, Chất chống nắng SPF 30+,  tinh chất Ọme ga 3, Tinh chất thầu dầu , tinh chất nha đam\r\n\r\nSản phẩm được Bộ Y Tế Cấp Chứng nhận chất lượng Quốc Tế CGMP - ASEAN 18/11/2015 - Đủ tiêu chuẩn lưu hành trên toàn thế giới', 0, 'c3.jpg', 365000),
(20, 'Son Thỏi M.O.I 05 Beautiful Liar Màu Cam Đất (Vỏ Đen)', 1, 'Xuất xứ : hàn Quốc <br />\r\nKích cỡ : Tiêu chuẩn<br />\r\nChất son: \r\nChất son nhẹ môi, lên màu chuẩn.\r\n\r\nMàu son đa dạng, phù hợp với xu hướng.\r\n\r\nƯu thế nổi bật:\r\nNhẹ môi, dễ chịu khi dùng thường xuyên.\r\n\r\nChất dưỡng ẩm sâu và giúp môi mềm mượt.\r\n\r\nMùi vanila ngọt ngào\r\n\r\nBám và giữ màu từ 6-8 tiếng.\r\n\r\nBảo vệ môi dưới ánh nắng tia cực tím.\r\n\r\nChống lão hóa cho môi.', 'Son Thỏi M.O.I (Vỏ Đen) Love M.O.I Special Edition là dòng son môi đến từ thương hiệu mỹ phẩm M.O.I của Việt Nam được sản xuất tại Hàn Quốc, đây là phiên bản giới hạn ra mắt mới nhất trong năm 2020 được đại diện bởi các siêu mẫu Hồ Ngọc Hà, Lan Khuê, Võ Hoàng Yến. Bảng màu đa dạng với 12 màu son phù hợp cho mọi cá tính của các cô nàng Châu Á.', 0, 's1.jpg', 376000),
(21, 'Son Kem Lì M.O.I S-Girls 07 Successful', 1, 'Xuất xứ : hàn Quốc <br />\r\nKích cỡ : Tiêu chuẩn<br />\r\nƯu điểm nổi bật:\r\nChất son mịn lì nhưng nhẹ tênh trên môi, tạo cảm giác dễ chịu khi dùng thường xuyên.\r\nChứa dưỡng chất giúp cung cấp độ ẩm chuyên sâu, giúp môi mềm mượt.\r\nBền màu, lâu trôi suốt nhiều giờ đồng hồ.\r\nBộ sưu tập màu sắc thời trang, thích hợp cho nhiều phong cách makeup khác nhau.\r\nChứa thành phần giúp ngăn ngừa lão hóa cho da môi.', 'Sau những thành công nhất định với 3 dòng sản phẩm trước của thương hiệu M.O.I Cosmetics, đến đầu tháng 10/2019, “nữ hoàng giải trí” Hồ Ngọc Hà đã bắt tay cùng với ca sĩ – hoa hậu Hương Giang để hợp tác cho ra mắt dòng son kem lì mang tên “S-Girls by Hương Giang” mới toanh. Bộ sưu tập son lần này lấy cảm hứng từ thế hệ các cô gái trẻ hiện đại ngày nay, với tình yêu cái đẹp mãnh liệt, khả năng tự tin thể hiện phong cách của bản thân và luôn dẫn đầu các xu hướng.', 0, 's2.jpg', 186000),
(22, 'Son Lì VDIVOV BB805 Tag Beige 3.8g', 1, 'Xuất xứ : hàn Quốc <br />\r\nKích cỡ : Tiêu chuẩn<br />\r\nBảo quản:<br />\r\n\r\nTránh ánh nắng trực tiếp.<br />\r\n\r\nĐể nơi khô ráo, thoáng mát.<br />\r\n\r\nĐậy nắp kín sau khi sử dụng.<br />\r\n\r\nTrọng lượng: 3.8g<br />\r\n\r\nThương hiệu: VDIVOV<br />\r\n', 'Son Thỏi Mịn Môi VDIVOV Lip Cut Rouge là sản phẩm đến từ thương hiệu VDIVOV của Hàn Quốc. Sản phẩm có thiết kế vỏ vô cùng sang trọng cùng chất son mịn mượt như nhung với nhiều màu sắc vô cùng trendy giúp đôi môi trở nên quyến rũ, cuốn hút hơn nhiều lần.', 0, 's3.jpg', 328000),
(23, 'Son Lì Lâu Trôi Essance RD404 Pure Red 3.5g', 1, 'Xuất xứ : hàn Quốc <br />\r\nKích cỡ : Tiêu chuẩn<br />\r\nChất son:<br />\r\nChất son mịn trải đều trên môi.<br />\r\n\r\nDễ dàng apply, lên màu chuẩn ngay sau 1 lần apply.<br />\r\n\r\nKhông gây khô môi, khó chịu.<br />\r\n\r\nƯu thế nổi bật:<br />\r\nHiệu ứng mịn lì sắc sảo nhờ sự kết hợp thành phần Velvet Powder và Matter Powder.<br />\r\n\r\nCác hạt thành phần có độ lớn khách nhau giúp son bám chặt trên đôi môi.', 'Son Lì Lâu Trôi Essance Lip Rouge Velvet 3.5g là dòng son môi đến từ thương hiệu mỹ phẩm Essance của Hàn Quốc, với thành phần Velvet Powder và Matter Powder mang lại hiệu ứng mịn lì sắc sảo, son bám chặt trên môi nhưng lại không hề gây cảm giác khô môi, bong tróc, bảng màu đa dạng cho mọi phong cách.', 0, 's4.jpg', 197000),
(24, 'Son Màu Dưỡng Môi Maybelline Màu Cam Đất 518 Chillionaire 3.9g ', 1, '<p>Xuất xứ : h&agrave;n Quốc<br />\r\nK&iacute;ch cỡ : Ti&ecirc;u chuẩn<br />\r\nĐặc điểm nổi bật:<br />\r\n- T&ocirc;ng m&agrave;u son si&ecirc;u đẹp v&agrave; cực k&igrave; dễ d&ugrave;ng.<br />\r\n- Chất son mịn mượt, nhẹ m&ocirc;i, cho lớp finish mềm mại.<br />\r\n- Hiệu ứng satin quyến rũ, bền m&agrave;u v&agrave; kh&ocirc;ng kh&ocirc; m&ocirc;i.<br />\r\n- Tinh chất mật ong dưỡng m&ocirc;i gi&uacute;p m&ocirc;i căng mọng suốt cả ng&agrave;y.<br />\r\n- Thiết kế vỏ son trong suốt tinh tế v&agrave; sang trọng, k&iacute;ch cỡ nhỏ gọn tiện mang theo b&ecirc;n m&igrave;nh bất cứ đ&acirc;u.</p>\r\n', '<p>Những d&ograve;ng son l&igrave; tuy c&oacute; m&agrave;u sắc rất đẹp nhưng lu&ocirc;n khiến bờ m&ocirc;i bạn kh&ocirc; căng, kh&oacute; chịu thậm ch&iacute; ng&agrave;y c&agrave;ng th&acirc;m, xỉn m&agrave;u hơn. L&uacute;c n&agrave;y, một thỏi son m&agrave;u bổ sung dưỡng chất thực sự l&agrave; điều cấp thiết. Son M&agrave;u Dưỡng M&ocirc;i từ thương hiệu Maybelline với c&aacute;c gam m&agrave;u si&ecirc;u đẹp v&agrave; cực hot c&ugrave;ng th&agrave;nh phần gi&agrave;u độ ẩm sẽ gi&uacute;p đ&ocirc;i m&ocirc;i bạn lu&ocirc;n mềm mượt v&agrave; quyến rũ suốt cả ng&agrave;y d&agrave;i, chắc chắn sẽ l&agrave; dự lựa chọn ph&ugrave; hợp m&agrave; c&aacute;c n&agrave;ng m&ocirc;i kh&ocirc; kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n', 0, '1620483742s4.jpg', 311000);

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
(4, 'Nguyễn Văn G', 'admin4@mail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`SalesId`);

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
-- Chỉ mục cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

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
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `SalesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
