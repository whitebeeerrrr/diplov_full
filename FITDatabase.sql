-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2024 г., 12:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `FITDatabase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_chat`
--

CREATE TABLE `admin_chat` (
  `id` int NOT NULL,
  `message` text,
  `sender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `admin_chat`
--

INSERT INTO `admin_chat` (`id`, `message`, `sender`) VALUES
(1, 'Привет', NULL),
(5, 'все работает) ', NULL),
(6, 'да вы молодец ', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Applications`
--

CREATE TABLE `Applications` (
  `id` int NOT NULL,
  `vacancyTitle` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `resume` text NOT NULL,
  `uploaded_file_id` int DEFAULT NULL,
  `applicationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `favorite` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Applications`
--

INSERT INTO `Applications` (`id`, `vacancyTitle`, `fullName`, `email`, `phone`, `resume`, `uploaded_file_id`, `applicationDate`, `favorite`) VALUES
(1, 'fitness_trainer', 'Ива Иванович Иванов', 'example@example.com', '+71234567890', 'й', NULL, '2024-05-16 13:11:18', 0),
(2, 'aqua_aerobics_instructor', 'Иван Иванович Иванов', 'pasha.korchagin.03@mail.ru', '+79561343223', 'апвпвыапыва', NULL, '2024-05-18 09:36:58', 1),
(3, 'fitness_trainer', 'Иван Иванович Иванов', 'pasha.korchagin.03@mail.ru', '+79561343223', 'вк', NULL, '2024-05-19 08:42:15', 1),
(4, 'aqua_aerobics_instructor', 'Павел кк Корчагин', 'pasha.korchagin.03@mail.ru', '+79277521885', '', NULL, '2024-05-19 09:02:53', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `day` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `trainer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `appointments`
--

INSERT INTO `appointments` (`id`, `day`, `name`, `phone`, `email`, `time`, `trainer`) VALUES
(24, '2024-05-04', 'Мария', '+79223334455', 'pasha.korchagin.03@mail.ru', '11:11:00', 'Александр Авдюков'),
(25, '2024-05-05', 'Иван', '+79561343223', 'pasha.korchagin.03@mail.ru', '22:22:00', 'Фомина Анастасия'),
(26, '2024-05-03', 'Андрей', '+79228765432', 'pasha.korchagin.03@mail.ru', '22:22:00', 'Фомина Анастасия'),
(27, '2024-05-03', 'Мария', '+79223334455', 'pasha.korchagin.03@mail.ru', '11:22:00', 'Александр Авдюков'),
(28, '2024-05-02', 'Иван', '+79561343223', 'pasha.korchagin.03@mail.ru', '11:12:00', 'Александр Авдюков'),
(29, '2024-05-02', 'Андрей', '+79228765432', 'pasha.korchagin.03@mail.ru', '03:22:00', 'Александр Авдюков'),
(32, '2024-05-02', 'Ива', '+71234567890', 'example@example.com', '22:21:00', 'Александр Авдюков'),
(34, '2024-05-06', 'Павел', '+79277521885', 'pasha.korchagin.03@mail.ru', '11:01:00', 'Фомина Анастасия'),
(35, '2024-05-07', 'Андрей', '+79228765432', 'pasha.korchagin.03@mail.ru', '11:11:00', 'Фомина Анастасия'),
(36, '2024-05-07', 'Мария', '+79223334455', 'pasha.korchagin.03@mail.ru', '03:33:00', 'Семенов Сергей'),
(37, '2024-05-08', 'Мария', '+79223334455', 'pasha.korchagin.03@mail.ru', '21:01:00', 'Александр Авдюков'),
(38, '2024-05-08', 'Павел', '+79277521885', 'pasha.korchagin.03@mail.ru', '03:23:00', 'Семенов Сергей'),
(39, '2024-05-09', 'Иван', '+71234567890', 'example@example.com', '23:23:00', 'Александр Авдюков'),
(40, '2024-05-02', 'Корчагин Алексей', '+79223334455', 'pasha.korchagin.03@mail.ru', '22:22:00', 'Фомина Анастасия'),
(41, '2024-05-10', 'Андрей', '+79228765432', 'pasha.korchagin.03@mail.ru', '23:23:00', 'Александр Авдюков'),
(42, '2024-05-11', 'Алексей', '+79223334455', 'pasha.korchagin.03@mail.ru', '22:23:00', 'Фомина Анастасия');

-- --------------------------------------------------------

--
-- Структура таблицы `AquaAerobicsInstructors`
--

CREATE TABLE `AquaAerobicsInstructors` (
  `id` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hireDate` date NOT NULL,
  `specialization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `AquaAerobicsInstructors`
--

INSERT INTO `AquaAerobicsInstructors` (`id`, `fullName`, `email`, `phone`, `hireDate`, `specialization`) VALUES
(2, 'Иван Иванович Иванов', 'pasha.korchagin.03@mail.ru', '+79561343223', '2024-05-18', 'Аквааэробика'),
(4, 'Павел кк Корчагин', 'pasha.korchagin.03@mail.ru', '+79277521885', '2024-05-19', 'Аквааэробика');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Notes`
--

CREATE TABLE `Notes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Notes`
--

INSERT INTO `Notes` (`id`, `user_id`, `note`) VALUES
(3, 18, 'Пу пу заметки');

-- --------------------------------------------------------

--
-- Структура таблицы `PersonalTrainers`
--

CREATE TABLE `PersonalTrainers` (
  `id` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hireDate` date NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Purchases`
--

CREATE TABLE `Purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `purchase_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Purchases`
--

INSERT INTO `Purchases` (`id`, `user_id`, `item`, `price`, `purchase_date`, `status`) VALUES
(1, 11, 'Майка тренировочная', '1200.00', '2024-05-19 06:23:46', 'paid'),
(2, 11, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 06:24:23', 'paid'),
(3, 16, 'Майка тренировочная', '1200.00', '2024-05-19 07:09:24', 'paid'),
(4, 16, 'Популярный товар 2', '7800.00', '2024-05-19 07:09:38', 'paid'),
(5, 16, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:19:50', 'paid'),
(6, 11, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:22:13', 'pending'),
(7, 9, 'Футболка с логотипом клуба', '1500.00', '2024-05-19 07:27:45', 'pending'),
(8, 17, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:32:57', 'paid'),
(9, 17, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:33:36', 'paid'),
(10, 17, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:35:52', 'pending'),
(11, 17, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 07:35:57', 'pending'),
(12, 17, 'Футболка с логотипом клуба', '1500.00', '2024-05-19 07:41:53', 'pending'),
(13, 17, 'Тренировочные перчатки', '800.00', '2024-05-19 07:42:11', 'pending'),
(14, 18, 'Сывороточный протеин', '2500.00', '2024-05-19 08:41:16', 'paid'),
(15, 19, 'Толстовка с логотипом фитнес-клуба', '2500.00', '2024-05-19 09:05:30', 'paid');

-- --------------------------------------------------------

--
-- Структура таблицы `Ratings`
--

CREATE TABLE `Ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Ratings`
--

INSERT INTO `Ratings` (`id`, `user_id`, `rating`, `timestamp`) VALUES
(1, 1, 6, '2024-05-16 13:11:22'),
(2, 1, 7, '2024-05-18 09:37:00'),
(3, 1, 10, '2024-05-19 08:42:17'),
(4, 1, 10, '2024-05-19 09:02:58');

-- --------------------------------------------------------

--
-- Структура таблицы `Subscriptions`
--

CREATE TABLE `Subscriptions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Subscriptions`
--

INSERT INTO `Subscriptions` (`id`, `user_id`, `plan_name`, `price`, `status`, `created_at`) VALUES
(11, 10, 'BodyBlend', '17500.00', 'pending', '2024-05-18 17:17:18'),
(17, 9, 'FitWave', '7500.00', 'pending', '2024-05-18 19:18:25'),
(21, 14, 'BodyBlend', '17500.00', 'pending', '2024-05-18 22:01:20'),
(23, 16, 'GymPlus', '10500.00', 'pending', '2024-05-19 07:21:06'),
(25, 11, 'FitWave', '7500.00', 'pending', '2024-05-19 07:27:16'),
(26, 9, 'FitWave', '7500.00', 'pending', '2024-05-19 07:27:52'),
(28, 17, 'BodyBlend', '17500.00', 'pending', '2024-05-19 07:41:41'),
(29, 18, 'BodyBlend', '17500.00', 'paid', '2024-05-19 08:40:56'),
(30, 19, 'BodyBlend', '17500.00', 'pending', '2024-05-19 09:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `Trainers`
--

CREATE TABLE `Trainers` (
  `id` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `hireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Trainers`
--

INSERT INTO `Trainers` (`id`, `fullName`, `email`, `phone`, `specialization`, `hireDate`) VALUES
(1, 'Ива Иванович Иванов', 'example@example.com', '+71234567890', 'Силовые тренировки', '2024-05-16'),
(3, 'Иван Иванович Иванов', 'pasha.korchagin.03@mail.ru', '+79561343223', 'Кардио тренировки', '2024-05-19');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `fullName` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `role`, `fullName`, `phoneNumber`) VALUES
(9, 'pasha.korchagin.01@mail.ru', '$2y$10$dlvvVp3Jb/jCkQKBH105a.JlnuclOWR9hWrAny2QhyIHmkuC85Za.', 'user', 'К', '+71234567890'),
(10, 'pasha.korchagin.011@mail.ru', '$2y$10$pbS2xSug7guQVXQr3x8ZzOJsGOd8x28Z5M.RKM4gvQQyceyUJgdMe', 'admin', 'аыв', '+79223334455'),
(11, 'pasha.korchagin.03@mail.ru', '$2y$10$6V2AnfPnm8T2NawENkfSdub3IUpR4DQIKId7ImmHofBkEhef/EhOa', 'user', 'авав', '+71234567890'),
(14, 'pasha.korchagin.021213@mail.ru', '$2y$10$m5Ol/lORgZvegw20v3BWsuB7NpAG9ymouCIJHDvb.8r3wTmWZ.S5K', 'user', 'Корчагин Павел Алексеевич', '+79119876543'),
(15, 'pasha.korchagin.0323243@mail.ru', '$2y$10$.aZBJhQqO8e0rrjy8pU2m.faM.BvnVncOsTtz4yF/hQo2B99VxfT.', 'user', 'Павел кк Корчагин', '+79277521885'),
(16, 'pasha.korchagin.014253@mail.ru', '$2y$10$QJA40D8VkAzw4C/wDlkXhO9VWtdE1TVzq8688UVglq8.qFZqnxCFe', 'user', 'пашка', '+71234567890'),
(17, 'pasha.korchagin.014323@mail.ru', '$2y$10$tuuafhdh.SAqIVvhHIRmYeTbQd0N41chC2QmlirvGfirBhyOg/iQq', 'user', 'па', '+79119876543'),
(18, 'pasha.korchagin.01323223@mail.ru', '$2y$10$vC5VCRQviE.0aP3ASjD7SuEHnaHo02xtZK3e0TJJeaTetakiGHu2.', 'user', 'Корчагин Павел Алексеевич', '+79228765432'),
(19, 'pasha.korchagin.032323123@mail.ru', '$2y$10$.feSakv8313qmZHTGrl2kOjQtwm0RZ9WTwL67MtDIJtZb8Ljr4LdO', 'user', 'Алексей Корчагин', '+79223334455');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersDetails`
--

CREATE TABLE `UsersDetails` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `UsersDetails`
--

INSERT INTO `UsersDetails` (`id`, `username`, `email`, `password`) VALUES
(2, '1', 'example@example.com', '$2y$10$va9UV2ZIqq8Ozn52/8QdiOonWO03exoLB7WQ4G7uOQYqCR90qbpta');

-- --------------------------------------------------------

--
-- Структура таблицы `user_chat`
--

CREATE TABLE `user_chat` (
  `id` int NOT NULL,
  `message` text,
  `sender` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user_chat`
--

INSERT INTO `user_chat` (`id`, `message`, `sender`, `user_id`) VALUES
(7, 'Привет', NULL, 9),
(11, 'Привет ', NULL, 18),
(12, 'апрекинасе', NULL, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `Workouts`
--

CREATE TABLE `Workouts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Workouts`
--

INSERT INTO `Workouts` (`id`, `user_id`, `date`, `type`, `duration`) VALUES
(1, 9, '0001-11-11', 'Силовая ', 60),
(2, 11, '0022-02-22', 'Силовая ', 2),
(4, 18, '2025-04-26', 'Силовая', 30);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_chat`
--
ALTER TABLE `admin_chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Applications`
--
ALTER TABLE `Applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `AquaAerobicsInstructors`
--
ALTER TABLE `AquaAerobicsInstructors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `PersonalTrainers`
--
ALTER TABLE `PersonalTrainers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Purchases`
--
ALTER TABLE `Purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `Ratings`
--
ALTER TABLE `Ratings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Subscriptions`
--
ALTER TABLE `Subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_ibfk_1` (`user_id`);

--
-- Индексы таблицы `Trainers`
--
ALTER TABLE `Trainers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `UsersDetails`
--
ALTER TABLE `UsersDetails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Workouts`
--
ALTER TABLE `Workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_chat`
--
ALTER TABLE `admin_chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Applications`
--
ALTER TABLE `Applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `AquaAerobicsInstructors`
--
ALTER TABLE `AquaAerobicsInstructors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Notes`
--
ALTER TABLE `Notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `PersonalTrainers`
--
ALTER TABLE `PersonalTrainers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Purchases`
--
ALTER TABLE `Purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `Ratings`
--
ALTER TABLE `Ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Subscriptions`
--
ALTER TABLE `Subscriptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Trainers`
--
ALTER TABLE `Trainers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `UsersDetails`
--
ALTER TABLE `UsersDetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_chat`
--
ALTER TABLE `user_chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `Workouts`
--
ALTER TABLE `Workouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Notes`
--
ALTER TABLE `Notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

--
-- Ограничения внешнего ключа таблицы `Purchases`
--
ALTER TABLE `Purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

--
-- Ограничения внешнего ключа таблицы `Subscriptions`
--
ALTER TABLE `Subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Workouts`
--
ALTER TABLE `Workouts`
  ADD CONSTRAINT `workouts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
