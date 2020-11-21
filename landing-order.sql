-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 12 2020 г., 18:05
-- Версия сервера: 5.7.15
-- Версия PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `landing-order`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lan_camps`
--

CREATE TABLE `lan_camps` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` bigint(20) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `ref` varchar(500) DEFAULT NULL,
  `date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lan_camps`
--

INSERT INTO `lan_camps` (`id`, `ip`, `utm_source`, `utm_campaign`, `utm_content`, `utm_term`, `ref`, `date`) VALUES
(1, 2130706433, NULL, NULL, NULL, NULL, NULL, 1577896659);

-- --------------------------------------------------------

--
-- Структура таблицы `lan_orders`
--

CREATE TABLE `lan_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(11,2) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `date_order` int(10) UNSIGNED NOT NULL,
  `date_confirm` int(10) UNSIGNED DEFAULT NULL,
  `date_pay` int(10) UNSIGNED DEFAULT NULL,
  `date_cancel` int(10) UNSIGNED DEFAULT NULL,
  `camp_id` int(10) UNSIGNED DEFAULT NULL,
  `split` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lan_orders`
--

INSERT INTO `lan_orders` (`id`, `price`, `phone`, `date_order`, `date_confirm`, `date_pay`, `date_cancel`, `camp_id`, `split`) VALUES
(1, NULL, '+7 (213) 123-1231', 1577896680, NULL, NULL, NULL, 1, 'wow'),
(2, NULL, '+7 (221) 321-3131', 1577914523, 1578077284, NULL, NULL, 1, 'wow');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lan_camps`
--
ALTER TABLE `lan_camps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lan_orders`
--
ALTER TABLE `lan_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lan_camps`
--
ALTER TABLE `lan_camps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `lan_orders`
--
ALTER TABLE `lan_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
