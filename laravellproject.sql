-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 03:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravellproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `appliance`
--

CREATE TABLE `appliance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `DBID` varchar(255) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 0,
  `references` varchar(255) NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appliance`
--

INSERT INTO `appliance` (`id`, `libelle`, `DBID`, `disponible`, `references`, `type_id`) VALUES
(1, 'Updated Appliance Name', 'NEW_DBID', 0, 'Updated Reference', 1),
(3, 'qui', 'in', 1, 'Et omnis voluptas sed asperiores sint.', 5),
(4, 'illum', 'aut', 0, 'Officiis facilis dolores repellat asperiores ratione velit voluptas.', 2),
(5, 'optio', 'fuga', 0, 'Tempora ex excepturi assumenda iste amet.', 7),
(6, 'delectus', 'velit', 1, 'Doloribus qui incidunt in illum est.', 6),
(7, 'ut', 'modi', 0, 'Aut quibusdam magnam consectetur.', 3),
(8, 'consequatur', 'reprehenderit', 1, 'Facere est ab dolor.', 7),
(9, 'omnis', 'voluptas', 1, 'Animi sed sit illo eum atque ut sint.', 6),
(10, 'impedit', 'sapiente', 0, 'Molestiae deserunt sunt ipsa dignissimos.', 4),
(11, 'id', 'nobis', 1, 'Deserunt enim voluptatum quo quis sequi.', 1),
(12, 'sit', 'rerum', 1, 'Dicta ipsa nulla sit hic voluptatibus eius illo.', 10),
(13, 'qui', 'fuga', 1, 'Ad sed porro est voluptatibus sint.', 5),
(14, 'culpa', 'excepturi', 0, 'Sed omnis rerum reprehenderit quasi a quam odio qui.', 11),
(15, 'magnam', 'aliquid', 0, 'Quasi dolorem ut et quisquam eveniet iusto est.', 11),
(16, 'vel', 'cum', 1, 'Corrupti ea veniam quod ut veritatis qui atque.', 3),
(17, 'cum', 'a', 0, 'Possimus est maxime labore nulla aut odio ut cupiditate.', 2),
(18, 'reprehenderit', 'sint', 0, 'Quas quia qui a ipsam.', 8),
(19, 'excepturi', 'autem', 1, 'Et ducimus qui at aut vero aut.', 5),
(20, 'libero', 'ut', 0, 'Repudiandae mollitia praesentium aut sint ea.', 3),
(21, 'veritatis', 'delectus', 1, 'Ipsum quia eaque qui voluptatem ipsum mollitia non.', 4),
(22, 'mollitia', 'ipsam', 0, 'Dignissimos ut quibusdam facere non.', 7),
(23, 'et', 'in', 1, 'Voluptas velit est iusto magnam.', 11),
(24, 'voluptatum', 'quas', 0, 'Expedita architecto qui libero similique nihil illo ut.', 4),
(25, 'officiis', 'cumque', 1, 'Dolores qui praesentium dignissimos alias rem error.', 6),
(26, 'ea', 'dolorem', 0, 'Et voluptatem qui occaecati ut similique.', 2),
(27, 'velit', 'dolore', 0, 'Quae quos ipsum ad consequatur quia.', 1),
(28, 'corrupti', 'ut', 1, 'Quo sed quia expedita adipisci.', 1),
(29, 'quod', 'voluptatum', 0, 'Totam rerum distinctio consequatur ipsum.', 3),
(30, 'vero', 'facilis', 1, 'Pariatur hic animi nostrum ipsam.', 2),
(31, 'vero', 'ducimus', 0, 'Voluptatem reiciendis ea fugiat unde tenetur molestiae.', 6),
(32, 'in', 'magnam', 1, 'A nemo ducimus earum cum corrupti a cupiditate consectetur.', 9),
(33, 'sed', 'et', 0, 'Consectetur et amet nisi omnis ullam ducimus esse distinctio.', 9),
(34, 'molestias', 'autem', 1, 'Necessitatibus et accusamus unde repellat.', 11),
(35, 'molestias', 'nobis', 1, 'Delectus quo soluta nisi delectus corrupti.', 7),
(36, 'laborum', 'qui', 1, 'Omnis reiciendis animi sed dolorum sunt accusamus.', 8),
(37, 'sint', 'ea', 0, 'Autem repudiandae recusandae rerum libero.', 4),
(38, 'similique', 'error', 1, 'Debitis esse quia nemo quia incidunt.', 6),
(39, 'laborum', 'magnam', 0, 'Quia quos voluptas porro consequuntur.', 4),
(40, 'in', 'perferendis', 0, 'At reiciendis et fugit tempora.', 11),
(41, 'dignissimos', 'in', 0, 'Ut voluptate eius tempora laboriosam.', 10),
(42, 'laboriosam', 'eveniet', 1, 'Ipsam ipsam non qui libero eos unde.', 7),
(43, 'veritatis', 'dolore', 0, 'Maiores consequatur et dolores dolor nostrum.', 5),
(44, 'perspiciatis', 'odit', 0, 'Dignissimos et quis at voluptatem repellat sint.', 5),
(45, 'aut', 'doloribus', 1, 'Sed dolorem laudantium ex ea autem.', 9),
(46, 'in', 'nam', 1, 'Harum repellat dolores vel ut hic.', 8),
(47, 'dolore', 'eum', 0, 'Molestiae quod non et eius consequuntur voluptatibus cupiditate.', 6),
(48, 'nulla', 'sunt', 1, 'Reprehenderit dolores aliquam iusto.', 3),
(49, 'consequatur', 'sunt', 1, 'Enim voluptates ut quia eaque.', 1),
(50, 'qui', 'exercitationem', 0, 'Quas ea et aut.', 5),
(51, 'in', 'sit', 1, 'Voluptatem quisquam cupiditate in ut numquam voluptas.', 1),
(52, 'a', 'quia', 0, 'Amet non sed minus totam quia sunt.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `secteur` varchar(255) NOT NULL,
  `activite` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `libelle`, `secteur`, `activite`, `created_at`, `updated_at`) VALUES
(1, 'Ratke-Satterfield', 'public', 'Hazardous Materials Removal Worker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(2, 'Yundt-Pfeffer', 'prive', 'Packer and Packager', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(3, 'Goodwin Group', 'prive', 'Library Technician', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(4, 'Upton and Sons', 'prive', 'Range Manager', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(5, 'Klocko-Kuhlman', 'public', 'Bicycle Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(6, 'Spencer and Sons', 'prive', 'Algorithm Developer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(7, 'Batz-Morissette', 'prive', 'Professional Photographer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(8, 'Barrows-Conn', 'public', 'Choreographer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(9, 'Kutch, Buckridge and Torp', 'public', 'University', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(10, 'Treutel, Runte and Conn', 'prive', 'Makeup Artists', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(11, 'Schultz-Bergnaum', 'prive', 'Automotive Body Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(12, 'Schinner, Labadie and Koch', 'prive', 'Real Estate Broker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(13, 'Hills-Waters', 'prive', 'Stone Sawyer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(14, 'Nikolaus, VonRueden and Hodkiewicz', 'prive', 'Entertainment Attendant', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(15, 'Schumm, Altenwerth and Cronin', 'prive', 'Supervisor of Police', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(16, 'Walter-Turcotte', 'prive', 'Forming Machine Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(17, 'Keeling, Schmidt and Kuhn', 'prive', 'Chemical Equipment Controller', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(18, 'Ebert-Orn', 'prive', 'Landscaping', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(19, 'Connelly and Sons', 'public', 'Gas Processing Plant Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(20, 'Hirthe, Hartmann and Bartoletti', 'prive', 'Physical Therapist Aide', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(21, 'Kihn-Tromp', 'public', 'Writer OR Author', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(22, 'Schuppe-Roob', 'public', 'Textile Dyeing Machine Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(23, 'Harris and Sons', 'public', 'Industrial Engineer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(24, 'Bernhard-Buckridge', 'public', 'Locomotive Engineer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(25, 'Heidenreich LLC', 'public', 'Letterpress Setters Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(26, 'Gerlach, Kuphal and Fay', 'public', 'CSI', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(27, 'Mills Group', 'prive', 'Soil Scientist', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(28, 'Johnson, Cummerata and Fay', 'public', 'Marriage and Family Therapist', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(29, 'Lebsack Ltd', 'prive', 'Train Crew', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(30, 'Rowe LLC', 'public', 'Portable Power Tool Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(31, 'Kessler, Braun and Bradtke', 'public', 'Percussion Instrument Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(32, 'Rau Ltd', 'public', 'Dental Assistant', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(33, 'Haag, Heller and Kuhlman', 'prive', 'Computer Science Teacher', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(34, 'Fahey-Tromp', 'public', 'Engineering Teacher', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(35, 'Skiles, Gleason and Pacocha', 'public', 'Fishery Worker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(36, 'Kozey and Sons', 'prive', 'Manufacturing Sales Representative', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(37, 'Olson-Larkin', 'public', 'Mental Health Counselor', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(38, 'McCullough-McGlynn', 'prive', 'Crane and Tower Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(39, 'Ernser Inc', 'prive', 'First-Line Supervisor-Manager of Landscaping, Lawn Service, and Groundskeeping Worker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(40, 'Ondricka Inc', 'prive', 'Welder', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(41, 'Renner-Haley', 'public', 'Medical Technician', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(42, 'Gutkowski Group', 'public', 'Material Moving Worker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(43, 'Pollich, Brown and Langosh', 'prive', 'Drafter', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(44, 'McKenzie-Funk', 'public', 'Captain', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(45, 'Paucek-Treutel', 'public', 'Audio and Video Equipment Technician', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(46, 'Jakubowski LLC', 'public', 'Historian', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(47, 'Yundt Ltd', 'prive', 'Engine Assembler', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(48, 'Volkman-Toy', 'prive', 'Dispatcher', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(49, 'Schimmel-Bailey', 'prive', 'Broadcast News Analyst', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(50, 'Morissette-Johns', 'prive', 'Fire Fighter', '2024-04-06 14:41:11', '2024-04-06 14:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_04_04_233851_create__appliance_table', 1),
(3, '2024_04_05_024351_add_timestamps_to_appliance_table', 2),
(4, '2024_04_05_032323_create_clients_table', 3),
(7, '2024_04_05_123144_create_types_table', 4),
(8, '2024_04_05_154209_add_foreign_key__appliance', 5),
(9, '2024_04_06_013128_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'type 1', '2024-04-05 16:22:18', '2024-04-05 16:22:18'),
(2, 'et', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(3, 'iusto', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(4, 'atque', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(5, 'quo', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(6, 'voluptatem', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(7, 'excepturi', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(8, 'suscipit', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(9, 'nobis', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(10, 'et', '2024-04-06 14:32:32', '2024-04-06 14:32:32'),
(11, 'sint', '2024-04-06 14:32:32', '2024-04-06 14:32:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appliance`
--
ALTER TABLE `appliance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appliance_type_id_foreign` (`type_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_id_client_foreign` (`id_client`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appliance`
--
ALTER TABLE `appliance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appliance`
--
ALTER TABLE `appliance`
  ADD CONSTRAINT `appliance_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
