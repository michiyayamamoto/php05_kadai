-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 2 月 17 日 08:49
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db5_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_content_table`
--

CREATE TABLE `gs_content_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT '記事のタイトル',
  `content` varchar(256) NOT NULL COMMENT '記事の内容',
  `img` varchar(256) DEFAULT NULL COMMENT '画像のPATH',
  `date` datetime NOT NULL COMMENT '登録日',
  `update_time` datetime DEFAULT NULL COMMENT '更新日（NULL許容）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='記事のテーブル';

--
-- テーブルのデータのダンプ `gs_content_table`
--

INSERT INTO `gs_content_table` (`id`, `title`, `content`, `img`, `date`, `update_time`) VALUES
(42, 'ドラえもんとドラミちゃんの好物は？', 'ドラえもんの好物はどら焼き、ドラミちゃんの好物はメロンパン。', '20230217083630_dora_9.png', '2023-02-17 16:36:30', '2023-02-17 16:43:36'),
(43, 'ドラえもんの仕事', '特定意志薄弱児童監視指導員(とくていいしはくじゃくかんししどういん)', '20230217084207_dora_16.png', '2023-02-17 16:42:07', NULL),
(44, 'ドラえもんの皮膚', 'ドラえもんはロボットだけど高級ロボットのため、蚊に刺されるらしい。', '20230217084246_dora_11.png', '2023-02-17 16:42:46', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$amJsJbnjco8Gyz9bytkawOgWcKDu2PC/hf6daAkGYFZ35nmoq1ETu', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$Jrod7Xts/VPa0ThZhT33AedMO7D2rHLA.qqDLqYGvimBqsP5Xliia', 0, 0),
(3, 'テスト３', 'test3', '$2y$10$hT8NciYWQ3.lO0QLfz1UHOySxqHYFVN3f3p2tTLQKiIgw0kBvO6g.', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_content_table`
--
ALTER TABLE `gs_content_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_content_table`
--
ALTER TABLE `gs_content_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
