-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 26 2023 г., 18:14
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comentators`
--

CREATE TABLE `comentators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `popularity` int(1) NOT NULL,
  `interesting_of_speech` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comentators`
--

INSERT INTO `comentators` (`id`, `name`, `popularity`, `interesting_of_speech`) VALUES
(1, 'Doofenshmirtz', 40, 99),
(2, 'fuhrer', 80, 130);

-- --------------------------------------------------------

--
-- Структура таблицы `judges`
--

CREATE TABLE `judges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truth_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `judges`
--

INSERT INTO `judges` (`id`, `truth_id`, `name`) VALUES
(1, 100, 'Gabe Newell'),
(2, 100, 'Микола Парасюк');

-- --------------------------------------------------------

--
-- Структура таблицы `meneger`
--

CREATE TABLE `meneger` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `pr_company` varchar(70) NOT NULL,
  `prize_fund_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `meneger`
--

INSERT INTO `meneger` (`id`, `name`, `pr_company`, `prize_fund_id`) VALUES
(0, 'Томас', '\'ГастроКіберБал: Битва за Балуваний Пельмень\'', 0),
(1, 'Микола', 'ГастроКіберБал: Битва за Балуваний Пельмень', 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `popularity` int(100) NOT NULL,
  `team` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`id`, `name`, `popularity`, `team`) VALUES
(1, 'Роше', 12000, 'Темерія'),
(2, 'Адриан', 8500, 'Темерія'),
(3, 'Antony', 3000, 'Темерія'),
(4, 'Антифриз', 8900, 'Темерія'),
(5, 'Талер', 5000, 'Темерія'),
(6, 'Емгир', 9100, 'Нільфгаард'),
(7, 'ShadowShaman', 7800, 'Нільфгаард'),
(8, 'Pudge', 11000, 'Нільфгаард'),
(9, 'Voorhis', 5100, 'Нільфгаард'),
(10, 'Snapfire', 3700, 'Нільфгаард');

-- --------------------------------------------------------

--
-- Структура таблицы `process_of_game`
--

CREATE TABLE `process_of_game` (
  `team_id` bigint(11) UNSIGNED NOT NULL,
  `cometators_id` bigint(20) UNSIGNED NOT NULL,
  `menegers_id` bigint(20) UNSIGNED NOT NULL,
  `spectators_id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `process_of_game`
--

INSERT INTO `process_of_game` (`team_id`, `cometators_id`, `menegers_id`, `spectators_id`, `judge_id`, `result_id`) VALUES
(1, 1, 1, 1, 1, 1),
(0, 2, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_id` bigint(20) UNSIGNED NOT NULL,
  `prize_fund_id` bigint(20) UNSIGNED NOT NULL,
  `result` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id`, `judge_id`, `prize_fund_id`, `result`) VALUES
(0, 1, 0, 0),
(1, 1, 1000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `spectators`
--

CREATE TABLE `spectators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(20) NOT NULL,
  `number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `spectators`
--

INSERT INTO `spectators` (`id`, `location`, `number`) VALUES
(1, 'Балувана Галя', 10451),
(2, 'Пузата Хата', 5600);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `trainer` varchar(20) NOT NULL,
  `result` tinyint(1) NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `player_id_2` bigint(20) UNSIGNED NOT NULL,
  `player_id_3` bigint(20) UNSIGNED NOT NULL,
  `player_id_4` bigint(20) UNSIGNED NOT NULL,
  `player_id_5` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `name`, `trainer`, `result`, `player_id`, `player_id_2`, `player_id_3`, `player_id_4`, `player_id_5`) VALUES
(0, 'Нільфгаард', 'Ванюшка', 0, 6, 7, 8, 9, 10),
(1, 'Темерія', 'Тарас', 1, 1, 2, 3, 4, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comentators`
--
ALTER TABLE `comentators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Индексы таблицы `meneger`
--
ALTER TABLE `meneger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prize_fund_id` (`prize_fund_id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `process_of_game`
--
ALTER TABLE `process_of_game`
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`,`cometators_id`,`menegers_id`,`spectators_id`),
  ADD KEY `spectators_id` (`spectators_id`),
  ADD KEY `cometators_id` (`cometators_id`),
  ADD KEY `menegers_id` (`menegers_id`),
  ADD KEY `result_id` (`result_id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`,`prize_fund_id`),
  ADD KEY `prize_fund_id` (`prize_fund_id`),
  ADD KEY `prize_fund_id_2` (`prize_fund_id`),
  ADD KEY `id` (`id`),
  ADD KEY `result` (`result`);

--
-- Индексы таблицы `spectators`
--
ALTER TABLE `spectators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`result`,`player_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `INDEX` (`result`) USING BTREE,
  ADD KEY `player_id_2` (`player_id_2`),
  ADD KEY `result_id_3` (`player_id_3`),
  ADD KEY `player_id_3` (`player_id_3`),
  ADD KEY `player_id_4` (`player_id_4`),
  ADD KEY `player_id_5` (`player_id_5`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `judges`
--
ALTER TABLE `judges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `process_of_game`
--
ALTER TABLE `process_of_game`
  ADD CONSTRAINT `process_of_game_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `process_of_game_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `process_of_game_ibfk_4` FOREIGN KEY (`spectators_id`) REFERENCES `spectators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `process_of_game_ibfk_5` FOREIGN KEY (`cometators_id`) REFERENCES `comentators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `process_of_game_ibfk_6` FOREIGN KEY (`menegers_id`) REFERENCES `meneger` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `process_of_game_ibfk_7` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_4` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_ibfk_5` FOREIGN KEY (`prize_fund_id`) REFERENCES `meneger` (`prize_fund_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`result`) REFERENCES `results` (`result`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`player_id_2`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_4` FOREIGN KEY (`player_id_3`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_5` FOREIGN KEY (`player_id_4`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_ibfk_6` FOREIGN KEY (`player_id_5`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
