-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 01 2020 г., 14:47
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `descr` text NOT NULL,
  `cat` int(11) NOT NULL,
  `date` date NOT NULL,
  `sale` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `descr`, `cat`, `date`, `sale`) VALUES
(2, 'Автомобиль2', 'Описание новости 2\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 1, '2019-11-21', 0),
(3, 'Автомобиль3', 'Текст новости 3\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 1, '2019-11-21', 0),
(4, 'Еда1', 'Описание еды 1\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 2, '2019-11-21', 1),
(5, 'овощ', 'Описание еды 2\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 2, '2019-11-21', 0),
(6, 'Еда3', 'Описание еды 3\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 2, '2019-11-21', 1),
(7, 'Еда4', 'Описание еды 4\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 2, '2019-11-21', 0),
(8, 'Еда5', 'Описание еды 5\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 2, '2019-11-21', 0),
(9, 'Автомобиль4', 'Описание автомобиль4\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 1, '2019-11-21', 0),
(11, 'Жизнь города 1', 'Описание жизнь города1\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 3, '2019-11-21', 0),
(12, 'Жизнь города 2', 'Описание жизнь города2\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 3, '2019-11-21', 0),
(13, 'Жизнь города 3', 'Описание жизнь города1\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 3, '2019-11-21', 0),
(14, 'Жизнь города 4', 'Описание жизнь города1\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 3, '2019-11-21', 0),
(15, 'Жизнь города 5', 'Описание жизнь города1\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci alias assumenda debitis doloribus ea error hic iusto', 3, '2019-11-21', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Автомобили'),
(2, 'Еда'),
(3, 'Жизнь города'),
(4, 'Новости'),
(5, 'ЖКХ');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mail@mail', '$2y$10$W.7e6vKzD0UWIRn4EvPyyeqBC89hn8e0UaJr2Zo9o4e/oTjzqgKWy', '2019-11-29 07:21:42');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Данил', 'mail@mail', NULL, '$2y$10$zcFCUAvRV0rW.3fmpyZr4uErclzq8U7TipYTuLBEltt5CMs3uJv5G', NULL, '2019-11-29 07:17:12', '2019-11-29 07:17:12', 0),
(3, 'admin', 'admin@admin', NULL, '$2y$10$x/YNbpFlRuvisvtfVSAigu1QntUcr71j536Kl1OKRJCujk7WQKcQm', NULL, '2019-11-30 12:10:37', '2019-11-30 12:10:37', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
