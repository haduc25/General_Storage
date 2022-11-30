-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 02:05 PM
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
-- Table structure for table `book_sp`
--

-- CREATE TABLE `book_sp` (
--   `id` int(11) NOT NULL,
--   `categories` varchar(200) NOT NULL,
--   `social_media` varchar(200) NOT NULL,
--   `url` text NOT NULL,
--   `note` varchar(10000) NOT NULL,
--   `status` varchar(200) NOT NULL,
--   `time_created` datetime DEFAULT NULL,
--   `time_updated` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_sp`
--

INSERT INTO `bookmarks` (`id`, `categories`, `social_media`, `url`, `note`, `status`, `time_created`, `time_updated`) VALUES
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
INSERT INTO `bookmarks` (`id`, `categories`, `social_media`, `url`, `note`, `status`, `time_created`, `time_updated`) VALUES
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
-- Indexes for table `book_sp`
--
ALTER TABLE `book_sp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_sp`
--
ALTER TABLE `book_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
