-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 06:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protected_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `categories` varchar(200) NOT NULL,
  `social_media` varchar(200) NOT NULL,
  `url` text NOT NULL,
  `note` mediumtext NOT NULL,
  `status` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `categories`, `social_media`, `url`, `note`, `status`) VALUES
(0, 'Movie', 'Mephimmy.com', 'https://mephimmy.com/vung-dat-quy-du-quy-du-troi-day', 'VÙNG ĐẤT QUỶ DỮ: QUỶ DỮ TRỖI DẬY - Resident Evil: Welcome to Raccoon City\r\n\r\n#===Log_[2022/02/07 06:50:35]====#', 'Đã xem'),
(6, 'Movie', 'Motchill.net', 'https://motchill.net/phim/ky-uc-kinh-hoang-7585.html', 'KÝ ỨC KINH HOÀNG - Doctor Sleep (2019)', 'Chưa xem'),
(7, 'Movie', 'Motchill.net', 'https://motchill.net/phim/vung-dat-thay-ma-cu-ban-dup-rwf3-7680.html', 'VÙNG ĐẤT THÂY MA: CÚ BẮN ĐÚP - Zombieland: Double Tap (2019)', 'Đã xem'),
(8, 'Movie', 'Phimvietsub.tv', 'https://phimvietsub.tv/phim/hoc-vien-sat-thu-phan-1-13285/', 'Học Viện Sát Thủ (Phần 1) - Deadly Class (Season 1)', 'Chưa xem'),
(270, 'Tools - Dev', 'Thehinh.com', 'http://www.thehinh.com/tool/TDEE/tinh-tdee.html#gender=male&yr=20&cm=168&kg=65&bfp=20&goal=lose&goal_kg=60&lose_speed=reckless&formula=bfp&units=imperial&exercise=very', 'Công cụ tính TDEE ( số lượng calo cần tiêu thụ / ngày )', 'Đã xem'),
(271, 'Tools - Dev', 'Toptal.com', 'https://www.toptal.com/designers/htmlarrows/symbols/', 'HTML Currency Symbols, Currency Entities and ASCII Currency Character Code Reference', 'Đã xem');

-- --------------------------------------------------------

--
-- Table structure for table `book_sp`
--

CREATE TABLE `book_sp` (
  `id` int(11) NOT NULL,
  `categories` varchar(200) NOT NULL,
  `social_media` varchar(200) NOT NULL,
  `url` text NOT NULL,
  `note` varchar(10000) NOT NULL,
  `status` varchar(200) NOT NULL,
  `time_created` datetime DEFAULT NULL,
  `time_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_sp`
--

INSERT INTO `book_sp` (`id`, `categories`, `social_media`, `url`, `note`, `status`, `time_created`, `time_updated`) VALUES
(1, 'Movie', 'Mephimmy.com', 'https://mephimmy.com/vung-dat-quy-du-quy-du-troi-day', 'VÙNG ĐẤT QUỶ DỮ: QUỶ DỮ TRỖI DẬY - Resident Evil: Welcome to Raccoon City\n\n#===Log_[2022/02/07 06:50:35]====#', 'Đã xem', '2022-02-07 13:01:40', '2022-02-07 06:50:35'),
(2, 'Movie', 'Motchill.net', 'https://motchill.net/phim/chia-khoa-chet-choc-phan-1-7742.html', 'CHÌA KHOÁ CHẾT CHÓC (PHẦN 1) - Locke & Key (Season 1) (2020)', 'Đang xem dở', '2022-02-07 06:09:15', '2022-02-07 06:54:50'),
(3, 'Movie', 'Mephimmy.com', 'https://mephimmy.com/giai-ma-me-cung-3-loi-thoat-tu-than', 'GIẢI MÃ MÊ CUNG 3: LỐI THOÁT TỬ THẦN - The Maze Runner 3: The Death Cure', 'Đang xem dở', '2022-02-07 06:12:38', '2022-02-07 06:54:57'),
(4, 'Movie', 'Motchill.net', 'https://motchill.net/phim/nhung-cuoc-phieu-luu-rung-ron-cua-sabrina-phan-3-8602.html', 'NHỮNG CUỘC PHIÊU LƯU RÙNG RỢN CỦA SABRINA (PHẦN 3) - Chilling Adventures of Sabrina (Season 3) (2020)', 'Đang xem dở', '2022-02-07 06:20:11', '2022-02-07 06:55:12'),
(5, 'Movie', 'Mphimmoitv.net', 'https://mphimmoitv.net/phim-sinh-ton-trong-cam-lang_975.html', 'PHIM SINH TỒN TRONG CÂM LẶNG - The Silence (2019)', 'Đã xem', '2022-02-07 06:24:22', '2022-02-07 06:55:24'),
(6, 'Movie', 'Motchill.net', 'https://motchill.net/phim/ky-uc-kinh-hoang-7585.html', 'KÝ ỨC KINH HOÀNG - Doctor Sleep (2019)', 'Chưa xem', '2022-02-07 06:26:38', '2022-02-07 06:55:35'),
(7, 'Movie', 'Motchill.net', 'https://motchill.net/phim/vung-dat-thay-ma-cu-ban-dup-rwf3-7680.html', 'VÙNG ĐẤT THÂY MA: CÚ BẮN ĐÚP - Zombieland: Double Tap (2019)', 'Đã xem', '2022-02-07 06:28:00', '2022-02-07 06:56:17'),
(8, 'Movie', 'Phimvietsub.tv', 'https://phimvietsub.tv/phim/hoc-vien-sat-thu-phan-1-13285/', 'Học Viện Sát Thủ (Phần 1) - Deadly Class (Season 1)', 'Chưa xem', '2022-02-07 06:28:40', '2022-02-07 06:56:29'),
(9, 'Movie', 'Xemphim.fun', 'https://xemphim.fun/movie/triangle~1183', 'Triangle - Tam giác quỷ (2009)', 'Đã xem', '2022-02-07 06:30:27', '2022-02-07 06:56:36'),
(10, 'Movie', 'Vphimzz.net', 'https://vphimzz.net/', 'Phim HD, Phim Nhanh, Phim Rạp, Phim Thuyết Minh, Phim Mỹ', 'Chưa xem', '2022-02-07 06:31:56', '2022-02-07 06:57:56'),
(11, 'Movie', 'Xemphim.fun', 'https://xemphim.fun/movie/underwater~4719', 'Underwater - Kẻ Săn Mồi Biển Sâu (2020)', 'Chưa xem', '2022-02-07 06:34:00', '2022-02-07 06:58:28'),
(12, 'Movie', 'Xemphim.fun', 'https://xemphim.fun/movie/vivarium~4731', 'Vivarium - Chỗ Sống (2020)', 'Chưa xem', '2022-02-07 06:34:47', '2022-02-07 06:58:58'),
(13, 'Movie', 'Motchill.net', 'https://motchill.net/phim/sieu-anh-hung-indo-8298.html', 'SIÊU ANH HÙNG INDO - Gundala (2019)', 'Chưa xem', '2022-02-07 06:36:58', '2022-02-07 06:59:04'),
(14, 'Movie', 'Ssphim.net', 'https://www.ssphim.net/phim/gac-antlers-2021', 'Gạc - Antlers (2021)', 'Chưa xem', '2022-02-07 06:39:42', '2022-02-07 06:59:12'),
(15, 'Movie', '247phim.com', 'https://247phim.com/xemphim/quy-du-dua-loi-7521', 'Quỷ Dữ Đưa Lối - May the Devil Take You (2018)', 'Chưa xem', '2022-02-07 07:00:19', '2022-02-07 07:00:25'),
(16, 'Movie', 'Motchill.net', 'https://motchill.net/phim/ac-quy-ma-so-chuyen-chua-ke-6617.html', 'ÁC QUỶ MA SƠ: CHUYỆN CHƯA KỂ - The Convent (2019)', 'Đã xem', '2022-02-07 07:02:20', '2022-02-07 07:02:20'),
(17, 'Movie', 'Motchill.net', 'https://247phim.com/xemphim/1-plus-one-2013-8258', 'Nhân bản - +1 (Plus One) (2013)', 'Chưa xem', '2022-02-07 07:05:01', '2022-02-07 07:05:01'),
(18, 'Movie', 'Motchill.net', 'https://motchill.net/phim/khon-kho-8095.html', 'KHỐN KHỔ - The Wretched (2019)', 'Đã xem', '2022-02-07 07:06:26', '2022-02-07 07:06:33'),
(19, 'Movie', 'Vphimzz.net', 'https://vphimzz.net/phim/evil-season-1-quy-du-phan-1-ADEAC/', 'Quỷ Dữ Phần 1 - Evil Season 1', 'Chưa xem', '2022-02-07 07:07:12', '2022-02-07 07:07:12'),
(20, 'Movie', '247phim.com', 'https://247phim.com/xemphim/san-nguoi-8820', 'Săn Người - The Furies (2019)', 'Chưa xem', '2022-02-07 07:07:57', '2022-02-07 07:07:57'),
(21, 'Movie', 'Motchill.net', 'https://motchill.net/phim/hoi-kin-phan-2-8108.html', 'HỘI KÍN (PHẦN 2) - The Order (Season 2) (2020)', 'Đã xem', '2022-02-07 07:08:48', '2022-02-07 07:08:48'),
(22, 'Movie', 'Motchill.net', 'https://motchill.net/xem-phim/thien-bam-phan-1-tap-6-2253_37115.html', 'Thiên Bẩm (Phần 1) -  Tập 6 - The Gifted (Season 1) (2017)', 'Đang xem dở', '2022-02-07 07:10:00', '2022-02-07 07:10:00'),
(23, 'Movie', '247phim.com', 'https://247phim.com/xemphim/can-ham-4132', 'Căn Hầm - 10 Cloverfield Lane (2016)', 'Đã xem', '2022-02-07 07:12:06', '2022-02-07 07:12:06'),
(24, 'Movie', 'Motchill.net', 'https://motchill.net/phim/phu-thuy-phu-thuy-rwf3-8400.html', 'PHÙ THỦY - The Witches (2020)', 'Đã xem', '2022-02-07 07:13:14', '2022-02-07 07:13:14'),
(25, 'Movie', 'Phimvietsub.tv', 'https://phimvietsub.tv/phim/vung-dat-quai-vat-phan-1-17247/', 'Vùng Đất Quái Vật (Phần 1) Lovecraft Country (Season 1)', 'Chưa xem', '2022-02-07 07:14:55', '2022-02-07 07:14:55'),
(26, 'Movie', 'Phimvietsub.tv', 'https://phimvietsub.tv/phim/dung-lang-nghe-17865/', 'Đừng Lắng Nghe - Dont Listen', 'Chưa xem', '2022-02-07 07:17:45', '2022-02-07 07:17:45'),
(27, 'Music', 'Youtube', 'https://www.youtube.com/watch?v=gB7Zc5n-FoQ', 'BLUE TEQUILA - TÁO | Saabirose COVER', 'Đã xem', '2022-02-07 07:19:48', '2022-02-07 07:19:48'),
(28, 'Wiki', 'Inception.fandom.com', 'https://inception.fandom.com/wiki/Limbo', 'Word: inception limbo', 'Đã xem', '2022-02-07 07:26:22', '2022-02-07 07:28:01'),
(29, 'Music', 'Ostonline.net', 'https://ostonline.net/ost-serials/6905-ost-zhuki-na-tnt-2019.html', 'Саундтрек к сериалу - Жуки', 'Đang xem dở', '2022-02-07 07:29:46', '2022-02-07 07:31:01'),
(30, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/Melissa_George', 'Melissa George - Cast', 'Đã xem', '2022-02-07 07:33:37', '2022-02-07 07:33:37'),
(31, 'Wiki', 'Wikipedia.org', 'https://vi.wikipedia.org/wiki/Anya_Taylor-Joy', 'Anya Taylor-Joy - Cast', 'Đã xem', '2022-02-07 07:35:31', '2022-02-07 07:35:31'),
(32, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/Vanessa_Kirby', 'Vanessa Kirby - Cast', 'Đã xem', '2022-02-07 07:36:16', '2022-02-07 07:36:16'),
(33, 'Momo', 'Nhantien.momo.vn', 'https://nhantien.momo.vn/rhi5kpoplaY', 'Nhận tiền momo - HA MINH DUC - QRCODE', 'Đã xem', '2022-02-07 07:37:26', '2022-02-07 07:39:03'),
(34, 'Music', 'Nhacdj.vn', 'https://nhacdj.vn/Booty-Up-Down-Mashup-art114248.html', 'Booty Up & Down - Mashup', 'Đã xem', '2022-02-07 07:40:19', '2022-02-07 07:40:19'),
(35, 'Fun, Relax, Chill', 'Aidn.jp', 'https://aidn.jp/mikutap/', 'Chill with Music!', 'Đã xem', '2022-02-07 07:42:41', '2022-02-07 07:42:41'),
(36, 'Games', 'Dinoswords.gg', 'https://dinoswords.gg/?fbclid=IwAR0FTCPA1P5u5oU-_VXDdcbZLF8QtCoCUxB4L3Cn9KURhUKhzgrhoLbse90', 'Dino Swords custom', 'Đã xem', '2022-02-07 07:44:18', '2022-02-07 07:44:18'),
(37, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/huong-dan-doc-code/?fbclid=IwAR1sY4ZcMSkYkSriGnYZbiNmwTF-epCWUMe5DK7JOQHT6SsxUJWJGOxsRiE', 'Bí kíp luyện Kỹ sư phần mềm: Đọc code!', 'Chưa xem', '2022-02-07 07:46:37', '2022-02-07 07:47:41'),
(38, 'Tips & Trick - Dev', 'Edugate.vn', 'https://edugate.vn/tin-tuc/huong-dan-cach-chen-link-lien-ket-trong-bai-viet/', 'Hướng dẫn cách chèn link liên kết trong bài viết', 'Chưa xem', '2022-02-07 07:48:53', '2022-02-07 07:48:53'),
(39, 'Tools - Dev', 'Myaccount.google.com', 'https://myaccount.google.com/u/0/lesssecureapps?pli=1&rapt=AEjHL4Ppu1tK91Bp5cMrNcJKj-kxNR7uLDGlwQ1XTUldmg5Va9_l7FbmasWbT3zSScktIujd0O-QRrQLWKgxxdYqiKGr8HNthA', 'Quyền truy cập của ứng dụng kém an toàn', 'Đã xem', '2022-02-07 07:51:01', '2022-02-07 07:51:17'),
(40, 'Tools - Dev', 'Savefrom.net', 'https://vi.savefrom.net/58/', 'Trình tải video trực tuyến miễn phí: Tải video từ các dịch vụ video phổ biến!', 'Đã xem', '2022-02-07 07:52:28', '2022-02-07 07:52:28'),
(41, 'Tips & Trick - Dev', 'Nhanhoa.com', 'https://nhanhoa.com/tin-tuc/kich-hoat-chrome-flags-de-co-trai-nghiem-tren-web-tot-hon.html', 'Kích hoạt Chrome Flags để có trải nghiệm trên web tốt hơn', 'Đang xem', '2022-02-07 07:53:55', '2022-02-07 07:53:55'),
(42, 'Tools - Dev', 'Bitly.com', 'https://bitly.com/', 'Rút gọn link', 'Đã xem', '2022-02-07 07:55:08', '2022-02-07 07:55:08'),
(43, 'Tools - Dev', 'Chrome://flags', 'chrome://flags/', 'Tool for Chrome', 'Đã xem', '2022-02-07 07:56:16', '2022-02-07 07:57:14'),
(44, 'Tools - Dev', 'Fast.com', 'https://fast.com/', 'Test tốc độ mạng', 'Đã xem', '2022-02-07 07:57:00', '2022-02-07 07:57:00'),
(45, 'Tips & Trick - Dev', 'Share.zendvn.com', 'http://share.zendvn.com/cong-cu-lap-trinh/tong-hop-cac-extension-cho-designer-news-950.html?fbclid=IwAR1sY4ZcMSkYkSriGnYZbiNmwTF-epCWUMe5DK7JOQHT6SsxUJWJGOxsRiE', 'Tổng hợp các extension cho designer Chrome', 'Chưa xem', '2022-02-07 07:57:55', '2022-02-07 07:57:55'),
(46, 'Tools - Dev', 'Y2mate.com', 'https://www.y2mate.com/en202', 'Download Video and Audio from YouTube', 'Đã xem', '2022-02-07 07:58:53', '2022-02-07 07:58:53'),
(47, 'Tools - Dev', 'Anotepad.com', 'https://anotepad.com/', 'Notepad online', 'Đã xem', '2022-02-07 08:00:07', '2022-02-07 08:06:04'),
(48, 'Tools - Dev', 'IP-tracker.org', 'https://www.ip-tracker.org/lookup.php?ip=42.112.237.18', 'check IP location, IP Tracker', 'Đã xem', '2022-02-07 08:01:29', '2022-02-07 08:05:56'),
(49, 'Tools - Dev', 'Rapidtables.com', 'https://www.rapidtables.com/convert/color/hex-to-rgb.html', 'Hex to RGB Color Converter', 'Đã xem', '2022-02-07 08:02:23', '2022-02-07 08:05:49'),
(50, 'Tools - Dev', 'Checkip.dyndns.org', 'http://checkip.dyndns.org/', 'check ip nhanh', 'Đã xem', '2022-02-07 08:03:11', '2022-02-07 08:05:41'),
(51, 'Tools - Dev', 'Similarweb.com', 'https://www.similarweb.com/fr/top-websites/vietnam/', 'Xếp hạng các trang web phổ biến nhất Việt Nam', 'Đã xem', '2022-02-07 08:05:11', '2022-02-07 08:05:34'),
(52, 'Tools - Dev', 'Socialblade.com', 'https://socialblade.com/', 'ANALYTICS MADE EASY YOUTUBE', 'Đã xem', '2022-02-07 08:48:24', '2022-02-07 08:48:24'),
(53, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/8-video-game-lap-trinh/?fbclid=IwAR1sY4ZcMSkYkSriGnYZbiNmwTF-epCWUMe5DK7JOQHT6SsxUJWJGOxsRiE', '8 video game giúp bạn lập trình web tốt hơn', 'Chưa xem', '2022-02-07 08:50:41', '2022-02-07 08:50:41'),
(54, 'Programing', 'Quantrimang.com', 'https://quantrimang.com/cac-lenh-shell-co-ban-trong-linux-35789', 'https://quantrimang.com/cac-lenh-shell-co-ban-trong-linux-35789', 'Đã xem', '2022-02-07 08:53:47', '2022-02-07 09:48:51'),
(55, 'Programing', 'Vietjack.com', 'https://vietjack.com/unix/cac_toan_tu_shell_co_ban_trong_unix_linux.jsp', 'Các toán tử Shell cơ bản', 'Đã xem', '2022-02-07 08:54:28', '2022-02-07 09:49:09'),
(56, 'Tips & Trick - Dev', 'Vn-z.vn', 'https://vn-z.vn/threads/luoc-su-ve-tat-ca-cac-loai-virus-may-tinh-malware-ransomware-trojan-worm-spyware-adware-botnet-keylogger-va-cach-phong-chong.4614/?fbclid=IwAR1sY4ZcMSkYkSriGnYZbiNmwTF-epCWUMe5DK7JOQHT6SsxUJWJGOxsRiE', 'Lược sử về tất cả các loại virus máy tính malware, ransomware, trojan, worm, spyware, adware, Botnet,keylogger... và cách phòng chống', 'Đã xem', '2022-02-07 08:55:12', '2022-02-07 08:55:12'),
(57, 'Programing', 'Vn-z.vn', 'https://vn-z.vn/threads/15-cau-lenh-trong-cua-so-run-quan-trong-ma-nguoi-dung-windows-nen-biet.535/?fbclid=IwAR1sY4ZcMSkYkSriGnYZbiNmwTF-epCWUMe5DK7JOQHT6SsxUJWJGOxsRiE', '15 câu lệnh trong cửa sổ RUN quan trọng mà người dùng Windows nên biết', 'Đã xem', '2022-02-07 08:55:42', '2022-02-07 09:49:19'),
(58, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/Conjurer_(film)', 'Word: Conjurer', 'Đã xem', '2022-02-07 08:57:20', '2022-02-07 08:57:20'),
(59, 'Wiki', 'Wikipedia.org', 'https://en.m.wikipedia.org/wiki/Witchcraft', 'Word: Witchcraft', 'Đã xem', '2022-02-07 08:59:02', '2022-02-07 08:59:02'),
(60, 'Wiki', 'Wikipedia.org', 'https://en.m.wikipedia.org/wiki/Magic_(supernatural)', 'Word: Magic (supernatural)', 'Đã xem', '2022-02-07 08:59:20', '2022-02-07 08:59:20'),
(61, 'Wiki', 'Wikipedia.org', 'https://vi.wikipedia.org/wiki/Mckenna_Grace', 'Mckenna Grace - Cast', 'Đã xem', '2022-02-07 09:01:32', '2022-02-07 09:01:32'),
(62, 'Wallpapers', 'Gvn360.com', 'https://gvn360.com/hinh-nen/vi-ai-cung-can-desktop-an-tuong-moi-anh-em-tai-bo-hinh-nen-cyberpunk-phong-cach-anime-1/', 'Vì ai cũng cần desktop ấn tượng, mời anh em tải bộ hình nền Cyberpunk phong cách Anime', 'Đã xem', '2022-02-07 09:02:44', '2022-02-07 09:02:44'),
(63, 'Tools - Dev', 'Unscreen.com', 'https://www.unscreen.com/', 'Remove Video Background Online', 'Chưa xem', '2022-02-07 09:04:47', '2022-02-07 09:05:28'),
(64, 'Tools - Dev', 'Onlinegdb.com', 'https://www.onlinegdb.com/?fbclid=IwAR2zqocjlZaDdikamX93pwCHhMF2hEC1yAq1KzfcZ2c-iIgaf0-LjHVqBFo', 'Run code online', 'Đã xem', '2022-02-07 09:06:33', '2022-02-07 09:06:33'),
(65, 'Tools - Dev', 'Flaticon.com', 'https://www.flaticon.com/', 'Icon Free', 'Đã xem', '2022-02-07 09:33:17', '2022-02-07 09:33:17'),
(66, 'Tools - Dev', 'Hatchful.shopify.com', 'https://hatchful.shopify.com/', 'Free Icon', 'Đã xem', '2022-02-07 09:33:59', '2022-02-07 09:33:59'),
(67, 'Tools - Dev', 'Alternativeto.net', 'https://alternativeto.net/', 'AlternativeTo là một trang web liệt kê các lựa chọn thay thế cho phần mềm dựa trên web , phần mềm máy tính để bàn và ứng dụng dành cho thiết bị di động , đồng thời sắp xếp các lựa chọn thay thế theo nhiều tiêu chí khác nhau', 'Đã xem', '2022-02-07 09:36:06', '2022-02-07 09:36:06'),
(68, 'English', 'Playphrase.me', 'https://www.playphrase.me/#/search', 'Tìm từ xuất hiện trong phim English', 'Đã xem', '2022-02-07 09:37:58', '2022-02-07 09:39:54'),
(69, 'Movie', 'Tinyzonetv.to', 'https://tinyzonetv.to/home', 'Tinyzone là gì?\r\nTinyzone là nơi để đến khi bạn đang tìm kiếm các bộ phim và chương trình truyền hình miễn phí để xem. Bất cứ điều gì bạn có thể yêu cầu từ một trang web phát trực tuyến miễn phí, bạn có thể tìm thấy nó tại Tinyzone. Chúng tôi có thư viện nội dung phong phú, độ phân giải HD, phụ đề tiếng Anh và tiếng Tây Ban Nha, phát trực tuyến liền mạch và các tính năng nổi bật khác, để đảm bảo bạn có thể có được trải nghiệm xem cao cấp tại Tinyzone mà không phải trả một xu nào.', 'Chưa xem', '2022-02-07 09:39:21', '2022-02-07 09:39:21'),
(70, 'Movie', 'Cineb.net', 'https://cineb.net/watch-movie/watch-mortal-kombat-free-66696.4176038', 'Mortal Kombat 2021', 'Chưa xem', '2022-02-07 09:42:05', '2022-02-07 09:42:05'),
(71, 'Programing', 'Chamcode.net', 'https://chamcode.net/', 'Hoc code (C, C++)', 'Chưa xem', '2022-02-07 09:44:48', '2022-02-07 09:45:44'),
(72, 'Programing', 'Thenewsmexico.com', 'https://thenewsmexico.com/cung-nhau-giai-dap-tat-tan-tat-ve-bang-ma-ascii/', 'Cùng Nhau Giải Đáp Tất Tần Tật Về Bảng Mã ASCII', 'Chưa xem', '2022-02-07 09:47:21', '2022-02-07 09:47:21'),
(73, 'Programing', 'Digistar.vn', 'https://www.digistar.vn/tat-tan-tat-nhung-lenh-run-cmd-thong-dung/', 'Tất tần tật những lệnh Run CMD thông dụng', 'Chưa xem', '2022-02-07 09:48:18', '2022-02-07 09:48:18'),
(74, 'Programing', 'Sharecode.vn', 'https://sharecode.vn/the-loai-source-code/game-3.htm', 'Share source code', 'Chưa xem', '2022-02-07 09:50:40', '2022-02-07 09:50:40'),
(75, 'Programing', 'Daynhauhoc.com', 'https://daynhauhoc.com/t/cach-tao-mat-khau-trong-c/694/10', 'Cách tạo mật khẩu trong C++Cách tạo mật khẩu trong C++', 'Chưa xem', '2022-02-07 09:52:29', '2022-02-07 09:52:29'),
(76, 'Programing', 'Cuongblhs.blogspot.com', 'http://cuongblhs.blogspot.com/2017/08/ma-hoa-dich-vong-an-toan-va-bao-mat.html', '[C++] Mã hóa dịch vòng - AT&BMTT', 'Chưa xem', '2022-02-07 09:53:33', '2022-02-07 09:53:33'),
(77, 'Tools - Dev', 'Stdio.vn', 'https://www.stdio.vn/vi', 'Đo khoảng cách bằng Pixel và Kích thước thực trên màn hình\r\n\r\nMột công cụ hữu ích dành cho các nhà phát triển và nhà thiết kế để nhanh chóng nhận được các phép đo theo pixel và kích thước thực tế trên màn hình.', 'Chưa xem', '2022-02-07 09:55:42', '2022-02-07 09:55:42'),
(78, 'Programing', 'Youtube', 'https://www.youtube.com/watch?v=Br739UecvZQ', 'C# Tutorial - How to Encode and Decode QR Code | FoxLearn', 'Đã xem', '2022-02-07 09:56:36', '2022-02-07 09:56:48'),
(79, 'Tools - Dev', 'Calculator.net', 'https://www.calculator.net/hex-calculator.html', 'Hex Calculator Online', 'Đã xem', '2022-02-07 09:57:50', '2022-02-07 09:57:50'),
(80, 'Programing', 'Code24h.com', 'https://code24h.com/c-huong-dan-tao-ma-tu-dong-otp-trong-lap-trinh-csharp-d24840.htm', '[C#] Hướng dẫn tạo mã tự động OTP trong lập trình Csharp', 'Chưa xem', '2022-02-07 09:59:04', '2022-02-07 09:59:04'),
(81, 'Programing', 'C-Sharpcorner.com', 'https://www.c-sharpcorner.com/UploadFile/009464/save-data-to-text-file-in-windows-form-using-C-Sharp/', 'Save Data To Text File In Windows Form Using C#', 'Đã xem', '2022-02-07 10:00:03', '2022-02-07 10:00:03'),
(82, 'Programing', 'Youtube', 'https://www.youtube.com/watch?v=r94gKb-NzLM', 'Encoding Strings to Base64 in C#', 'Đã xem', '2022-02-07 10:00:35', '2022-02-07 10:00:35'),
(83, 'Programing', 'Stackoverflow.com', 'https://stackoverflow.com/questions/4758283/reading-data-from-a-website-using-c-sharp', 'Reading data from a website using C#', 'Đã xem', '2022-02-07 10:01:28', '2022-02-07 10:01:28'),
(84, 'Programing', 'Stackoverflow.com', 'https://stackoverflow.com/questions/23041021/how-to-write-some-data-to-excel-file-xlsx', 'How to write some data to excel file(.xlsx)', 'Đã xem', '2022-02-07 10:01:55', '2022-02-07 10:01:55'),
(85, 'Android - Xiaomi', 'Mifirm.net', 'https://mifirm.net/download/3099', 'Rom Miui', 'Đã xem', '2022-02-07 10:05:43', '2022-02-07 10:05:43'),
(86, 'Tips & Trick - Dev', 'Tienminhvy.com', 'https://tienminhvy.com/chia-se/cach-tim-ngay-tao-gmail-nhanh-chong/?utm_source=j2team&utm_medium=url_shortener', 'Cách tìm ngày tạo Gmail nhanh chóng', 'Đã xem', '2022-02-07 10:07:13', '2022-02-07 10:07:13'),
(87, 'Tools - Dev', 'Dnsdumpster.com', 'https://dnsdumpster.com/', 'DNSdumpster.com is a FREE domain research tool that can discover hosts related to a domain. Finding visible hosts from the attackers perspective is an important part of the security assessment process.', 'Đã xem', '2022-02-07 10:09:24', '2022-02-07 10:09:24'),
(88, 'Tools - Dev', 'Cloudflare.com', 'https://www.cloudflare.com/', 'Cloudflare is a global network designed to make everything you connect to the Internet secure, private, fast, and reliable.', 'Đã xem', '2022-02-07 10:10:15', '2022-02-07 10:10:15'),
(89, 'Tools - Dev', 'Freenom.com', 'https://www.freenom.com/vi/index.html?lang=vi', 'Mua, kiểm tra, lấy tên miền', 'Đã xem', '2022-02-07 10:11:28', '2022-02-07 10:11:28'),
(90, 'Tools - Dev', 'Fastly.com', 'https://www.fastly.com/', 'Fastly is an American cloud computing services provider. It describes its network as an edge cloud platform\r\nhttps://en.wikipedia.org/wiki/Fastly', 'Chưa xem', '2022-02-07 10:13:39', '2022-02-07 10:13:39'),
(91, 'Programing', 'Github.com', 'https://github.com/prabinmagar/product-detail-card-slider', 'product-detail-card-slider - (Trang product detail card slider)', 'Chưa xem', '2022-02-07 10:16:11', '2022-02-07 10:16:11'),
(92, 'Programing', 'Stackoverflow.com', 'https://stackoverflow.com/questions/9394131/go-to-url-after-ok-button-if-alert-is-pressed', 'Go to URL after OK button if alert is pressed - Javascript', 'Đã xem', '2022-02-07 10:17:09', '2022-02-07 10:17:09'),
(93, 'Wallpapers', 'Goodfon.com', 'https://anime.goodfon.com/art-anime/wallpaper-by-3d-render-portret-devushki-litso-ochki-ruka.html', 'Wallpaper-by-3d-render-portret-devushki-litso-ochki-ruka', 'Đã xem', '2022-02-07 10:18:15', '2022-03-04 12:24:21'),
(94, 'Tools - Dev', 'Whatismyipaddress.com', 'https://whatismyipaddress.com/ip-lookup', 'Find my IP Address', 'Đã xem', '2022-02-07 10:19:26', '2022-02-07 10:21:02'),
(95, 'Tools - Dev', 'Ipchicken.com', 'https://www.ipchicken.com/', 'Find my IP Address', 'Đã xem', '2022-02-07 10:20:16', '2022-02-07 10:20:16'),
(96, 'Tools - Dev', 'Iplocation.net', 'https://www.iplocation.net/', 'Find my IP Address', 'Đã xem', '2022-02-07 10:21:19', '2022-02-07 10:21:19'),
(97, 'Tools - Dev', 'Iplocation.com', 'https://iplocation.com/', 'Find my IP Address', 'Đã xem', '2022-02-07 10:21:43', '2022-02-07 10:21:43'),
(98, 'Wallpapers', 'Quantrimang.com', 'https://quantrimang.com/hinh-nen-genshin-impact-anh-nen-genshin-impact-dep-175728', 'Hinh nen Genshin Impact', 'Đã xem', '2022-02-07 10:22:34', '2022-02-07 10:22:34'),
(99, 'Tools - Dev', 'Muathe123.vn', 'https://muathe123.vn/', 'Mua the dien thoai Online', 'Đã xem', '2022-02-07 10:23:30', '2022-02-07 10:23:30'),
(100, 'Tools - Dev', 'Napthengay.vn', 'https://napthengay.vn/', 'Mua the dien thoai Online', 'Đã xem', '2022-02-07 10:23:56', '2022-02-07 10:23:56'),
(101, 'Tools - Dev', 'Any-api.com', 'https://any-api.com/', 'cung cap API', 'Chưa xem', '2022-02-07 10:24:54', '2022-02-07 10:24:54'),
(102, 'Tips & Trick - Dev', 'Colorme.vn', 'https://colorme.vn/blog/vfx-la-gi-dinh-huong-hanh-trinh-tro-thanh-visual-effects-vfx-artist-chuyen-nghiep', 'VFX là gì? Định hướng hành trình trở thành Visual Effects (VFX) Artist chuyên nghiệp', 'Đang xem', '2022-02-07 10:25:38', '2022-02-07 10:25:38'),
(103, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/Grandfather_paradox', 'Grandfather paradox', 'Đã xem', '2022-02-07 10:26:39', '2022-02-07 10:26:39'),
(104, 'Wiki', 'Wikipedia.org', 'https://vi.wikipedia.org/wiki/M%E1%BA%B7t_Mobius', 'Mobius', 'Đã xem', '2022-02-07 10:27:05', '2022-02-07 10:27:05'),
(105, 'Tools - Dev', 'Reqres.in', 'https://reqres.in/', 'cung cap API', 'Chưa xem', '2022-02-07 10:28:08', '2022-02-07 10:28:08'),
(106, 'Movie', 'Motphimtv.com', 'https://motphimtv.com/phim/xu-so-dieu-ky-cua-willy-8ef5-9027.html', 'XỨ SỞ DIỆU KỲ CỦA WILLY - Willy is Wonderland (2021)', 'Đã xem', '2022-02-07 10:30:04', '2022-02-07 10:30:04'),
(107, 'Programing', 'W3resource.com', 'https://www.w3resource.com/c-programming-exercises/linked_list/c-linked_list-exercise-1.php', 'C Exercises: To create and display Singly Linked List', 'Đã xem', '2022-02-07 10:30:52', '2022-02-07 10:30:52'),
(108, 'Tools - Dev', 'Xiconeditor.com', 'https://www.xiconeditor.com/', 'Covert to ico (chuyen image qua icon)', 'Đã xem', '2022-02-07 10:33:17', '2022-02-07 10:33:17'),
(109, 'Programing', 'Cachhoc.net', 'https://cachhoc.net/2014/12/30/lap-trinh-c-bai-16-xay-dung-hang-doi-queue/', 'Lập trình C: Bài 16 – Xây dựng hàng đợi (Queue)', 'Đã xem', '2022-02-07 10:34:59', '2022-02-07 10:34:59'),
(110, 'Tools - Dev', 'Fonts.google.com', 'https://fonts.google.com/', 'Lay font chu tu google', 'Đã xem', '2022-02-07 10:35:44', '2022-02-07 10:35:44'),
(111, 'Tools - Dev', 'Fonts.google.com', 'https://fonts.google.com/?preview.text_type=custom', 'Lay font chu tu google', 'Đã xem', '2022-02-07 10:36:05', '2022-02-07 10:36:05'),
(112, 'Programing', 'Dotnetfunda.com', 'https://www.dotnetfunda.com/articles/show/2330/let-us-learn-to-add-license-agreement-end-user-license-agreementeula-s', 'Let us learn to add \"License Agreement\" / \"End User License Agreement(EULA)\" screen to the deployment process (C#)', 'Đã xem', '2022-02-07 10:37:16', '2022-02-07 10:37:35'),
(113, 'Wallpapers', 'Wallpapershome.com', 'https://wallpapershome.com/', 'Hinh nen 4k & 8k', 'Đã xem', '2022-02-07 10:38:24', '2022-02-07 10:38:58'),
(114, 'Wallpapers', 'Wallpaperflare.com', 'https://www.wallpaperflare.com/', 'Hinh nen 4k & 8k', 'Đã xem', '2022-02-07 10:40:00', '2022-02-07 10:40:00'),
(115, 'Programing', 'Howkteam.vn', 'https://www.howkteam.vn/course/lap-trinh-winform-co-ban/panel-va-flowlayoutpanel-trong-lap-trinh-c-winform-1283', 'Panel và FlowLayoutPanel trong lập trình C# Winform', 'Đã xem', '2022-02-07 10:41:28', '2022-02-07 10:41:28'),
(116, 'Tips & Trick - Dev', 'Quantrimang.com', 'https://quantrimang.com/cac-kieu-tan-cong-mang-22', 'Tổng hợp các kiểu tấn công mạng phổ biến hiện nay', 'Đã xem', '2022-02-07 10:42:24', '2022-02-07 10:42:24'),
(117, 'Wallpapers', 'Wall.alphacoders.com', 'https://wall.alphacoders.com/big.php?i=1065466', 'Ellie, The Last Of Us 4k Ultra HD Wallpaper', 'Đã xem', '2022-02-07 10:43:04', '2022-02-07 10:43:04'),
(118, 'Tools - Dev', 'Fontawesome.com', 'https://fontawesome.com/v4.7/icons/', 'Icon for html (lap trih web)', 'Đã xem', '2022-02-07 10:44:19', '2022-02-07 10:44:19'),
(119, 'Tools - Dev', 'Bootstrapcdn.com', 'https://www.bootstrapcdn.com/fontawesome/', 'BootstrapCDN for Html', 'Đã xem', '2022-02-07 10:44:57', '2022-02-07 10:44:57'),
(120, 'Tools - Dev', 'Fontawesome.com', 'https://fontawesome.com/v4.7/icon/star', 'icon Start for Html', 'Đã xem', '2022-02-07 10:45:34', '2022-02-07 10:45:34'),
(121, 'Tips & Trick - Dev', 'Quantrimang.com', 'https://quantrimang.com/torrent-la-gi-174102', 'Torrent là gì? Sử dụng Torrent như thế nào?', 'Đã xem', '2022-02-07 10:46:15', '2022-02-07 10:46:15'),
(122, 'Wallpapers', 'Freepik.com', 'https://www.freepik.com/', 'background', 'Đã xem', '2022-02-07 10:47:28', '2022-02-07 10:47:28'),
(123, 'Tips & Trick - Dev', 'Notebookcheck.net', 'https://www.notebookcheck.net/Mobile-Graphics-Cards-Benchmark-List.844.0.html', 'Benchmark, top cpu, gpu pc laptop', 'Đã xem', '2022-02-07 10:48:43', '2022-02-07 10:48:43'),
(124, 'Games', 'Pay.zing.vn', 'https://pay.zing.vn/game/valorant', 'Nap the Valorant', 'Đã xem', '2022-02-07 10:49:55', '2022-02-07 10:49:55'),
(125, 'Wallpapers', 'Novocom.club', 'https://novocom.club/view/9132e4-valorant-thumbnail-background-hd/', 'Valorant Backround', 'Đã xem', '2022-02-07 10:50:48', '2022-02-07 10:50:48'),
(126, 'Games', 'Drive.google.com', 'https://drive.google.com/u/0/uc?id=1Mrj_QG_-N-z6-byHT15FTSPDm_aI_xPy&export=download', 'Aim Lap', 'Đã xem', '2022-02-07 10:51:37', '2022-02-07 10:51:37'),
(127, 'Programing', 'Drive.google.com', 'https://drive.google.com/drive/u/2/folders/1FF7bZ61eYTNg4NCSjoHaDV26b6Py0vav', 'Tai lieu hoc tong hop cach nganh trong CNTT', 'Chưa xem', '2022-02-07 10:52:30', '2022-02-07 10:52:46'),
(128, 'Tips & Trick - Dev', 'Viblo.asia', 'https://viblo.asia/p/huong-dan-tao-database-mien-phi-su-dung-sql-tren-google-cloud-bWrZnPJr5xw', 'Hướng dẫn tạo database miễn phí sử dụng SQL trên Google Cloud', 'Chưa xem', '2022-02-07 10:53:31', '2022-02-07 10:53:31'),
(129, 'Music', 'Youtube', 'https://www.youtube.com/watch?v=iSFl60Ixn44', 'Lost Control - Alan Walker (1 Hour Version)', 'Đã xem', '2022-02-07 10:54:14', '2022-02-07 10:54:40'),
(130, 'Tools - Dev', 'Freelogodesign.org', 'https://www.freelogodesign.org/', 'Create your own logo for free in just a few minutes', 'Chưa xem', '2022-02-07 10:56:09', '2022-02-07 10:56:09'),
(131, 'Wallpapers', 'Behance.net', 'https://www.behance.net/', 'Wallpaper', 'Chưa xem', '2022-02-07 10:57:27', '2022-02-07 10:57:27'),
(132, 'Tools - Dev', 'Ninite.com', 'https://ninite.com/', 'Phan men tong hop cho PC Laptop', 'Chưa xem', '2022-02-07 10:58:22', '2022-02-07 10:58:22'),
(133, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/bat-dau-hoc-lap-trinh-web-tu-dau/', 'Lập trình web – Bạn muốn học nhưng không biết từ đâu?', 'Chưa xem', '2022-02-07 10:58:59', '2022-02-07 10:58:59'),
(134, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/25-thuat-ngu-ban-nhat-dinh-phai-biet-khi-lap-trinh-web/', '25 thuật ngữ bạn nhất định phải biết khi lập trình web', 'Chưa xem', '2022-02-07 10:59:29', '2022-02-07 10:59:29'),
(135, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/8-tools-can-co-de-tang-workflow-khi-lap-trinh-web/', '8 tools cần có để tăng workflow khi lập trình web', 'Chưa xem', '2022-02-07 10:59:43', '2022-02-07 10:59:43'),
(136, 'Tips & Trick - Dev', 'Thachpham.com', 'https://thachpham.com/thu-thuat/cai-dat-localhost-xampp.html?fbclid=IwAR2YQXRsORLJ8ue-zXU19EgoybD4Anp9q9PfnkHzkS2vX19Y7zTJB5R5W4w', 'CÁCH CÀI ĐẶT LOCALHOST TRÊN MÁY TÍNH VỚI XAMPP', 'Chưa xem', '2022-02-07 11:00:18', '2022-02-07 11:00:18'),
(137, 'Tools - Dev', 'Tools1s.com', 'https://tools1s.com/', 'Trang web chia sẻ tools, Facebook tools, Other tools. Miễn phí và có phí!', 'Chưa xem', '2022-02-07 11:02:49', '2022-02-07 11:02:49'),
(138, 'Wallpapers', 'Wallhaven.cc', 'https://wallhaven.cc/w/j5z3zw', 'wallpapers jet', 'Chưa xem', '2022-02-07 11:04:08', '2022-02-07 11:04:08'),
(139, 'Tips & Trick - Dev', 'W3.org', 'https://www.w3.org/standards/', 'STANDARDS', 'Chưa xem', '2022-02-07 11:06:18', '2022-02-07 11:06:18'),
(140, 'Tips & Trick - Dev', 'Topdev.vn', 'https://topdev.vn/blog/sql-injection/', 'SQL Injection là gì? Cách giảm thiểu và phòng ngừa SQL Injection', 'Chưa xem', '2022-02-07 11:06:57', '2022-02-07 11:06:57'),
(141, 'Tools - Dev', 'W3.org', 'https://validator.w3.org/nu/', 'Check code website online', 'Đã xem', '2022-02-07 11:08:19', '2022-03-04 12:23:32'),
(142, 'Tools - Dev', 'Ryte.com', 'https://en.ryte.com/website-checker/', 'checker website online', 'Chưa xem', '2022-02-07 11:09:08', '2022-02-07 11:09:08'),
(143, 'Tools - Dev', 'Gtmetrix.com', 'https://gtmetrix.com/', 'How fast does your website load?\r\nFind out with GTmetrix', 'Chưa xem', '2022-02-07 11:09:53', '2022-02-07 11:09:53'),
(144, 'Tools - Dev', 'Pagespeed.web.dev', 'https://pagespeed.web.dev/?utm_source=psi&utm_medium=redirect', 'Giúp trang web của bạn hoạt động nhanh hơn trên mọi thiết bị', 'Chưa xem', '2022-02-07 11:10:35', '2022-02-07 11:10:35'),
(145, 'Programing', 'Itsourcecode.com', 'https://itsourcecode.com/free-projects/csharp/school-library-management-system-in-c-with-source-code/', 'School Library Management System in C# with Source Code', 'Đã xem', '2022-02-07 11:11:50', '2022-02-07 11:12:12'),
(146, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/List_of_tz_database_time_zones', 'List of tz database time zones (for PHP)', 'Đã xem', '2022-02-07 11:13:14', '2022-02-07 11:13:14'),
(147, 'Tips & Trick - Dev', 'Quantrimang.com', 'https://quantrimang.com/cach-phat-dinh-dang-video-khong-ho-tro-tren-windows-10-167763', 'Cách phát định dạng video không hỗ trợ trên Windows 10', 'Đã xem', '2022-02-07 11:13:44', '2022-02-07 11:13:44'),
(148, 'Programing', 'Youtube', 'https://www.youtube.com/watch?v=97ta0YYT6Zs', 'C# Full Project Tutorial(Library Management System)With source code', 'Đã xem', '2022-02-07 11:15:04', '2022-02-07 11:15:04'),
(149, 'Tips & Trick - Dev', 'Developers.google.com', 'https://developers.google.com/maps/documentation/maps-static/get-api-key', 'Use API Keys Google', 'Đã xem', '2022-02-07 11:16:05', '2022-02-07 11:16:05'),
(150, 'Programing', 'Congnghe5s.com', 'https://congnghe5s.com/thiet-lap-time-zone-trong-php.html', 'Thiết Lập Time Zone trong PHP', 'Đã xem', '2022-02-07 11:16:50', '2022-02-07 11:16:50'),
(151, 'Tips & Trick - Dev', 'Kimlongcenter.com', 'https://kimlongcenter.com/tin-tuc/cach-tat-cac-service-khong-can-thiet-trong-win-10-de-tang-toc-windows-497.html', 'Cách Tắt Các Service Không Cần Thiết Trong Win 10 Để Tăng Tốc Windows', 'Đã xem', '2022-02-07 11:17:28', '2022-02-07 11:17:28'),
(152, 'Programing', 'Geeksforgeeks.org', 'https://www.geeksforgeeks.org/program-calculate-area-perimeter-equilateral-triangle/', 'Program to calculate area and perimeter of equilateral triangle - Chương trình tính diện tích và chu vi tam giác đều C#', 'Đã xem', '2022-02-07 11:18:25', '2022-02-07 11:19:06'),
(153, 'Programing', 'Xuanthulab.net', 'https://xuanthulab.net/stream-trong-c-lam-viec-voi-filestream-lap-trinh-c-sharp.html', 'Stream trong C# làm việc với FileStream lập trình C Sharp', 'Đã xem', '2022-02-07 11:18:56', '2022-02-07 11:19:14'),
(154, 'Programing', 'Stackoverflow.com', 'https://stackoverflow.com/questions/3526752/how-to-make-a-form-close-when-pressing-the-escape-key', 'How to make a form close when pressing the escape key?', 'Đã xem', '2022-02-07 11:20:06', '2022-02-07 11:20:06'),
(155, 'Fake Cards', 'Creditcardvalidator.org', 'https://www.creditcardvalidator.org/generator', 'Fake Credit Card Number Generator', 'Đã xem', '2022-02-07 11:22:49', '2022-02-07 11:23:19'),
(156, 'Fake Cards', 'Suntrustblog.com', 'https://suntrustblog.com/fake-credit-card-generator-steps-to-validate-credit-card-numbers/', 'Fake Credit Card Generator & Steps to Validate Credit Card Numbers', 'Chưa xem', '2022-02-07 11:24:25', '2022-02-07 11:24:25'),
(157, 'Wallpapers', 'Getwallpapers.com', 'https://getwallpapers.com/collection/4k-minimalist-wallpaper', 'Wallpapers 4K', 'Đã xem', '2022-02-08 10:12:32', '2022-02-08 10:12:32'),
(158, 'Tools - Dev', 'Github.com', 'https://github.com/jayremnt/facebook-scripts-dom-manipulation?fbclid=IwAR19oI3u2uUuCKmIfjUMAiqLYXxQSg411uIwx-QVzWDZiv_oxaxd7tj2rPM', 'Tool facebook', 'Đang xem dở', '2022-02-08 10:14:26', '2022-02-08 10:14:26'),
(159, 'Tips & Trick - Dev', 'Visme.co', 'https://visme.co/blog/website-color-schemes/', '50 Gorgeous Color Schemes From Award-Winning Websites', 'Chưa xem', '2022-02-08 10:15:25', '2022-02-08 10:15:25'),
(160, 'English', 'Dolenglish.vn', 'https://www.dolenglish.vn/ielts-library/talk-about-your-family-ielts-speaking/', 'Hướng dẫn làm chủ để Talk About Your Family – IELTS Speaking Part 1,2,3', 'Đã xem', '2022-02-08 10:17:35', '2022-02-08 10:17:35'),
(161, 'Movie', 'Engvideo.pro', 'https://engvideo.pro/', 'Xem phim phu de tieng anh', 'Đã xem', '2022-02-08 10:18:19', '2022-02-08 10:18:19'),
(162, 'English', 'Unica.vn', 'https://unica.vn/blog/nhung-doan-van-gioi-thieu-ve-ban-than-bang-tieng-anh', 'Tổng hợp những đoạn văn giới thiệu về bạn thân bằng tiếng Anh hay nhất', 'Đã xem', '2022-02-08 10:19:02', '2022-02-08 10:19:02'),
(163, 'English', 'Voca.vn', 'https://www.voca.vn/blog/menh-de-chi-muc-dich-to---in-order-to---so-as-to---so-that-trong-tieng-anh-542', 'Mệnh đề chỉ mục đích To - In order to - So as to - So that trong tiếng Anh', 'Đã xem', '2022-02-08 10:19:40', '2022-02-08 10:19:40'),
(164, 'English', 'Oxford.edu.vn', 'https://oxford.edu.vn/goc-tieng-anh/hoc-tieng-anh-cung-oxford/phan-biet-tieng-anh-anh-va-anh-my-649.html', 'PHÂN BIỆT TIẾNG ANH-ANH VÀ ANH-MỸ', 'Đã xem', '2022-02-08 10:20:38', '2022-02-08 10:20:38'),
(165, 'English', 'Italki.com', 'https://www.italki.com/post/exercise-203805?hl=vi', 'Talk about my favourite food!', 'Đã xem', '2022-02-08 10:21:27', '2022-02-08 10:21:27'),
(166, 'English', 'Vieclam123.vn', 'https://vieclam123.vn/don-vi-trong-tieng-anh-b652.html', 'Đơn vị trong Tiếng Anh - Tổng hợp từ vựng về đơn vị trong tiếng Anh', 'Đã xem', '2022-02-08 10:21:56', '2022-02-08 10:21:56'),
(167, 'English', 'Dictionary.cambridge.org', 'https://dictionary.cambridge.org/vi/translate/', 'Translater, Tu dien, Ngu phap...', 'Đang xem', '2022-02-08 10:23:00', '2022-02-08 10:23:00'),
(168, 'English', 'Englishclub.com', 'https://www.englishclub.com/', 'Learn English', 'Đang xem', '2022-02-08 10:23:39', '2022-02-08 10:23:39'),
(169, 'English', 'Idoceonline.com', 'https://www.ldoceonline.com/', 'LONGMAN tra cuu, phat am tu trong tieng anh (phat am chuan)', 'Đang xem', '2022-02-08 10:24:37', '2022-02-08 10:24:37'),
(170, 'English', 'Theenglishspace.com', 'https://www.theenglishspace.com/useful-english/shopping/supermarket/conversation.html', 'Conversations at a Supermarket', 'Đang xem', '2022-02-08 10:25:25', '2022-02-08 10:25:25'),
(171, 'English', 'Iievietnam.org', 'https://iievietnam.org/was-were/', 'Khi nào dùng Was Were trong Tiếng Anh', 'Đã xem', '2022-02-08 10:25:58', '2022-02-08 10:25:58'),
(172, 'English', 'Stepup.edu.vn', 'https://stepup.edu.vn/blog/bang-dong-tu-bat-quy-tac-trong-tieng-anh-chuan-nhat/', 'Bảng động từ bất quy tắc trong tiếng Anh chuẩn nhất', 'Đã xem', '2022-02-08 10:26:31', '2022-02-08 10:26:31'),
(173, 'English', 'Giasutainha24h.com', 'https://giasutainha24h.com/cach-dung-was-va-were-trong-tieng-anh-sao-cho-chuan-nhat-post118.html', 'Cách dùng Was và Were trong tiếng anh sao cho chuẩn nhất', 'Đã xem', '2022-02-08 10:27:14', '2022-02-08 10:27:14'),
(174, 'English', 'Drive.google.com', 'https://drive.google.com/file/d/1ICUHWy9TTxcPeWFqELlG1KpJ_tb2fmq6/view', 'KET Speaking pt2', 'Đã xem', '2022-02-08 10:27:43', '2022-02-08 10:27:43'),
(175, 'English', 'Eslprintables.com', 'https://www.eslprintables.com/teaching_resources/tests_and_exams/ket_exam/Ket_Speaking_cards_600886/', 'Ket Speaking cards worksheet', 'Đã xem', '2022-02-08 10:28:10', '2022-02-08 10:28:10'),
(176, 'English', 'Facebook', 'https://www.facebook.com/Tienganhmr.katfish/posts/1204438322989785/', 'CÁCH SỬ DỤNG TỪ \"GET\": \"GET - GOT - GOTTEN\"', 'Đã xem', '2022-02-08 10:29:00', '2022-02-08 10:29:00'),
(177, 'English', 'Stepup.edu.vn', 'https://stepup.edu.vn/blog/cach-dung-like/', 'Phân biệt cách dùng Like và As trong tiếng Anh đầy đủ nhất', 'Đã xem', '2022-02-08 10:30:54', '2022-02-08 10:30:54'),
(178, 'English', 'Studytienganh.vn', 'https://www.studytienganh.vn/news/308/cau-truc-va-cach-dung-have-got-trong-tieng-anh', 'CẤU TRÚC VÀ CÁCH DÙNG HAVE GOT TRONG TIẾNG ANH', 'Đã xem', '2022-02-08 10:31:33', '2022-02-08 10:31:33'),
(179, 'English', 'Glosbe.com', 'https://vi.glosbe.com/', 'Tu dien tieng anh', 'Chưa xem', '2022-02-08 10:32:11', '2022-02-08 10:32:11'),
(180, 'English', 'Quizlet.com', 'https://quizlet.com/203842175/ket-speaking-part-2-71-cau-tong-hop-lam-cai-nay-sau-cung-nhe-flash-cards/', 'KET Speaking Part 2 - 71 câu tổng hợp', 'Chưa xem', '2022-02-08 10:33:08', '2022-02-08 10:33:08'),
(181, 'English', 'Examenglish.com', 'https://www.examenglish.com/KET/KET_reading_part5_test2.htm', 'KET Reading Practice test 2, part 5. Free Practice for the Cambridge KET exam', 'Chưa xem', '2022-02-08 10:33:45', '2022-02-08 10:33:45'),
(182, 'English', 'Benative.vn', 'https://benative.vn/hoc-online/cach-dung-tro-dong-tu-tieng-anh/', 'Cách dùng trợ động từ tiếng Anh: Be, Do, Have', 'Chưa xem', '2022-02-08 10:34:27', '2022-02-08 10:34:27'),
(183, 'English', 'Ieltsvietop.vn', 'https://www.ieltsvietop.vn/tu-hoc-ielts/speaking/chu-de-ielts-speaking-part-2/', 'Top 52 Chủ đề IELTS Speaking Part 2 thường gặp nhất trong bài thi', 'Chưa xem', '2022-02-08 10:35:15', '2022-02-08 10:35:15'),
(184, 'English', 'Sachhoc.com', 'https://sachhoc.com/key-english-test-1-2-3-4-5-6-7-ebook-audio', 'Key English Test 1,2,3,4,5,6,7 (ebook+audio)', 'Chưa xem', '2022-02-08 10:37:13', '2022-02-08 10:37:13'),
(185, 'English', 'Youtube', 'https://www.youtube.com/watch?app=desktop&v=geU9IPCqF2U', 'Langmaster - Tất tần tật các DẠNG RÚT GỌN trong tiếng Anh (P1) [Học tiếng Anh cho người mất gốc]', 'Đã xem', '2022-02-08 10:38:08', '2022-02-08 10:38:08'),
(186, 'English', 'Langmaster.edu.vn', 'https://langmaster.edu.vn/hoc-het-100-tu-vung-ve-cac-vat-dung-trong-nha-a70i1491.html', 'HỌC HẾT 100 TỪ VỰNG VỀ CÁC VẬT DỤNG TRONG NHÀ', 'Chưa xem', '2022-02-08 10:38:36', '2022-02-08 10:38:47'),
(187, 'English', 'Minhng.info', 'https://minhng.info/tieng-anh/tieng-anh-thi-qua-khu-don.html', 'Cách dùng thì quá khứ đơn, công thức và 100 câu ví dụ', 'Chưa xem', '2022-02-08 10:39:38', '2022-02-08 10:39:38'),
(188, 'English', 'Anhngumshoa.com', 'https://www.anhngumshoa.com/tin-tuc/thi-qua-khu-don-past-simple-toan-bo-kien-thuc-ve-thi-qua-khu-don-can-biet-37382.html', 'THÌ QUÁ KHỨ ĐƠN (PAST SIMPLE) - TOÀN BỘ KIẾN THỨC VỀ THÌ QUÁ KHỨ ĐƠN CẦN BIẾT', 'Chưa xem', '2022-02-08 10:40:04', '2022-02-08 10:40:04'),
(189, 'English', 'llv.edu.vn', 'https://llv.edu.vn/vi/huong-dan-chi-tiet-viet-ve-ca-si-yeu-thich-bang-tieng-anh/', 'Hướng dẫn chi tiết viết về ca sĩ yêu thích bằng tiếng Anh', 'Chưa xem', '2022-02-08 10:40:37', '2022-02-08 10:40:37'),
(190, 'English', 'Myenglishpages.com', 'https://www.myenglishpages.com/', 'Hoc English', 'Chưa xem', '2022-02-08 10:42:23', '2022-02-08 10:42:23'),
(191, 'Wallpapers', 'Panzoid.com', 'https://panzoid.com/creations/444316', 'Wallpapers Edit Online', 'Chưa xem', '2022-02-08 10:43:30', '2022-02-08 10:43:30'),
(192, 'Tips & Trick - Dev', 'Thehackernews.com', 'https://thehackernews.com/', 'Tin tuc cong nghe', 'Chưa xem', '2022-02-08 10:44:29', '2022-02-08 10:44:29'),
(193, 'Tips & Trick - Dev', 'Hongkiat.com', 'https://www.hongkiat.com/blog/', 'Tin tuc cong nghe tips & tricks', 'Chưa xem', '2022-02-08 10:45:17', '2022-02-08 10:45:17'),
(194, 'Games', 'Youtube', 'https://www.youtube.com/watch?v=AO8YfHfldlI', '🔧 Valorant High Ping Fix | Remove Packet Loss | Valorant Lag Fix', 'Chưa xem', '2022-02-08 10:46:14', '2022-02-08 10:46:14'),
(195, 'Wallpapers', 'Desktophut.com', 'https://www.desktophut.com/', 'Live wallpapers 4k', 'Chưa xem', '2022-02-08 10:46:59', '2022-02-08 10:46:59'),
(196, 'Wallpapers', 'Wallpaperswide.com', 'http://wallpaperswide.com/', 'WallpapersWide.com - Free 4K & 8K UltraHD Desktop Backgound Wallpapers for UHD TV, Ultra Widescreen Desktop, Tablet, Smartphone & Multi Display', 'Chưa xem', '2022-02-08 10:48:15', '2022-02-08 10:48:15'),
(197, 'Wallpapers', 'Pexels.com', 'https://www.pexels.com/vi-vn/', 'Kho ảnh miễn phí Pexels', 'Chưa xem', '2022-02-08 10:49:04', '2022-02-08 10:49:04'),
(198, 'Wallpapers', 'Wallpapershome.com', 'https://wallpapershome.com/games/rpg/redfall-screenshot-e3-2021-4k-23456.html', 'Wallpaper Redfall, screenshot, E3 2021, 4K, Games', 'Đã xem', '2022-02-08 10:49:53', '2022-02-08 10:49:53'),
(199, 'Programing', 'Codecademy.com', 'https://www.codecademy.com/', 'Learn to Code - for Free', 'Chưa xem', '2022-02-08 10:50:52', '2022-02-08 10:50:52'),
(200, 'Programing', 'Sitepoint.com', 'https://www.sitepoint.com/', 'SitePoint – Learn HTML, CSS, JavaScript, PHP, Ruby & Responsive Design', 'Chưa xem', '2022-02-08 10:51:45', '2022-02-08 10:51:45'),
(201, 'Programing', 'Tutsplus.com', 'https://tutsplus.com/', 'Free How-To Tutorials & Online Courses by Envato Tuts+ (Edit PS, AE,...)', 'Chưa xem', '2022-02-08 10:52:29', '2022-02-08 10:53:03'),
(202, 'Programing', 'Freecodecamp.org', 'https://www.freecodecamp.org/', 'Learn to code — for free. Build projects.', 'Chưa xem', '2022-02-08 10:53:40', '2022-02-08 10:53:53'),
(203, 'Programing', 'Codecademy.com', 'https://www.codecademy.com/catalog', 'Hoc code', 'Chưa xem', '2022-02-08 10:54:36', '2022-02-08 10:54:36'),
(204, 'Programing', 'Khoapham.vn', 'https://online.khoapham.vn/?fbclid=IwAR11NLzhxT_eaL5NilOBtQa82bgyNe7-Jc0PBGGyOimd3HPhiFP4iju9158', 'Hoc code', 'Chưa xem', '2022-02-08 10:55:11', '2022-02-08 10:55:11'),
(205, 'Wallpapers', 'Unsplash.com', 'https://unsplash.com/wallpapers/desktop', 'HD Desktop Wallpapers', 'Chưa xem', '2022-02-08 10:56:00', '2022-02-08 10:56:00'),
(206, 'English', 'Studytienganh.vn', 'https://www.studytienganh.vn/news/113/suu-tam-nhung-cau-chui-the-bang-tieng-anh', 'SƯU TẦM NHỮNG CÂU CHỬI THỀ BẰNG TIẾNG ANH', 'Đang xem dở', '2022-02-08 10:57:33', '2022-02-08 10:57:33'),
(207, 'Wallpapers', 'Wallpaperaccess.com', 'https://wallpaperaccess.com/oni', 'Oni Wallpapers', 'Đã xem', '2022-02-08 10:58:56', '2022-02-08 10:58:56'),
(208, 'Tips & Trick - Dev', 'Designbombs.com', 'https://www.designbombs.com/top-10-free-website-speed-test-tools/', 'Top 10 Free Website Speed Test Tools for 2021', 'Đã xem', '2022-02-08 10:59:47', '2022-02-08 10:59:47'),
(209, 'Tips & Trick - Dev', 'Guru99.com', 'https://www.guru99.com/top-20-bug-tracking-tools.html', '20 Best Bug Tracking Tools (Defect Tracking Tools) in 2022', 'Đã xem', '2022-02-08 11:00:33', '2022-02-08 11:00:33'),
(210, 'Tips & Trick - Dev', 'Whitehat.vn', 'https://whitehat.vn/', 'CỘNG ĐỒNG AN NINH MẠNG VIỆT NAM', 'Đã xem', '2022-02-08 11:04:33', '2022-02-08 11:04:33'),
(211, 'Wiki', 'Wikipedia.org', 'https://en.wikipedia.org/wiki/Vala_(programming_language)', 'Vala (programming language)', 'Đã xem', '2022-02-08 11:05:00', '2022-02-08 11:05:00'),
(212, 'Tips & Trick - Dev', 'Socradar.io', 'https://socradar.io/top-5-underground-hacker-forums-that-are-accessible-via-your-web-browsers-such-as-google-chrome-firefox-and-internet-explorer/#1-xssis', 'Top 5 Underground Hacker Forums That are Accessible via Your Web Browsers such as Google Chrome, Firefox, and Internet Explorer', 'Đã xem', '2022-02-08 11:06:30', '2022-02-08 11:06:30'),
(213, 'Tips & Trick - Dev', 'Raidforums.com', 'https://raidforums.com/index.php', 'for Hacker shared tool, account,...', 'Đã xem', '2022-02-08 11:07:23', '2022-02-08 11:07:23'),
(214, 'Tools - Dev', 'Canva.com', 'https://www.canva.com/design/DAEIOtbSBSo/MJA_ro98Drzz_y9UbJRoEA/edit?category=tACZCnmCPGY&utm_source=onboarding', 'Chinh anh, logo, powerpoint...', 'Đã xem', '2022-02-08 11:09:26', '2022-02-08 11:09:26'),
(215, 'Programing', 'Youtube', 'https://www.youtube.com/watch?v=JIjZQo03YdA', 'How to Make a Game Launcher and an Auto Updater With WPF | C# Game Launcher Tutorial', 'Đã xem', '2022-02-08 11:09:58', '2022-02-08 11:09:58'),
(216, 'Programing', 'Fshare.vn', 'https://www.fshare.vn/folder/9L1452NSQ3VV?token=1644293470#!#64u25313y2v2x26474z2u2c4s23423x2', 'Fshare - KhoaHoc - Tai lieu Hoc code, edit AE, PS, TOEIC, ...', 'Chưa xem', '2022-02-08 11:11:52', '2022-02-08 11:11:52'),
(217, 'Programing', 'W3schools.com', 'https://www.w3schools.com/sql/func_sqlserver_convert.asp', 'SQL Server CONVERT() Function', 'Đã xem', '2022-02-08 11:12:33', '2022-02-08 11:12:33'),
(218, 'Tips & Trick - Dev', 'Quantrimang.com', 'https://quantrimang.com/theme-windows-10-dep-166896', '16 theme Windows 10 tuyệt đẹp bạn không nên bỏ qua', 'Đã xem', '2022-02-08 11:13:11', '2022-02-08 11:13:11'),
(219, 'Android - Mod, Cracked', 'Platinmods.com', 'https://platinmods.com/threads/among-us-ver-2021-12-15-mod-menu-apk-see-player-roles-fake-role-esp-kill-players-close-all-doors-no-clip.128826/', 'Among Us Ver. 2021.12.15 MOD MENU APK | See Player Roles | Fake Role | ESP | Kill Players | Close All Doors | No Clip', 'Đã xem', '2022-02-08 11:15:09', '2022-02-08 11:15:09'),
(220, 'Android - Mod, Cracked', 'Ymusic.io', 'https://ymusic.io/', 'Pham men nghe nhac', 'Đã xem', '2022-02-08 11:15:54', '2022-02-08 11:16:42'),
(221, 'Android - Mod, Cracked', 'Apkdone.com', 'https://apkdone.com/picsart/download', 'Pahm men edit anh', 'Đã xem', '2022-02-08 11:16:27', '2022-02-08 11:16:27'),
(222, 'Android - Mod, Cracked', 'Apkpure.com', 'https://m.apkpure.com/vn/youtube-vanced/com.vanced.android.youtube/download?from=details', 'Chan qc youtube', 'Đã xem', '2022-02-08 11:17:21', '2022-03-04 12:23:22'),
(223, 'Android - Mod, Cracked', 'Mediafire.com', 'https://www.mediafire.com/file/q2x2fhesl064rvj/ES_File_Explorer_Mod_v4.2.2.4_by_Ogan_Android.apk/file', 'ES File Explorer Mod v4.2.2.4 by Ogan Android', 'Đã xem', '2022-02-08 11:18:35', '2022-02-08 11:18:35'),
(224, 'Android - Mod, Cracked', 'Apkcombo.com', 'https://apkcombo.com/vi/vanced-microg/com.mgoogle.android.gms/download/apk', 'DAng nhap youtube vanced', 'Đã xem', '2022-02-08 11:19:14', '2022-02-08 11:19:14'),
(225, 'Android - Mod, Cracked', 'Apkplay.io', 'https://apkplay.io/vi/kinemaster-pro/?download=1', 'Edit video k logo', 'Đã xem', '2022-02-08 11:19:44', '2022-02-08 11:19:44'),
(226, 'Android - Mod, Cracked', 'Gocmod.com', 'https://www.gocmod.com/?m=1', 'GocMod Team - Kho ứng dụng Mod miễn phí', 'Đã xem', '2022-02-08 11:20:49', '2022-02-08 11:20:49'),
(227, 'Android - Mod, Cracked', 'Uptodown.com', 'https://en.uptodown.com/android', 'App Downloads for Android - Download, Discover, Share on Uptodown', 'Chưa xem', '2022-02-08 11:21:33', '2022-02-08 11:21:33'),
(228, 'Programing', 'Youtube', 'https://www.youtube.com/watch?v=s91AH6vbkXU', 'Lets Make a YouTube BOT!! Using Python selenium', 'Chưa xem', '2022-02-08 11:22:29', '2022-02-08 11:22:29'),
(229, 'Programing', 'Fullstack.edu.vn', 'https://fullstack.edu.vn/', 'Hoc lap trinh F8', 'Chưa xem', '2022-02-08 11:23:10', '2022-02-08 11:23:10'),
(230, 'Sale & Products', 'Sosanhgia.com', 'https://www.sosanhgia.com/', 'So sanh gia', 'Đã xem', '2022-02-08 11:28:09', '2022-02-08 11:29:54'),
(231, 'Sale & Products', 'Giasoc24h.com', 'https://giasoc24h.com/ma-giam-gia-shopee', 'Mã giảm giá shopee cập nhật mới nhất', 'Đã xem', '2022-02-08 11:28:51', '2022-02-08 11:30:05'),
(232, 'Sale & Products', 'Lenovo.com', 'https://www.lenovo.com/us/en/p/laptops/legion-laptops/legion-5-series/legion-5i-15/81y6000gus?orgRef=https%253A%252F%252Fwww.google.com', 'Legion 5i (15\") with GTX 1660 Ti', 'Đã xem', '2022-02-08 11:31:04', '2022-02-08 11:31:04'),
(233, 'Wallpapers', 'Deviantart.com', 'https://www.deviantart.com/', 'DeviantArt - The Largest Online Art Gallery and Community - Wallpaper for windows', 'Chưa xem', '2022-02-08 11:32:07', '2022-02-08 11:32:07'),
(234, 'Wallpapers', 'Icon-icons.com', 'https://icon-icons.com/en/', 'Best free icons for personal and commercial use SVG - PNG', 'Đã xem', '2022-02-08 11:33:01', '2022-02-08 11:33:20'),
(235, 'English', 'Oxfordlearnersdictionaries.com', 'https://www.oxfordlearnersdictionaries.com/', 'Tu dien tieng anh Oxford', 'Đang xem', '2022-02-08 11:34:20', '2022-02-08 11:34:20'),
(236, 'Sale & Products', 'Shopgiayreplica.com', 'https://shopgiayreplica.com/giay-nike-air-force-just-do-it-trang/', 'Nike Air Force Just do It trắng Rep 1:1', 'Đã xem', '2022-02-08 11:35:30', '2022-02-08 11:35:41'),
(237, 'Sale & Products', 'Shopgiayreplica.com', 'https://shopgiayreplica.com/nike-air-jordan-1-low-white-camo/', 'Giày Nike Air Jordan 1 Low White Camo Rep 1:1', 'Đã xem', '2022-02-08 11:36:00', '2022-02-08 11:36:00'),
(238, 'Sale & Products', 'Shopgiayreplica.com', 'https://shopgiayreplica.com/giay-nike-air-jordan-1-retro-low-dior/', 'Giày Nike Air Jordan 1 Retro Low Dior Rep 1:1', 'Đã xem', '2022-02-08 11:36:19', '2022-02-08 11:36:19'),
(239, 'Tools - Dev', 'Drive.google.com', 'https://drive.google.com/file/d/1a1JxhCkisDUejbsm4jej5c4s8Ld-lTtp/view?fbclid=IwAR04VNKdpYF3GgZ0JxO9Jrfsvk6O4aWhKk_HRi82wc6qmCgmtzcWJdtTpmw', 'Mouse and Keyboard Recorder.zip', 'Đã xem', '2022-02-08 11:37:45', '2022-02-08 11:37:45'),
(240, 'Tips & Trick - Dev', 'Owasp.org', 'https://owasp.org/www-community/Vulnerability_Scanning_Tools', 'Công cụ quét lỗ hổng bảo mật - Vulnerability Scanning Tools', 'Đã xem', '2022-02-08 11:39:39', '2022-02-08 11:39:39'),
(241, 'Tips & Trick - Dev', 'Developers.google.com', 'https://developers.google.com/analytics/devguides/collection/analyticsjs', 'Add analytics.js to Your Site', 'Đã xem', '2022-02-08 11:40:21', '2022-02-08 11:40:21'),
(242, 'Tips & Trick - Dev', 'Softwaretestinghelp.com', 'https://www.softwaretestinghelp.com/cybersecurity-software-tools/', 'Top 11 Most Powerful CyberSecurity Software Tools In 2022 - Top 11 Công Cụ Phần Mềm Bảo Mật Mạng Mạnh Mẽ Nhất Năm 2022', 'Chưa xem', '2022-02-08 11:41:30', '2022-02-08 11:41:30'),
(243, 'Tools - Dev', 'Brandcrowd.com', 'https://www.brandcrowd.com/maker/logos/page1?Text=Trang%20Quy%C3%AAn&TextChanged=true&SearchText=shop&LogoStyle=0&FontStyles&Colors', 'Created Logos', 'Đã xem', '2022-02-08 11:42:29', '2022-02-08 11:42:29'),
(244, 'Tools - Dev', 'Logogenie.net', 'https://www.logogenie.net/', 'created logo', 'Đã xem', '2022-02-08 11:43:07', '2022-02-08 11:43:07');
INSERT INTO `book_sp` (`id`, `categories`, `social_media`, `url`, `note`, `status`, `time_created`, `time_updated`) VALUES
(245, 'Movie', 'Biluu.co', 'http://biluu.co/', 'Website xem phim', 'Chưa xem', '2022-02-08 11:44:52', '2022-02-08 11:44:52'),
(246, 'Tips & Trick - Dev', 'Thuthuatphanmem.vn', 'http://thuthuatphanmem.vn/background-gradient-tong-hop-background-to-mau-chuyen-sac-dep/', 'Background gradient – Tổng hợp background tô màu chuyển sắc đẹp', 'Chưa xem', '2022-02-08 11:46:04', '2022-02-08 11:46:04'),
(247, 'English', 'Fatherly.com', 'https://www.fatherly.com/play/57-funny-jokes-kids-adults-who-like-dumb-jokes/', '110 Funny Jokes for Kids (And Adults Who Like Dumb Jokes)', 'Đang xem dở', '2022-02-08 11:47:23', '2022-02-08 11:47:23'),
(248, 'Tools - Dev', 'Pdftoword.com', 'https://www.pdftoword.com/', 'PDF to Word Converter – 100% Free', 'Đã xem', '2022-02-08 11:49:14', '2022-02-08 11:49:14'),
(249, 'Programing', 'Nguyenvanhieu.vn', 'https://nguyenvanhieu.vn/cach-kiem-tra-so-hoan-hao-bang-code-c-c/', 'Cách kiểm tra số hoàn hảo bằng code C/C++', 'Đã xem', '2022-02-08 11:51:06', '2022-02-08 11:51:06'),
(250, 'Tips & Trick - Dev', 'Fptshop.com.vn', 'https://fptshop.com.vn/tin-tuc/danh-gia/file-msi-la-gi-cach-cai-dat-file-msi-64530', 'File .msi là gì? Cách cài đặt file msi', 'Đã xem', '2022-02-08 11:51:49', '2022-02-08 11:51:49'),
(251, 'Tai lieu MH', 'Truongcb.hochiminhcity.gov.vn', 'http://www.truongcb.hochiminhcity.gov.vn/c/document_library/get_file?uuid=9f998d3b-4294-4559-aa44-0ad8b66c17a0&groupId=10217', 'HOẠT ĐỘNG CÁCH MẠNG CỦA HỒ CHÍ MINH\r\nGIAI ĐOẠN 1920-1930', 'Đang xem', '2022-02-08 11:55:27', '2022-02-08 11:55:27'),
(252, 'Tai lieu MH', 'Dropbox.com', 'https://www.dropbox.com/s/mt0bmtimlylry5c/SO%20TAY%20SINH%20VIEN%20NAM%202019-2020.doc?dl=0&fbclid=IwAR2-EMxqFaLw_eoCeMnpheqiZ8jJy2U50zCSSCtxsU6hHvbgOP3GvclfvIA', 'So tay sinh vien', 'Chưa xem', '2022-02-08 11:56:31', '2022-02-08 11:56:31'),
(253, 'Android - Mod, Cracked', 'Gocmod.com', 'https://www.gocmod.com/2019/03/simple-fb-mobile-007-mod-fix.html', 'Simple FB Mobile 0.0.7 [Mod Fix]', 'Chưa xem', '2022-02-08 11:57:35', '2022-02-08 11:57:35'),
(254, 'Tools - Dev', 'Imgbb.com', 'https://imgbb.com/', 'Đăng ảnh lên google free - có thể share', 'Đã xem', '2022-02-08 11:58:44', '2022-02-08 11:58:44'),
(255, 'Tools - Dev', 'Coggle.it', 'https://coggle.it/', 'Make mind map documents that flow like your ideas - (quản lý công việc khi code)', 'Chưa xem', '2022-02-08 11:59:40', '2022-02-08 11:59:53'),
(256, 'Tools - Dev', 'Capitalizemytitle.com', 'https://capitalizemytitle.com/style/Chicago/', 'Making title capitalization easy. Automatically capitalize and case convert to Title Case (in AP, APA, Chicago, MLA, BB, AMA), sentence case, UPPERCASE, lowercase, and more. (Tu dong Viet Hoa, ... TEXT)', 'Đã xem', '2022-02-08 12:01:12', '2022-02-08 12:01:12'),
(257, 'Tools - Dev', 'Megacooltext.com', 'http://megacooltext.com/fun-fonts-generator/', 'Fun fonts generator - cool text generator (tao font chu dac biet ingame name)', 'Đã xem', '2022-02-08 12:02:08', '2022-02-08 12:02:08'),
(258, 'Tips & Trick - Dev', 'Gocinfo.com', 'https://gocinfo.com/cac-lenh-cmd-thong-dung-tren-windows-10-part-2.html', 'Command Prompt: Các lệnh CMD thông dụng trên Windows 10 – Phần 2', 'Chưa xem', '2022-02-08 12:05:31', '2022-02-08 12:05:31'),
(259, 'English', 'Google', 'https://www.google.com/search?q=opposite+in+english&tbm=isch&ved=2ahUKEwi9r6Cjo8bvAhUTAqYKHQYsAGgQ2-cCegQIABAA&oq=opposite+in+en&gs_lcp=CgNpbWcQARgAMgQIABATMgQIABATMgQIABATMggIABAIEB4QEzIICAAQCBAeEBMyCAgAEAgQHhATMggIABAIEB4QEzIICAAQCBAeEBMyCAgAEAgQHhATMggIABAIEB4QEzoCCAA6BAgAEB46CAgAEAUQHhATUNZDWJNJYL9PaABwAHgAgAFsiAH2A5IBAzMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=OMxZYL2zGpOEmAWG2IDABg&bih=762&biw=1535#imgrc=AVZmCGBYWCNeJM', 'word: opposite in english - tu trai nghia', 'Chưa xem', '2022-02-08 12:08:13', '2022-02-08 12:08:13'),
(260, 'Tools - Dev', 'W3schools.com', 'https://www.w3schools.com/w3css/', 'W3.CSS Web Site Templates', 'Chưa xem', '2022-02-24 11:21:42', '2022-03-04 12:19:41'),
(261, 'Tools - Dev', 'Shields.io', 'https://shields.io/', 'Tạo liên kết (ví dụ xem sub channel youtube...)', 'Đã xem', '2022-02-25 11:11:55', '2022-02-25 11:11:55'),
(262, 'Mobile - React Native', 'Expo.dev', 'https://expo.dev/accounts/haduc25/projects/Trang-Quyen/builds/4e98bdc3-922d-493a-9d08-c56563befe9d', 'Web khi build xong app', 'Đã xem', '2022-02-27 06:31:17', '2022-02-27 06:31:17'),
(263, 'Mobile - React Native', 'Firebase.google.com', 'https://console.firebase.google.com/u/0/project/trangquyen-shop/firestore/data/~2FTrangQuyenStore~2F0882095222662?pli=1', 'Database Firebase cho React Native', 'Đã xem', '2022-02-27 06:32:12', '2022-02-27 06:32:12'),
(264, 'Tools - Dev', 'Ico.simpleness.org', 'http://ico.simpleness.org/pack/material-design', 'Icon for React Native', 'Đã xem', '2022-02-27 06:32:52', '2022-02-27 06:32:52'),
(265, 'Tools - Dev', 'Snack.expo.de', 'https://snack.expo.dev/', 'code React Native online', 'Đã xem', '2022-02-27 06:33:16', '2022-02-27 06:33:16'),
(266, 'Tips & Trick - Dev', 'Zendvn.com', 'https://zendvn.com/lap-trinh-di-dong-voi-react-native', 'Tham khao hoc code React Native', 'Chưa xem', '2022-02-27 06:33:47', '2022-02-27 06:33:47'),
(267, 'Tips & Trick - Dev', 'Upcdatabase.com', 'https://www.upcdatabase.com/itemform.asp', 'check upcdatabase.com', 'Chưa xem', '2022-03-04 11:35:42', '2022-03-04 11:35:42'),
(268, 'Tools - Dev', 'Slidescarnival.com', 'https://www.slidescarnival.com/', 'Templates power point', 'Chưa xem', '2022-03-04 12:09:26', '2022-03-04 12:09:26'),
(269, 'Tools - Dev', 'Scamvn.com', 'https://scamvn.com/tim-kiem?tu-khoa=%C4%90%E1%BB%99+tin+c%E1%BA%ADy+c%E1%BB%A7a+336699f.com', 'Kiểm tra ip lừa đảo hay không?', 'Chưa xem', '2022-03-04 12:19:06', '2022-03-04 12:19:23'),
(270, 'Tools - Dev', 'Thehinh.com', 'http://www.thehinh.com/tool/TDEE/tinh-tdee.html#gender=male&yr=20&cm=168&kg=65&bfp=20&goal=lose&goal_kg=60&lose_speed=reckless&formula=bfp&units=imperial&exercise=very', 'Công cụ tính TDEE ( số lượng calo cần tiêu thụ / ngày )', 'Đã xem', '2022-03-04 12:26:50', '2022-03-04 12:26:50'),
(271, 'Tools - Dev', 'Toptal.com', 'https://www.toptal.com/designers/htmlarrows/symbols/', 'HTML Currency Symbols, Currency Entities and ASCII Currency Character Code Reference', 'Đã xem', '2022-03-04 12:30:29', '2022-03-04 12:30:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_sp`
--
ALTER TABLE `book_sp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `book_sp`
--
ALTER TABLE `book_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
