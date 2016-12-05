-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2016 г., 22:17
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modul`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `kupon` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ads`
--

INSERT INTO `ads` (`id`, `title`, `price`, `company_name`, `kupon`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', '1000', 'Apple', 'asda', '2016-12-02 12:29:24', NULL),
(2, 'Ipad', '2000', 'Apple', '10asd', '2016-12-02 12:29:24', NULL),
(3, 'Nokia', '2500', 'Nokia', 'as10d', '2016-12-02 12:29:24', NULL),
(4, 'Samsung', '500', 'Samsung', 'rtyui', '2016-12-02 12:29:24', NULL),
(5, 'Printer', '800', 'ColorWay', 'rtyui', '2016-12-02 12:29:24', NULL),
(6, 'Skovorodka', '1000', 'Tefal', 'wrewr', '2016-12-02 12:29:24', NULL),
(7, 'Шарики', '1000', 'Ballons inc.', 'werty', '2016-12-02 12:29:24', NULL),
(8, 'Заточка ножей', '2500', 'Слесарь Вася', 'qwert', '2016-12-02 12:29:24', NULL),
(9, 'Заточка пил', '2000', 'Слесарь Вася', 'йкенг', '2016-12-01 12:29:24', NULL),
(10, 'Слоны', '1500', 'Цырк', 'BDUPD', '2016-12-04 19:09:18', '2016-12-04 21:09:18');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `alias`) VALUES
(1, NULL, 'Политика', 'politisc'),
(2, NULL, 'IT', 'it'),
(3, NULL, 'Главное', 'main'),
(4, NULL, 'Экономика', 'economic'),
(5, NULL, 'Наука', 'nauka'),
(6, NULL, 'Авто', 'avto'),
(7, NULL, 'Спорт', 'sport'),
(8, NULL, 'Курьезы', 'kyriozu');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `title`, `file_name`, `updated_at`, `created_at`) VALUES
(1, '1.jpg', '1.jpg', '2016-12-05 17:01:50', '2016-12-05 17:01:50'),
(2, 'depositphotos_6027805-It-background.jpg', 'depositphotos_6027805-It-background.jpg', '2016-12-05 17:01:50', '2016-12-05 17:01:50'),
(3, 'header.jpg', 'header.jpg', '2016-12-05 17:02:09', '2016-12-05 17:02:09'),
(4, 'it3.jpg', 'it3.jpg', '2016-12-05 17:02:09', '2016-12-05 17:02:09'),
(5, 'technology-298256.jpg.pagespeed.ce.xC7cqAIrBf', 'technology-298256.jpg.pagespeed.ce.xC7cqAIrBf', '2016-12-05 17:02:20', '2016-12-05 17:02:20'),
(6, '840x420.jpg', '840x420.jpg', '2016-12-05 17:02:20', '2016-12-05 17:02:20'),
(7, 'depositphotos_6027805-It-background.jpg', 'depositphotos_6027805-It-background.jpg', '2016-12-05 17:02:33', '2016-12-05 17:02:33'),
(8, 'it3.jpg', 'it3.jpg', '2016-12-05 17:02:33', '2016-12-05 17:02:33'),
(9, 'it3.jpg', 'it3.jpg', '2016-12-05 17:02:44', '2016-12-05 17:02:44'),
(10, '840x420.jpg', '840x420.jpg', '2016-12-05 17:02:44', '2016-12-05 17:02:44'),
(11, '7.jpg', '7.jpg', '2016-12-05 17:07:40', '2016-12-05 17:07:40'),
(12, '135996-e1479997739721.jpg', '135996-e1479997739721.jpg', '2016-12-05 17:07:40', '2016-12-05 17:07:40'),
(13, '802305.jpg', '802305.jpg', '2016-12-05 17:08:02', '2016-12-05 17:08:02'),
(14, 'avatar_blog_politika.jpg', 'avatar_blog_politika.jpg', '2016-12-05 17:08:02', '2016-12-05 17:08:02'),
(15, 'form.jpg', 'form.jpg', '2016-12-05 17:08:14', '2016-12-05 17:08:14'),
(16, 'images.jpg', 'images.jpg', '2016-12-05 17:08:14', '2016-12-05 17:08:14'),
(17, 'maxresdefault.jpg', 'maxresdefault.jpg', '2016-12-05 17:08:53', '2016-12-05 17:08:53'),
(18, 'US_embassies_2007.png', 'US_embassies_2007.png', '2016-12-05 17:08:53', '2016-12-05 17:08:53'),
(19, '135996-e1479997739721.jpg', '135996-e1479997739721.jpg', '2016-12-05 17:09:15', '2016-12-05 17:09:15'),
(20, 'avatar_blog_politika.jpg', 'avatar_blog_politika.jpg', '2016-12-05 17:09:15', '2016-12-05 17:09:15'),
(21, 'form.jpg', 'form.jpg', '2016-12-05 17:09:32', '2016-12-05 17:09:32'),
(22, 'maxresdefault.jpg', 'maxresdefault.jpg', '2016-12-05 17:09:32', '2016-12-05 17:09:32'),
(23, '802305.jpg', '802305.jpg', '2016-12-05 17:09:44', '2016-12-05 17:09:44'),
(24, 'US_embassies_2007.png', 'US_embassies_2007.png', '2016-12-05 17:09:44', '2016-12-05 17:09:44'),
(25, '7.jpg', '7.jpg', '2016-12-05 17:09:56', '2016-12-05 17:09:56'),
(26, 'maxresdefault.jpg', 'maxresdefault.jpg', '2016-12-05 17:09:56', '2016-12-05 17:09:56'),
(27, '6.jpg', '6.jpg', '2016-12-05 17:16:21', '2016-12-05 17:16:21'),
(28, '3125420_163539123240_2.jpeg', '3125420_163539123240_2.jpeg', '2016-12-05 17:16:21', '2016-12-05 17:16:21'),
(29, '667444884.jpg', '667444884.jpg', '2016-12-05 17:16:32', '2016-12-05 17:16:32'),
(30, 'fon-197.jpg', 'fon-197.jpg', '2016-12-05 17:16:32', '2016-12-05 17:16:32'),
(31, 'images (1).jpg', 'images (1).jpg', '2016-12-05 17:16:43', '2016-12-05 17:16:43'),
(32, 'images (2).jpg', 'images (2).jpg', '2016-12-05 17:16:43', '2016-12-05 17:16:43'),
(33, 'images.jpg', 'images.jpg', '2016-12-05 17:16:58', '2016-12-05 17:16:58'),
(34, 'krasivye-fony_550x340.jpg', 'krasivye-fony_550x340.jpg', '2016-12-05 17:16:58', '2016-12-05 17:16:58'),
(35, 'thumb_m_2640.jpg', 'thumb_m_2640.jpg', '2016-12-05 17:17:08', '2016-12-05 17:17:08'),
(36, '(1).jpg', '(1).jpg', '2016-12-05 17:17:08', '2016-12-05 17:17:08'),
(37, '1.jpg', '1.jpg', '2016-12-05 17:17:18', '2016-12-05 17:17:18'),
(38, '1231.jpg', '1231.jpg', '2016-12-05 17:26:52', '2016-12-05 17:26:52'),
(39, '187485.640x320.jpg', '187485.640x320.jpg', '2016-12-05 17:26:52', '2016-12-05 17:26:52'),
(40, '6982291.jpg', '6982291.jpg', '2016-12-05 17:27:06', '2016-12-05 17:27:06'),
(41, '59470384.jpg', '59470384.jpg', '2016-12-05 17:27:06', '2016-12-05 17:27:06'),
(42, '1235454675.jpg', '1235454675.jpg', '2016-12-05 17:27:21', '2016-12-05 17:27:21'),
(43, '5367404070dfe.jpg', '5367404070dfe.jpg', '2016-12-05 17:27:21', '2016-12-05 17:27:21'),
(44, 'ecoomy-4.jpg', 'ecoomy-4.jpg', '2016-12-05 17:27:35', '2016-12-05 17:27:35'),
(45, 'Ekonomika.jpg', 'Ekonomika.jpg', '2016-12-05 17:27:35', '2016-12-05 17:27:35'),
(46, 'fotolia52486650m.jpg', 'fotolia52486650m.jpg', '2016-12-05 17:27:49', '2016-12-05 17:27:49'),
(47, 'iStock_000005653840Karge.jpg', 'iStock_000005653840Karge.jpg', '2016-12-05 17:27:49', '2016-12-05 17:27:49'),
(48, '187485.640x320.jpg', '187485.640x320.jpg', '2016-12-05 17:27:59', '2016-12-05 17:27:59'),
(49, 'Ekonomika.jpg', 'Ekonomika.jpg', '2016-12-05 17:27:59', '2016-12-05 17:27:59'),
(50, '41d523b1ce7856acf97c.jpeg', '41d523b1ce7856acf97c.jpeg', '2016-12-05 17:29:57', '2016-12-05 17:29:57'),
(51, '503112_original.jpg', '503112_original.jpg', '2016-12-05 17:29:57', '2016-12-05 17:29:57'),
(52, '1378309622_nauka-i-zhizn.jpg', '1378309622_nauka-i-zhizn.jpg', '2016-12-05 17:30:09', '2016-12-05 17:30:09'),
(53, 'GetBg_net_Nature___Other__039537_.jpg', 'GetBg_net_Nature___Other__039537_.jpg', '2016-12-05 17:30:09', '2016-12-05 17:30:09'),
(54, 'images12354656.jpg', 'images12354656.jpg', '2016-12-05 17:30:19', '2016-12-05 17:30:19'),
(55, 'nauka (1)123.jpg', 'nauka (1)123.jpg', '2016-12-05 17:30:19', '2016-12-05 17:30:19'),
(56, 'nauka.jpg', 'nauka.jpg', '2016-12-05 17:30:31', '2016-12-05 17:30:31'),
(57, 'nauka-25-psihologicheskih-issledovanij-nedost', 'nauka-25-psihologicheskih-issledovanij-nedost', '2016-12-05 17:30:31', '2016-12-05 17:30:31'),
(58, 'post_4.jpg', 'post_4.jpg', '2016-12-05 17:30:43', '2016-12-05 17:30:43'),
(59, 'наука1567.jpg', 'наука1567.jpg', '2016-12-05 17:30:43', '2016-12-05 17:30:43'),
(60, '147.jpg', '147.jpg', '2016-12-05 17:33:06', '2016-12-05 17:33:06'),
(61, '12005iUFdyCGomqfnYHPhI.jpg', '12005iUFdyCGomqfnYHPhI.jpg', '2016-12-05 17:33:06', '2016-12-05 17:33:06'),
(62, '1432298189_novoe-avto-v-kredit.jpg', '1432298189_novoe-avto-v-kredit.jpg', '2016-12-05 17:33:17', '2016-12-05 17:33:17'),
(63, 'asdasdasdf.jpg', 'asdasdasdf.jpg', '2016-12-05 17:33:17', '2016-12-05 17:33:17'),
(64, 'asdasdwqerwer.jpg', 'asdasdwqerwer.jpg', '2016-12-05 17:33:28', '2016-12-05 17:33:28'),
(65, 'asdbnvfgh.jpg', 'asdbnvfgh.jpg', '2016-12-05 17:33:28', '2016-12-05 17:33:28'),
(66, 'dee2a39c9b0b41bd94092373ec48a35d.jpg', 'dee2a39c9b0b41bd94092373ec48a35d.jpg', '2016-12-05 17:33:44', '2016-12-05 17:33:44'),
(67, 'dfghfghdfghfdg.jpg', 'dfghfghdfghfdg.jpg', '2016-12-05 17:33:44', '2016-12-05 17:33:44'),
(68, 'imagesasdasdasdasd.jpg', 'imagesasdasdasdasd.jpg', '2016-12-05 17:33:53', '2016-12-05 17:33:53'),
(69, 'maxresdefault.jpg', 'maxresdefault.jpg', '2016-12-05 17:33:53', '2016-12-05 17:33:53'),
(70, 'asdasdasdqwerqwer.jpg', 'asdasdasdqwerqwer.jpg', '2016-12-05 17:35:57', '2016-12-05 17:35:57'),
(71, 'ikjkrtvjgoiurehntv.jpg', 'ikjkrtvjgoiurehntv.jpg', '2016-12-05 17:35:57', '2016-12-05 17:35:57'),
(72, 'images1231235555.jpg', 'images1231235555.jpg', '2016-12-05 17:36:07', '2016-12-05 17:36:07'),
(73, 'imagesasdf756.jpg', 'imagesasdf756.jpg', '2016-12-05 17:36:07', '2016-12-05 17:36:07'),
(74, 'imagestyrutuyty.jpg', 'imagestyrutuyty.jpg', '2016-12-05 17:36:16', '2016-12-05 17:36:16'),
(75, 'iStock_000016097473Large.jpg', 'iStock_000016097473Large.jpg', '2016-12-05 17:36:16', '2016-12-05 17:36:16'),
(76, 'k.piomju.jpg', 'k.piomju.jpg', '2016-12-05 17:36:28', '2016-12-05 17:36:28'),
(77, 'parashjut014.jpg', 'parashjut014.jpg', '2016-12-05 17:36:28', '2016-12-05 17:36:28'),
(78, 'stgtrh456456.jpg', 'stgtrh456456.jpg', '2016-12-05 17:36:38', '2016-12-05 17:36:38'),
(79, 'zxzxcvcxvxcvb.jpg', 'zxzxcvcxvxcvb.jpg', '2016-12-05 17:36:38', '2016-12-05 17:36:38'),
(80, 'imagesasdasdasdasd.jpg', 'imagesasdasdasdasd.jpg', '2016-12-05 17:39:02', '2016-12-05 17:39:02'),
(81, 'maxresdefault.jpg', 'maxresdefault.jpg', '2016-12-05 17:39:02', '2016-12-05 17:39:02'),
(82, '802305.jpg', '802305.jpg', '2016-12-05 18:37:55', '2016-12-05 18:37:55'),
(83, 'avatar_blog_politika.jpg', 'avatar_blog_politika.jpg', '2016-12-05 18:37:55', '2016-12-05 18:37:55');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `message` text,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(11) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `user`, `message`, `news_id`, `rating`, `updated_at`, `created_at`, `approved`) VALUES
(1, 'Skam', 'Путин ...', 6, 0, '2016-12-05 18:41:43', '2016-12-05 18:41:43', 0),
(2, 'Skam', 'Коменты появляются только после проверки модератором(( пойду напишу пару коментов в IT', 6, 0, '2016-12-05 18:42:22', '2016-12-05 18:42:22', 0),
(3, 'Skam', 'Hello world!', 1, 3, '2016-12-05 18:56:47', '2016-12-05 18:42:42', 1),
(4, 'Skam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 6, '2016-12-05 18:56:43', '2016-12-05 18:43:18', 1),
(5, 'Skam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 1, '2016-12-05 18:56:50', '2016-12-05 18:43:38', 1),
(6, 'Skam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 0, '2016-12-05 18:43:41', '2016-12-05 18:43:41', 1),
(7, 'Skam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 0, '2016-12-05 18:43:44', '2016-12-05 18:43:44', 1),
(8, '1', '11', 7, 0, '2016-12-05 18:44:44', '2016-12-05 18:44:44', 0),
(9, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 0, '2016-12-05 18:44:51', '2016-12-05 18:44:51', 1),
(10, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 1, 0, '2016-12-05 18:44:54', '2016-12-05 18:44:54', 1),
(11, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 5, 0, '2016-12-05 18:45:04', '2016-12-05 18:45:04', 1),
(12, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 5, 0, '2016-12-05 18:45:07', '2016-12-05 18:45:07', 1),
(13, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 5, 0, '2016-12-05 18:45:10', '2016-12-05 18:45:10', 1),
(14, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 16, 0, '2016-12-05 18:45:19', '2016-12-05 18:45:19', 1),
(15, '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 16, 0, '2016-12-05 18:45:24', '2016-12-05 18:45:24', 1),
(16, '2', 'О привет!', 1, 0, '2016-12-05 18:45:51', '2016-12-05 18:45:51', 1),
(17, '2', 'Путин ла ла ла ла ', 6, 0, '2016-12-05 18:46:08', '2016-12-05 18:46:08', 0),
(18, '2', '123123', 14, 0, '2016-12-05 18:46:16', '2016-12-05 18:46:16', 1),
(19, '2', '123123', 3, 0, '2016-12-05 18:46:29', '2016-12-05 18:46:29', 1),
(20, '2', '1', 3, 0, '2016-12-05 18:46:32', '2016-12-05 18:46:32', 1),
(21, '2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 3, 0, '2016-12-05 18:46:36', '2016-12-05 18:46:36', 1),
(22, '2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 3, 0, '2016-12-05 18:46:39', '2016-12-05 18:46:39', 1),
(23, '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 16, 0, '2016-12-05 18:46:56', '2016-12-05 18:46:56', 1),
(24, '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos enim et eveniet fuga illum, impedit in inventore iusto, libero modi necessitatibus obcaecati odio porro quisquam rem repellat tenetur ut voluptatum?', 16, 0, '2016-12-05 18:46:59', '2016-12-05 18:46:59', 1),
(25, 'admin', 'Прекратить спам! Всех забаню!', 1, 0, '2016-12-05 18:47:52', '2016-12-05 18:47:52', 1),
(26, 'admin', 'Ну вас всех в спам', 21, 0, '2016-12-05 18:48:10', '2016-12-05 18:48:10', 1),
(27, 'admin', '1', 2, 1, '2016-12-05 18:48:38', '2016-12-05 18:48:33', 1),
(28, 'admin', '2', 2, 4, '2016-12-05 19:05:59', '2016-12-05 18:48:36', 1),
(29, 'admin', '3', 2, 0, '2016-12-05 18:48:41', '2016-12-05 18:48:41', 1),
(30, 'admin', '4', 2, 0, '2016-12-05 18:48:44', '2016-12-05 18:48:44', 1),
(31, 'admin', '5', 2, 0, '2016-12-05 18:48:46', '2016-12-05 18:48:46', 1),
(32, 'admin', 'Админа не победить!', 16, 0, '2016-12-05 18:49:33', '2016-12-05 18:49:33', 1),
(33, 'admin', 'Я тут главный комментатор', 29, 0, '2016-12-05 18:49:47', '2016-12-05 18:49:47', 1),
(34, 'admin', 'И еще один коммент', 2, 0, '2016-12-05 18:50:11', '2016-12-05 18:50:11', 1),
(35, 'admin', 'Го в дотку?', 36, 0, '2016-12-05 18:50:59', '2016-12-05 18:50:59', 1),
(36, 'admin', 'Не, мне диплом писать', 36, 0, '2016-12-05 18:51:15', '2016-12-05 18:51:15', 1),
(37, 'admin', 'Ну ок!', 36, 0, '2016-12-05 18:51:21', '2016-12-05 18:51:21', 1),
(38, 'admin', 'Всем привет', 16, 0, '2016-12-05 18:51:40', '2016-12-05 18:51:40', 1),
(39, 'admin', 'а как новые новости опубликовать?', 16, 0, '2016-12-05 18:51:56', '2016-12-05 18:51:56', 1),
(40, 'admin', 'Это к админу', 16, 0, '2016-12-05 18:52:03', '2016-12-05 18:52:03', 1),
(41, 'admin', 'qwerty', 6, 5, '2016-12-05 19:00:31', '2016-12-05 18:57:50', 1),
(42, 'admin', 'qqqq', 6, 2, '2016-12-05 19:00:35', '2016-12-05 18:57:54', 1),
(43, 'admin', 'qwertyuuiio', 6, 0, '2016-12-05 18:58:14', '2016-12-05 18:57:58', 1),
(44, 'admin', '1', 26, 0, '2016-12-05 19:01:04', '2016-12-05 19:01:04', 1),
(45, 'admin', '2', 26, 0, '2016-12-05 19:01:06', '2016-12-05 19:01:06', 1),
(46, 'admin', '3', 26, 0, '2016-12-05 19:01:10', '2016-12-05 19:01:10', 1),
(47, 'admin', '4', 26, 0, '2016-12-05 19:01:12', '2016-12-05 19:01:12', 1),
(48, 'admin', '5', 26, 0, '2016-12-05 19:01:15', '2016-12-05 19:01:15', 1),
(49, 'admin', '6', 26, 0, '2016-12-05 19:01:17', '2016-12-05 19:01:17', 1),
(50, 'admin', '1', 26, 0, '2016-12-05 19:01:20', '2016-12-05 19:01:20', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `body` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `updated_at`, `created_at`) VALUES
(1, 'Айти', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:01:50', '2016-12-05 17:01:50'),
(2, 'Айти2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:02:09', '2016-12-05 17:02:09'),
(3, 'Айти3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:02:20', '2016-12-05 17:02:20'),
(4, 'Айти4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:02:33', '2016-12-05 17:02:33'),
(5, 'Айти 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:02:44', '2016-12-05 17:02:44'),
(6, 'Политика', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:07:40', '2016-12-05 17:07:40'),
(7, 'Политика2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:08:02', '2016-12-05 17:08:02'),
(8, 'Политика3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:08:14', '2016-12-05 17:08:14'),
(9, 'Политика 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:08:53', '2016-12-05 17:08:53'),
(10, 'Политика 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:09:15', '2016-12-05 17:09:15'),
(11, 'Политика 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:09:32', '2016-12-05 17:09:32'),
(12, 'Политика 7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:09:44', '2016-12-05 17:09:44'),
(13, 'Политика 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias cum, deleniti dicta facilis impedit molestiae nemo nihil nobis obcaecati odio odit perspiciatis, porro quos rem reprehenderit sapiente unde velit.', '2016-12-05 17:09:56', '2016-12-05 17:09:56'),
(14, 'Главное ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:16:21', '2016-12-05 17:16:21'),
(15, 'Главное 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:16:32', '2016-12-05 17:16:32'),
(16, 'Главное 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:16:43', '2016-12-05 17:16:43'),
(17, 'Главное 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:16:58', '2016-12-05 17:16:58'),
(18, 'Главное 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:17:08', '2016-12-05 17:17:08'),
(19, 'Главное 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda consequuntur corporis, doloremque dolorum eos esse fugiat fugit iure labore molestias nam nostrum nulla praesentium quod sed ullam unde velit, voluptatum.', '2016-12-05 17:17:18', '2016-12-05 17:17:18'),
(20, 'Экономика', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:26:52', '2016-12-05 17:26:52'),
(21, 'Экономика 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:27:06', '2016-12-05 17:27:06'),
(22, 'Экономика 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:27:21', '2016-12-05 17:27:21'),
(23, 'Экономика 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:27:35', '2016-12-05 17:27:35'),
(24, 'Экономика 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:27:49', '2016-12-05 17:27:49'),
(25, 'Экономика 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:27:59', '2016-12-05 17:27:59'),
(26, 'Наука', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:29:57', '2016-12-05 17:29:57'),
(27, 'Наука 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:30:09', '2016-12-05 17:30:09'),
(28, 'Наука 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:30:19', '2016-12-05 17:30:19'),
(29, 'Наука 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:30:31', '2016-12-05 17:30:31'),
(30, 'Наука 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:30:43', '2016-12-05 17:30:43'),
(31, 'Авто', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:33:06', '2016-12-05 17:33:06'),
(32, 'Авто 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:33:17', '2016-12-05 17:33:17'),
(33, 'Авто 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:33:28', '2016-12-05 17:33:28'),
(34, 'Авто 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:33:44', '2016-12-05 17:33:44'),
(35, 'Авто 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:33:53', '2016-12-05 17:33:53'),
(36, 'Спорт', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:35:57', '2016-12-05 17:35:57'),
(37, 'Спорт 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:36:07', '2016-12-05 17:36:07'),
(38, 'Спорт 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:36:16', '2016-12-05 17:36:16'),
(39, 'Спорт 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:36:28', '2016-12-05 17:36:28'),
(40, 'Спорт 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:36:38', '2016-12-05 17:36:38'),
(41, 'Курьезы', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid corporis eos non odit omnis porro, quidem velit. Ab beatae consequatur culpa debitis dignissimos doloremque eaque eveniet, itaque libero reiciendis.', '2016-12-05 17:39:02', '2016-12-05 17:39:02'),
(42, 'Политический кризиз', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque aut beatae, distinctio, fuga ipsa magnam magni necessitatibus nostrum odit perferendis perspiciatis saepe! Beatae deserunt ipsa libero? Illum itaque non veritatis?', '2016-12-05 18:37:55', '2016-12-05 18:37:55');

-- --------------------------------------------------------

--
-- Структура таблицы `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_categories`
--

INSERT INTO `news_categories` (`id`, `news_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 3),
(19, 19, 3),
(20, 20, 4),
(21, 21, 4),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4),
(26, 26, 5),
(27, 27, 5),
(28, 28, 5),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 5),
(34, 34, 5),
(35, 35, 5),
(36, 36, 7),
(37, 37, 7),
(38, 38, 7),
(39, 39, 7),
(40, 40, 7),
(41, 41, 8),
(42, 15, 2),
(43, 21, 2),
(44, 31, 2),
(45, 41, 2),
(46, 37, 2),
(47, 27, 2),
(48, 18, 2),
(49, 35, 2),
(50, 29, 2),
(51, 18, 3),
(52, 16, 4),
(53, 27, 5),
(54, 3, 6),
(55, 2, 7),
(56, 1, 8),
(57, 14, 3),
(58, 39, 4),
(59, 31, 5),
(60, 28, 6),
(61, 25, 7),
(62, 3, 8),
(63, 35, 3),
(64, 23, 4),
(65, 21, 5),
(66, 17, 6),
(67, 14, 7),
(68, 1, 8),
(69, 42, 2),
(72, 19, 2),
(73, 35, 2),
(74, 37, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news_images`
--

CREATE TABLE `news_images` (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `image_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 2),
(6, 3, 4),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 1),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20),
(21, 11, 21),
(22, 11, 22),
(23, 12, 23),
(24, 12, 24),
(25, 13, 25),
(26, 13, 26),
(27, 14, 27),
(28, 14, 28),
(29, 15, 29),
(30, 15, 30),
(31, 16, 31),
(32, 16, 32),
(33, 17, 33),
(34, 17, 34),
(35, 18, 35),
(36, 18, 32),
(37, 19, 37),
(38, 20, 38),
(39, 20, 39),
(40, 21, 40),
(41, 21, 41),
(42, 22, 42),
(43, 22, 43),
(44, 23, 44),
(45, 23, 45),
(46, 24, 46),
(47, 24, 47),
(48, 25, 48),
(49, 25, 49),
(50, 26, 50),
(51, 26, 51),
(52, 27, 52),
(53, 27, 53),
(54, 28, 54),
(55, 28, 55),
(56, 29, 56),
(57, 29, 57),
(58, 30, 58),
(59, 30, 59),
(60, 31, 60),
(61, 31, 61),
(62, 32, 62),
(63, 32, 63),
(64, 33, 64),
(65, 33, 65),
(66, 34, 66),
(67, 34, 67),
(68, 35, 68),
(69, 35, 69),
(70, 36, 70),
(71, 36, 71),
(72, 37, 72),
(73, 37, 73),
(74, 38, 74),
(75, 38, 75),
(76, 39, 76),
(77, 39, 77),
(78, 40, 78),
(79, 40, 79),
(80, 41, 80),
(81, 41, 81),
(82, 42, 82),
(83, 42, 83);

-- --------------------------------------------------------

--
-- Структура таблицы `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `tags_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_tags`
--

INSERT INTO `news_tags` (`id`, `news_id`, `tags_id`) VALUES
(1, 40, 1),
(2, 39, 2),
(3, 40, 7),
(4, 41, 9),
(5, 41, 8),
(6, 39, 4),
(7, 38, 1),
(8, 38, 6),
(9, 37, 5),
(10, 36, 4),
(11, 36, 3),
(12, 35, 2),
(13, 35, 1),
(14, 35, 9),
(15, 34, 8),
(16, 34, 7),
(17, 34, 6),
(18, 33, 5),
(19, 33, 4),
(20, 32, 3),
(21, 32, 2),
(22, 31, 1),
(23, 31, 9),
(24, 30, 8),
(25, 30, 7),
(26, 29, 6),
(27, 29, 5),
(28, 28, 4),
(29, 28, 3),
(30, 27, 2),
(31, 27, 1),
(32, 27, 9),
(33, 26, 8),
(34, 26, 7),
(35, 25, 6),
(36, 25, 4),
(37, 24, 4),
(38, 24, 2),
(39, 23, 1),
(40, 23, 3),
(41, 22, 5),
(42, 22, 8),
(43, 21, 7),
(44, 21, 6),
(45, 21, 5),
(46, 20, 5),
(47, 19, 6),
(48, 18, 5),
(49, 17, 4),
(50, 17, 3),
(51, 16, 2),
(52, 16, 2),
(53, 15, 1),
(54, 15, 8),
(55, 14, 7),
(56, 14, 6),
(57, 13, 5),
(58, 13, 4),
(59, 12, 3),
(60, 12, 2),
(61, 12, 1),
(62, 11, 9),
(63, 11, 8),
(64, 10, 7),
(65, 9, 6),
(66, 8, 5),
(67, 7, 4),
(68, 7, 3),
(69, 6, 2),
(70, 5, 1),
(71, 3, 9),
(72, 2, 8),
(73, 4, 7),
(74, 1, 6),
(75, 1, 5),
(76, 2, 4),
(77, 3, 3),
(78, 4, 2),
(79, 5, 1),
(80, 26, 5),
(81, 28, 5),
(82, 30, 5),
(83, 34, 5),
(84, 35, 5),
(85, 42, 1),
(86, 41, 1),
(87, 40, 2),
(88, 39, 3),
(89, 38, 4),
(90, 37, 5),
(91, 36, 6),
(92, 35, 7),
(93, 34, 8),
(94, 33, 9),
(95, 32, 1),
(96, 31, 1),
(97, 30, 1),
(98, 29, 1),
(99, 28, 1),
(100, 27, 1),
(101, 26, 1),
(102, 25, 1),
(103, 24, 2),
(104, 23, 2),
(105, 22, 2),
(106, 21, 2),
(107, 20, 2),
(108, 1, 2),
(109, 2, 2),
(110, 3, 3),
(111, 4, 3),
(112, 5, 3),
(113, 6, 3),
(114, 7, 3),
(115, 8, 4),
(116, 9, 4),
(117, 10, 4),
(118, 11, 4),
(119, 12, 4),
(120, 13, 4),
(121, 14, 4),
(122, 15, 5),
(123, 16, 5),
(124, 17, 5),
(125, 18, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` varchar(45) DEFAULT NULL,
  `body` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `menu`, `body`) VALUES
(1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `spam`
--

CREATE TABLE `spam` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tag_name`) VALUES
(1, 'LOL'),
(2, 'New'),
(3, 'Intetesting'),
(4, 'Spesial'),
(5, 'IT'),
(6, 'Informative'),
(7, 'Best'),
(8, 'Amazing'),
(9, 'Wonderful');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Skam', 'skam.max@gmail.com', '$2y$10$7KIUd9WeJ64FM3ZmfByrpuQ9ur/DhwiGcqkyZtsD/CQV4z9BZKUAu', 'u407hFNLyEloQFpFMgnC9sir4af9EPBPVOK50ODbiJfzVIL49UCasnsbFrCd', '2016-12-02 19:19:37', '2016-12-05 18:44:23', NULL),
(2, '1', '1@mail.ru', '$2y$10$DYUTt.Th5ebmpsRWgcYeX.dj/S8j3DigvyVB6zdDWpk50wAM8CFiq', 'tsonqNt3nJtQsiDqKdRc0RWrtss4RWB3f4T8CrSjaj4ws9rQAnMwYMDfVmd6', '2016-12-02 20:12:19', '2016-12-05 18:45:35', NULL),
(3, '2', '2@mail.ru', '$2y$10$zdhrO.NX2F6CNfi./qoLue2L8KN1/R89RjGF173yYO8Fa9pDK9WD6', 'MKQT5ZMTgQJ4JUHFLnlTYEWRWrhJcmKmxB8r7t4FGggR19d0xA35XzsyihyO', '2016-12-03 18:56:42', '2016-12-05 18:46:40', NULL),
(4, '3', '3@mail.ru', '$2y$10$udxQ4uy2i/XxabeViLRro.PVK.ifbQQUDj2UsNgFpO/gUVLQWOmEq', 'cO157pWK2wis46wtMMNHlrbJiMZq1TbFdg482zLBvPE4avNj46HvTyYd11LZ', '2016-12-03 18:57:28', '2016-12-05 18:47:15', NULL),
(5, '4', '4@mail.ru', '$2y$10$GhWUd7SC8p3HYwFVouK9feUbAxbgQRv/RrfzBUtdBr3JaXSYfe2i2', 'tQeiIR1iKCrT0NRXKggy0bDax2eYhpcKj8rBL2z4G245bI3VMIXEUex0aGz8', '2016-12-03 18:58:06', '2016-12-03 18:58:15', NULL),
(6, '5', '5@mail.ru', '$2y$10$fRqdWn0u3jcm86.QOqhSNOwQjBqmi7FLLJ6R5xQ5JdYTcAdhQ3QC6', 'gWyymslpZX9ABJzx17nQMp02bWjJYyFPRF9bfqhxgfZx4ziviNuUoXdqTjbO', '2016-12-03 18:58:35', '2016-12-03 18:58:48', NULL),
(7, '6', '6@mail.ru', '$2y$10$Cf78oGgaaEpDL9kYK.6C4ecQVYzrTDfIW3Nud554h8geUGIxLMBy6', 'gAb5gcrdgLwzGtwdJZPljsljlctYW1dMWr52e3uBrhHpU4hX7B6DpFhSCXzI', '2016-12-03 18:58:59', '2016-12-03 19:16:40', NULL),
(8, 'admin', 'info@php-academy.kiev.ua', '$2y$10$0VrN/lPuSuYtQP4I6bqpEurfOEfCPcDMgdRYcVwimcWOxlYdbP4r6', 'vn932DywWjeRWqlYAYg4hIfVyqPXfRDtgx8qs6hT8ajUs6FR1BzkegZIi5Ka', '2016-12-04 17:57:27', '2016-12-05 18:41:29', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spam`
--
ALTER TABLE `spam`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `news_images`
--
ALTER TABLE `news_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT для таблицы `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `spam`
--
ALTER TABLE `spam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
