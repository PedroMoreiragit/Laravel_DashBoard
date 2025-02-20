-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/02/2025 às 21:48
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto-laravel-adminlte`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('149a1adce1ad1ba9b34f41ee037ecab6', 'i:1;', 1739826992),
('149a1adce1ad1ba9b34f41ee037ecab6:timer', 'i:1739826992;', 1739826992),
('1711e608574d96a93c8adddf36bf3985', 'i:1;', 1740083069),
('1711e608574d96a93c8adddf36bf3985:timer', 'i:1740083069;', 1740083069),
('3784fb5c2e6ad9fbfe4ad24c831b62ba', 'i:2;', 1739311446),
('3784fb5c2e6ad9fbfe4ad24c831b62ba:timer', 'i:1739311446;', 1739311446),
('7981c23e148c0200309ddeaf135cffd5', 'i:1;', 1740082489),
('7981c23e148c0200309ddeaf135cffd5:timer', 'i:1740082489;', 1740082489),
('pedrohigh2930@outlook.com|127.0.0.1', 'i:2;', 1739311446),
('pedrohigh2930@outlook.com|127.0.0.1:timer', 'i:1739311446;', 1739311446),
('pedromoreirat242@gmail.com|127.0.0.1', 'i:1;', 1739826993),
('pedromoreirat242@gmail.com|127.0.0.1:timer', 'i:1739826993;', 1739826993);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_04_122149_add_two_factor_columns_to_users_table', 2),
(5, '2025_02_11_224746_create_user_profiles_table', 3),
(6, '2025_02_17_221101_create_user_interests_table', 4),
(7, '2025_02_18_201012_create_roles_table', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Editor', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(11, 1),
(12, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cNoa5QxgDjGEQ49ilxc7Xc5SsKKNIEQTxVP6JHxT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.15.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWJwYVpZa3dhd1lVaVF4SG1YYjVWczNobFd0Wlk0YXVIOGJtNHkzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcm9qZXRvLWRhc2hib2FyZC1hZG1pbmx0ZS50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739988121),
('Ct5sXzEP9f9SjCVVv59axw3XJyzxgel3q3diNWh5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.15.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFpQSFRNZEZGY3dpd0RPNHBJS2wwSEpvbm4xT3JqcEVRbk1aSmVHQSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MjoiaHR0cDovL3Byb2pldG8tZGFzaGJvYXJkLWFkbWlubHRlLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUyOiJodHRwOi8vcHJvamV0by1kYXNoYm9hcmQtYWRtaW5sdGUudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739988120),
('IUbpyVxBvDolyer1xlWiBKTtoqjgRE9f3nDBbqwO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.15.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVRYdXZrTVlkck15WW1zR0h6ZHVNWjdIaDVTbWIxNlFrQzJtVjFoSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MjoiaHR0cDovL3Byb2pldG8tZGFzaGJvYXJkLWFkbWlubHRlLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUyOiJodHRwOi8vcHJvamV0by1kYXNoYm9hcmQtYWRtaW5sdGUudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1739988120),
('lz4Pvimh9rY5xHzxICOVBH8rqlHTArgLsusUInz0', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVTl2OGpGSkExcUk3UVpCNGx4U1FiMEFBWDUzeTJ4NVlKYUZCenNJWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vcHJvamV0by1kYXNoYm9hcmQtYWRtaW5sdGUudGVzdC91c2Vycz9wYWdlPTEiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTt9', 1740083786),
('ODEUTg85HjfsPuxdydn5yUFxybkRHSaxm9TaktBs', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidDBYY0dIRGx0dXM0b3o3YXNldTdFVHVkMlFUc1ZWbFVRYlVyZHpLbiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU3OiJodHRwOi8vcHJvamV0by1kYXNoYm9hcmQtYWRtaW5sdGUudGVzdC91c2Vycz9rZXl3b3JkPWpvYW8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTt9', 1739915623);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'pedrowill', 'pedro@nada.com', NULL, '$2y$12$aubyA/sZdkNBtu5vVRbPf.0phzd1bcLuT2EJzorAtmcy4Nes2/ie6', NULL, NULL, NULL, NULL, '2025-02-07 00:17:16', '2025-02-12 01:04:36'),
(12, 'zeca fodastico', 'zeca@email.com', NULL, '$2y$12$IqJZv3rlZoNoUNCAaGYheekbCSkP7cnztT8E0Y1R5wGdXYlD4NFMS', NULL, NULL, NULL, NULL, '2025-02-12 01:04:02', '2025-02-12 01:04:02'),
(13, 'teste', 'teste@test.com', NULL, '$2y$12$SpxFlWvpKQAbWMod/aanfOUChDEsLmjmNOco0AuDHN7lKD7BbTCIu', NULL, NULL, NULL, NULL, '2025-02-19 00:06:07', '2025-02-19 00:06:07'),
(14, 'Pedro Moreira', 'pedro@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:29:18', '2025-02-18 21:29:18'),
(15, 'Maria Silva', 'maria@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:29:18', '2025-02-18 21:29:18'),
(16, 'João Souza', 'joao@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:29:18', '2025-02-18 21:29:18'),
(17, 'Ana Pereira', 'ana@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:29:18', '2025-02-18 21:29:18'),
(18, 'Carlos Mendes', 'carlos@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:29:18', '2025-02-18 21:29:18'),
(34, 'Luciana Costa', 'luciana@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(36, 'Ricardo Oliveira', 'ricardo@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(37, 'Gustavo Santos', 'gustavo@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(38, 'Juliana Rocha', 'juliana@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(39, 'Felipe Almeida', 'felipe@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(40, 'Mariana Gomes', 'mariana@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(41, 'Rafael Costa', 'rafael@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(42, 'Beatriz Cardoso', 'beatriz@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11'),
(43, 'Paulo Silva', 'paulo@example.com', NULL, '$2y$10$abcdefghijklmnopqrstuv', NULL, NULL, NULL, NULL, '2025-02-18 21:30:11', '2025-02-18 21:30:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_interests`
--

CREATE TABLE `user_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user_interests`
--

INSERT INTO `user_interests` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(8, 11, 'Formula 1', '2025-02-18 01:42:29', '2025-02-18 01:42:29'),
(9, 12, 'Futebol', '2025-02-18 01:42:40', '2025-02-18 01:42:40'),
(10, 12, 'Formula 1', '2025-02-18 01:42:40', '2025-02-18 01:42:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `type`, `address`, `created_at`, `updated_at`) VALUES
(1, 11, 'PF', '123145', '2025-02-12 01:57:32', '2025-02-12 01:58:16'),
(2, 12, 'PJ', NULL, '2025-02-19 00:04:07', '2025-02-19 00:04:07');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `roles_user_role_id_foreign` (`role_id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices de tabela `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_interests_user_id_foreign` (`user_id`);

--
-- Índices de tabela `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `user_interests`
--
ALTER TABLE `user_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `roles_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `user_interests`
--
ALTER TABLE `user_interests`
  ADD CONSTRAINT `user_interests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
