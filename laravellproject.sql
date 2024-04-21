-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 04:37 PM
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
  `libelle` varchar(40) NOT NULL,
  `DBID` varchar(40) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 0,
  `references` varchar(40) NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appliance`
--

INSERT INTO `appliance` (`id`, `libelle`, `DBID`, `disponible`, `references`, `type_id`) VALUES
(1, 'cvnj', 'NEW_DBID', 0, 'Updated Reference', 1),
(3, 'qui', 'in', 1, 'Et omnis voluptas sed asperiores sint.', 5),
(4, 'illum', 'aut', 0, 'Officiis facilis dolores repellat asperi', 2),
(5, 'optio', 'fuga', 0, 'Tempora ex excepturi assumenda iste amet', 7),
(6, 'delectus', 'velit', 1, 'Doloribus qui incidunt in illum est.', 6),
(7, 'ut', 'modi', 0, 'Aut quibusdam magnam consectetur.', 3),
(8, 'consequatur', 'reprehenderit', 1, 'Facere est ab dolor.', 7),
(9, 'omnis', 'voluptas', 1, 'Animi sed sit illo eum atque ut sint.', 6),
(10, 'impedit', 'sapiente', 0, 'Molestiae deserunt sunt ipsa dignissimos', 4),
(11, 'id', 'nobis', 1, 'Deserunt enim voluptatum quo quis sequi.', 1),
(12, 'sit', 'rerum', 1, 'Dicta ipsa nulla sit hic voluptatibus ei', 10),
(13, 'qui', 'fuga', 1, 'Ad sed porro est voluptatibus sint.', 5),
(14, 'culpa', 'excepturi', 0, 'Sed omnis rerum reprehenderit quasi a qu', 11),
(15, 'magnam', 'aliquid', 0, 'Quasi dolorem ut et quisquam eveniet ius', 11),
(16, 'vel', 'cum', 1, 'Corrupti ea veniam quod ut veritatis qui', 3),
(17, 'cum', 'a', 0, 'Possimus est maxime labore nulla aut odi', 2),
(18, 'reprehenderit', 'sint', 0, 'Quas quia qui a ipsam.', 8),
(19, 'excepturi', 'autem', 1, 'Et ducimus qui at aut vero aut.', 5),
(21, 'veritatis', 'delectus', 1, 'Ipsum quia eaque qui voluptatem ipsum mo', 4),
(22, 'mollitia', 'ipsam', 0, 'Dignissimos ut quibusdam facere non.', 7),
(23, 'et', 'in', 1, 'Voluptas velit est iusto magnam.', 11),
(24, 'voluptatum', 'quas', 0, 'Expedita architecto qui libero similique', 4),
(25, 'officiis', 'cumque', 1, 'Dolores qui praesentium dignissimos alia', 6),
(26, 'ea', 'dolorem', 0, 'Et voluptatem qui occaecati ut similique', 2),
(27, 'velit', 'dolore', 0, 'Quae quos ipsum ad consequatur quia.', 1),
(28, 'corrupti', 'ut', 1, 'Quo sed quia expedita adipisci.', 1),
(29, 'quod', 'voluptatum', 0, 'Totam rerum distinctio consequatur ipsum', 3),
(30, 'Upce Name', 'NEWDBID', 0, 'Updated Reference', 1),
(31, 'vero', 'ducimus', 0, 'Voluptatem reiciendis ea fugiat unde ten', 6),
(32, 'in', 'magnam', 1, 'A nemo ducimus earum cum corrupti a cupi', 9),
(33, 'sed', 'et', 0, 'Consectetur et amet nisi omnis ullam duc', 9),
(34, 'molestias', 'autem', 1, 'Necessitatibus et accusamus unde repella', 11),
(35, 'molestias', 'nobis', 1, 'Delectus quo soluta nisi delectus corrup', 7),
(36, 'laborum', 'qui', 1, 'Omnis reiciendis animi sed dolorum sunt ', 8),
(37, 'sint', 'ea', 0, 'Autem repudiandae recusandae rerum liber', 4),
(38, 'similique', 'error', 1, 'Debitis esse quia nemo quia incidunt.', 6),
(39, 'laborum', 'magnam', 0, 'Quia quos voluptas porro consequuntur.', 4),
(40, 'in', 'perferendis', 0, 'At reiciendis et fugit tempora.', 11),
(41, 'dignissimos', 'in', 0, 'Ut voluptate eius tempora laboriosam.', 10),
(42, 'laboriosam', 'eveniet', 1, 'Ipsam ipsam non qui libero eos unde.', 7),
(43, 'veritatis', 'dolore', 0, 'Maiores consequatur et dolores dolor nos', 5),
(44, 'perspiciatis', 'odit', 0, 'Dignissimos et quis at voluptatem repell', 5),
(45, 'aut', 'doloribus', 1, 'Sed dolorem laudantium ex ea autem.', 9),
(46, 'in', 'nam', 1, 'Harum repellat dolores vel ut hic.', 8),
(47, 'dolore', 'eum', 0, 'Molestiae quod non et eius consequuntur ', 6),
(48, 'nulla', 'sunt', 1, 'Reprehenderit dolores aliquam iusto.', 3),
(49, 'consequatur', 'sunt', 1, 'Enim voluptates ut quia eaque.', 1),
(50, 'Updated Appliance Name', 'NEW_DBID', 0, 'Updated Reference', 1),
(52, 'a', 'quia', 0, 'Amet non sed minus totam quia sunt.', 7),
(53, 'Test', 'sdk', 0, 'Reference', 1),
(54, 'title 1', 'dbid', 1, 'test ref', 7),
(55, 'title 1', 'dbid', 1, 'test ref', 7),
(56, 'title 1', 'dbid', 1, 'test ref', 7),
(57, 'title 1', 'dbid', 1, 'test ref', 7),
(58, 'title 1', 'dbidjjszx', 1, 'ioks', 7),
(66, 'iojkkm', 'mmm', 0, 'mm', 1),
(67, 'n', 'nxn', 0, 'nzn', 3),
(68, 'n', 'nxn', 0, 'nzn', 3),
(69, 'hsxjx', 'nxn', 0, 'nxjmz', 5),
(70, 'try', 'ddd', 0, 'anything', 7),
(71, 'nnnz', 'hcdsnhj', 0, 'nejx', 4);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(40) NOT NULL,
  `secteur` varchar(40) NOT NULL,
  `activite` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `libelle`, `secteur`, `activite`, `created_at`, `updated_at`) VALUES
(1, 'Ratke-Satterfield', 'option2', 'Hazardous Materials Removal Worker', '2024-04-06 14:41:11', '2024-04-17 12:06:31'),
(2, 'Yundt-Pfeffer', 'prive', 'Packer and Packager', '2024-04-06 14:41:11', '2024-04-16 09:25:16'),
(4, 'Upton and Sons', 'prive', 'Range Manager', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(5, 'Klocko-Kuhlman', 'public', 'Bicycle Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(6, 'Spencer and Sons', 'prive', 'Algorithm Developer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(7, 'Batz-Morissette', 'prive', 'Professional Photographer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(8, 'Barrows-Conn', 'public', 'Choreographer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(9, 'Kutch, Buckridge and Torp', 'public', 'University', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(10, 'Treutel, Runte and Conn', 'prive', 'Makeup Artists', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(11, 'Schultz-Bergnaum', 'prive', 'Automotive Body Repairer', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(12, 'Klocko-Kuhlman', 'public', 'Bicycle Repairer', '2024-04-06 14:41:11', '2024-04-15 12:13:03'),
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
(32, 'Upton and Sons', 'prive', 'Range Manager', '2024-04-06 14:41:11', '2024-04-15 12:13:09'),
(33, 'Haag, Heller and Kuhlman', 'prive', 'Computer Science Teacher', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(34, 'Fahey-Tromp', 'public', 'Engineering Teacher', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(35, 'Skiles, Gleason and Pacocha', 'public', 'Fishery Worker', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(36, 'Kozey and Sons', 'prive', 'Manufacturing Sales Representative', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(37, 'Olson-Larkin', 'public', 'Mental Health Counselor', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(38, 'McCullough-McGlynn', 'prive', 'Crane and Tower Operator', '2024-04-06 14:41:11', '2024-04-06 14:41:11'),
(39, 'Upton and Sons', 'prive', 'First-Line', '2024-04-06 14:41:11', '2024-04-15 12:13:19'),
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
(50, 'Morissette-Johns', 'prive', 'Fire Fighter', '2023-04-06 14:41:11', '2024-04-06 14:41:11'),
(51, 'D\'Amore, Olson and Abbott', 'quia', 'Provident ratione fuga voluptatem.', NULL, NULL),
(52, 'Schultz LLC', 'sed', 'Velit quos veniam tempore reprehenderit.', NULL, NULL),
(53, 'Toy and Sons', 'sequi', 'Autem officia voluptas amet sunt.', NULL, NULL),
(54, 'Collins-Ullrich', 'velit', 'Quam voluptas distinctio fuga.', NULL, NULL),
(55, 'Okuneva-Rosenbaum', 'eius', 'Adipisci quod itaque dolorem recusandae ', NULL, NULL),
(56, 'Klein and Sons', 'voluptas', 'Nemo illum non culpa inventore beatae.', NULL, NULL),
(57, 'Predovic-Sporer', 'beatae', 'Quod sunt quia dolor rerum fuga.', NULL, NULL),
(58, 'Medhurst, Abbott and Sanford', 'ipsam', 'Error corporis molestias non hic et ea.', NULL, NULL),
(59, 'Eichmann-Konopelski', 'illum', 'Laboriosam repellendus est exercitatione', NULL, NULL),
(60, 'Emmerich, Bartoletti and Pollich', 'atque', 'Eos aspernatur sunt dolores molestiae pa', NULL, NULL),
(61, 'Powlowski, Kuvalis and Wilkinson', 'ratione', 'Ad id quis possimus sed praesentium dolo', NULL, NULL),
(62, 'O\'Reilly-Medhurst', 'esse', 'Itaque doloremque voluptatibus.', NULL, '2024-04-16 10:21:21'),
(63, 'Doyle, Trantow and Bernier', 'quia', 'Aut et aut sint eum autem dolorem alias.', NULL, NULL),
(64, 'Mante Group', 'est', 'Distinctio omnis consectetur natus ullam', NULL, NULL),
(65, 'Steuber, Kerluke and DuBuque', 'omnis', 'Et quo et porro ipsum ut perspiciatis sa', NULL, NULL),
(66, 'Hartmann-Gaylord', 'quisquam', 'Numquam rerum est nihil ab quo laborum e', NULL, NULL),
(67, 'King Inc', 'asperiores', 'Deserunt repudiandae sed tenetur .', NULL, '2024-04-16 10:22:04'),
(68, 'Wehner-Mohr', 'nobis', 'Consequatur ducimus aut iusto itaque eve', NULL, NULL),
(69, 'Baumbach, Miller and Simonis', 'soluta', 'Dolorem soluta animi et ut.', NULL, NULL),
(70, 'Rohan, Koelpin and Cronin', 'nemo', 'Voluptates aut voluptatem officiis nesci', NULL, NULL),
(71, 'Dietrich-Labadie', 'modi', 'Ipsum et nesciunt velit similique volupt', NULL, NULL),
(72, 'McDermott PLC', 'facilis', 'Quas voluptates unde voluptas quod ratio', NULL, NULL),
(73, 'Kuvalis, Marvin and Towne', 'et', 'Impedit tenetur qui libero ad repellat s', NULL, NULL),
(74, 'Muller-Bogisich', 'blanditiis', 'Impedit pariatur soluta eum sed.', NULL, NULL),
(75, 'Corwin Inc', 'similique', 'Tenetur ut hic ea et ad labore harum.', NULL, NULL),
(76, 'Moen Ltd', 'et', 'Earum fugit quia debitis magni cupiditat', NULL, NULL),
(77, 'Dietrich-Olson', 'facere', 'Voluptatem recusandae deserunt quis in v', NULL, NULL),
(78, 'Braun PLC', 'at', 'Et molestiae vero et.', NULL, NULL),
(79, 'Beahan-Schneider', 'ab', 'Explicabo odit odit ut illum consequatur', NULL, NULL),
(80, 'Mohr LLC', 'hic', 'Sunt quibusdam aperiam odio aut veniam.', NULL, NULL),
(81, 'Wolff, Crooks and Pacocha', 'facere', 'Ut doloremque repellat minus cupiditate ', NULL, NULL),
(82, 'Watsica and Sons', 'doloribus', 'Magnam suscipit vitae et blanditiis cons', NULL, NULL),
(83, 'Gislason Group', 'iure', 'Enim rerum rerum totam voluptatum dolori', NULL, NULL),
(84, 'Orn-Nolan', 'autem', 'Dignissimos deleniti recusandae dolorum ', NULL, NULL),
(85, 'Kshlerin, Krajcik and Hoppe', 'enim', 'Tempora voluptatem dolor quos corrupti e', NULL, NULL),
(86, 'Larson LLC', 'error', 'Non nihil qui earum facilis magni volupt', NULL, NULL),
(87, 'Price-Reichel', 'est', 'Dolores voluptatibus corrupti vero dolor', NULL, NULL),
(88, 'Aufderhar-Harber', 'voluptatem', 'Amet dolores quaerat sapiente ut adipisc', NULL, NULL),
(89, 'Mann, Adams and Dickinson', 'dolorem', 'Dolores autem aspernatur rerum sit quo o', NULL, NULL),
(90, 'Heaney, Haley and Abernathy', 'illum', 'Aperiam ab quis error consequatur commod', NULL, NULL),
(91, 'Stokes PLC', 'enim', 'Molestiae quibusdam nobis laborum.', NULL, NULL),
(92, 'O\'Kon LLC', 'ea', 'Iste doloremque corporis blanditiis duci', NULL, '2024-04-16 10:23:48'),
(93, 'O\'Conner, Schamberger and Walker', 'voluptatem', 'Blanditiis repudiandae et repellat sit e', NULL, NULL),
(94, 'Wisozk LLC', 'sapiente', 'Optio et enim quod atque.', NULL, NULL),
(95, 'Cormier-Strosin', 'qui', 'Placeat dolor beatae quos et vel rerum p', NULL, NULL),
(96, 'Zulauf, Orn and Brekke', 'libero', 'Temporibus accusantium', NULL, '2024-04-16 10:23:35'),
(97, 'Bechtelar-Schmidt', 'qui', 'Recusandae totam distinctio dicta molest', NULL, NULL),
(98, 'Ritchie LLC', 'magni', 'Assumenda ad deserunt facere et quae.', NULL, NULL),
(99, 'Ward, Pfannerstill and Hirthe', 'numquam', 'Velit mollitia laborum dolor sit alias e', NULL, NULL),
(100, 'Walker and Sons', 'aut', 'Id molestiae molestiae et fugit itaque.', NULL, NULL),
(101, 'added', 'prive', 'Broadcast News Analyst', '2024-04-18 09:04:12', '2024-04-18 09:04:12');

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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `prenom`, `telephone`, `fonction`, `id_client`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Lueilwitz', 'Kirk', '1-949-546-8414', 'Food Cooking Machine Operators', 1, 'sean.jones@example.org', NULL, NULL),
(2, 'Quitzon', 'Cyril', '(779) 626-0846', 'Food Servers', 2, 'ugerlach@example.net', NULL, NULL),
(4, 'Reilly', 'Hilbert', '(973) 555-3964', 'Surveying and Mapping Technician', 4, 'rmante@example.com', NULL, NULL),
(5, 'Emmerich', 'Elissa', '(520) 279-2327', 'Photographic Developer', 5, 'creola89@example.org', NULL, NULL),
(6, 'Frami', 'Hadley', '743.824.3152', 'Heat Treating Equipment Operator', 6, 'leuschke.daisy@example.net', NULL, NULL),
(7, 'Witting', 'Laurine', '+1-720-863-4415', 'Extruding Machine Operator', 7, 'mayert.lauriane@example.net', NULL, NULL),
(8, 'DuBuque', 'Paolo', '+1 (678) 714-1480', 'Naval Architects', 8, 'rebeka18@example.net', NULL, NULL),
(9, 'Cronin', 'Keira', '+1.520.641.8048', 'Refractory Materials Repairer', 9, 'chelsie28@example.org', NULL, NULL),
(10, 'Heller', 'Shany', '445-444-0454', 'Drilling and Boring Machine Tool Setter', 10, 'lynch.madilyn@example.net', NULL, NULL),
(11, 'Feest', 'Malachi', '+1-424-398-5657', 'Shoe and Leather Repairer', 11, 'marielle48@example.com', NULL, NULL),
(12, 'Kessler', 'Meaghan', '+1-435-727-8328', 'Engine Assembler', 12, 'herzog.marc@example.org', NULL, NULL),
(13, 'Moen', 'Stewart', '+1.270.920.4721', 'Electrical and Electronic Inspector and Tester', 13, 'scronin@example.com', NULL, NULL),
(14, 'Blick', 'Lacey', '(845) 378-8888', 'Potter', 14, 'gislason.evelyn@example.net', NULL, NULL),
(15, 'Rippin', 'Jan', '681.901.5783', 'Logging Worker', 15, 'catherine.pacocha@example.net', NULL, NULL),
(16, 'Fahey', 'Deven', '+1.520.302.7626', 'Motor Vehicle Operator', 16, 'rau.domenica@example.org', NULL, NULL),
(17, 'Jacobs', 'Hallie', '1-361-614-9020', 'Clinical School Psychologist', 17, 'flockman@example.org', NULL, NULL),
(18, 'Langosh', 'Carlie', '+1-509-399-9966', 'Transportation Equipment Painters', 18, 'laurel.rohan@example.net', NULL, NULL),
(19, 'Green', 'Garrison', '+1.603.410.2608', 'Production Laborer', 19, 'ottis.tromp@example.com', NULL, NULL),
(20, 'Reichert', 'Hulda', '1-520-325-5431', 'Electrical Power-Line Installer', 20, 'meagan.breitenberg@example.com', NULL, NULL),
(21, 'Stark', 'Madeline', '614.443.4153', 'Alteration Tailor', 21, 'fatima.yundt@example.org', NULL, NULL),
(22, 'Gottlieb', 'Katharina', '754.389.0167', 'Bookkeeper', 22, 'eladio.wilderman@example.com', NULL, NULL),
(23, 'Treutel', 'Edwina', '(743) 830-5838', 'Fire Investigator', 23, 'senger.gordon@example.net', NULL, NULL),
(24, 'Bergnaum', 'Augustine', '1-401-416-4957', 'General Manager', 24, 'dickens.dedric@example.net', NULL, NULL),
(25, 'Bradtke', 'Lambert', '+14257793515', 'Radiologic Technologist', 25, 'skuphal@example.net', NULL, NULL),
(26, 'Becker', 'Nathaniel', '+1-623-956-5479', 'Aircraft Engine Specialist', 26, 'mueller.emerald@example.org', NULL, NULL),
(27, 'Terry', 'Janessa', '+1 (307) 364-2225', 'Printing Press Machine Operator', 27, 'clinton68@example.com', NULL, NULL),
(28, 'Olson', 'Halie', '(218) 308-8882', 'Engraver', 28, 'sipes.mazie@example.org', NULL, NULL),
(29, 'Davis', 'Dane', '+16018648311', 'Nuclear Power Reactor Operator', 29, 'maurice52@example.org', NULL, NULL),
(30, 'Carter', 'Emely', '+1-707-553-6434', 'Shipping and Receiving Clerk', 30, 'ogutmann@example.net', NULL, NULL),
(31, 'Parker', 'Obie', '+17269913605', 'Art Director', 31, 'gstreich@example.com', NULL, NULL),
(32, 'Bode', 'Ryan', '870.824.7730', 'Mechanical Door Repairer', 32, 'kling.gillian@example.org', NULL, NULL),
(33, 'Bauch', 'Emie', '989.467.8716', 'Life Science Technician', 33, 'beth86@example.org', NULL, NULL),
(34, 'Sanford', 'Carlotta', '1-769-976-1644', 'Automotive Specialty Technician', 34, 'laney.witting@example.org', NULL, NULL),
(35, 'Johns', 'Leonie', '847-272-8365', 'File Clerk', 35, 'casper.marc@example.org', NULL, NULL),
(36, 'Schinner', 'Christian', '+1-267-653-5292', 'Health Services Manager', 36, 'mohammad28@example.net', NULL, NULL),
(37, 'Torphy', 'Winnifred', '+1.954.930.4867', 'Parts Salesperson', 37, 'waelchi.dale@example.net', NULL, NULL),
(38, 'McClure', 'Norval', '+1-928-349-6708', 'Ship Captain', 38, 'susan91@example.net', NULL, NULL),
(39, 'Lebsack', 'Elsie', '1-248-419-1714', 'Animal Control Worker', 39, 'deckow.birdie@example.com', NULL, NULL),
(40, 'Howe', 'Madeline', '+1-925-659-6402', 'Pump Operators', 40, 'ahilpert@example.com', NULL, NULL),
(41, 'Brakus', 'Eudora', '+1.424.951.2835', 'Product Management Leader', 41, 'orosenbaum@example.org', NULL, NULL),
(42, 'Little', 'Alda', '1-870-420-3351', 'Platemaker', 42, 'gabrielle.dietrich@example.net', NULL, NULL),
(43, 'Ankunding', 'Twila', '+1 (628) 994-4327', 'Supervisor of Police', 43, 'brice.moore@example.org', NULL, NULL),
(44, 'Franecki', 'Angela', '(831) 570-9486', 'Education Administrator', 44, 'kmayer@example.org', NULL, NULL),
(45, 'Graham', 'Napoleon', '503.755.6578', 'Computer Science Teacher', 45, 'eve97@example.net', NULL, NULL),
(46, 'Cummings', 'Garrett', '+1.479.692.1328', 'Environmental Scientist', 46, 'aoreilly@example.com', NULL, NULL),
(47, 'Schiller', 'Lenore', '412-475-7542', 'Plant Scientist', 47, 'lindgren.floyd@example.org', NULL, NULL),
(48, 'Considine', 'Abigayle', '458-352-5274', 'Political Scientist', 48, 'rosetta.weimann@example.net', NULL, NULL),
(49, 'Lind', 'Trever', '+1-515-438-6779', 'Precious Stone Worker', 49, 'casper.zachery@example.net', NULL, NULL),
(50, 'Gaylord', 'Dale', '+16297243117', 'Crushing Grinding Machine Operator', 50, 'nellie.kohler@example.net', NULL, NULL),
(51, 'Schmeler', 'Fausto', '(984) 514-4793', 'Shipping and Receiving Clerk', 51, 'walker.barrows@example.com', NULL, NULL),
(52, 'Nienow', 'Amparo', '757-540-9165', 'Patternmaker', 52, 'joesph.little@example.org', NULL, NULL),
(53, 'McKenzie', 'Ottilie', '(220) 851-8979', 'Insulation Installer', 53, 'dlakin@example.com', NULL, NULL),
(54, 'Nicolas', 'Elias', '+1-918-249-9141', 'Job Printer', 54, 'fermin.cole@example.com', NULL, NULL),
(55, 'Fahey', 'Aletha', '(603) 322-1973', 'Packer and Packager', 55, 'larry.gutkowski@example.net', NULL, NULL),
(56, 'Bergnaum', 'Theresia', '+17377983819', 'Credit Authorizer', 56, 'frankie22@example.com', NULL, NULL),
(57, 'Ritchie', 'Zakary', '+13235258085', 'Cartoonist', 57, 'xbarton@example.net', NULL, NULL),
(58, 'Emard', 'Conner', '1-567-844-9379', 'Air Crew Officer', 58, 'shanny.goyette@example.com', NULL, NULL),
(59, 'Bayer', 'Savion', '+1.952.523.1108', 'Child Care Worker', 59, 'hryan@example.org', NULL, NULL),
(60, 'Purdy', 'Stanton', '+1 (251) 853-6488', 'Telephone Operator', 60, 'nicolette23@example.com', NULL, NULL),
(61, 'Schowalter', 'Nyah', '+1-830-533-7979', 'Precision Pattern and Die Caster', 61, 'brycen.bernhard@example.net', NULL, NULL),
(62, 'Herman', 'Skylar', '+15402948310', 'Carpenter', 62, 'reinger.heidi@example.com', NULL, NULL),
(63, 'Corkery', 'Heather', '+1.602.675.3842', 'Boilermaker', 63, 'fsimonis@example.net', NULL, NULL),
(64, 'Quigley', 'Vella', '770.494.0924', 'Chiropractor', 64, 'grant.coty@example.org', NULL, NULL),
(65, 'Lehner', 'Emilie', '+1-361-862-0728', 'Healthcare Support Worker', 65, 'eladio.vonrueden@example.com', NULL, NULL),
(66, 'Veum', 'Dangelo', '228.507.8359', 'Photographic Process Worker', 66, 'stiedemann.jewel@example.net', NULL, NULL),
(67, 'Kovacek', 'Quinn', '617.218.9861', 'Air Crew Officer', 67, 'tanya11@example.net', NULL, NULL),
(68, 'Lakin', 'Odessa', '302-513-6823', 'Railroad Conductors', 68, 'conner.gleason@example.net', NULL, NULL),
(69, 'Daniel', 'Alec', '+1-662-331-8747', 'Drywall Installer', 69, 'hane.vernice@example.net', NULL, NULL),
(70, 'Nolan', 'Lizzie', '+1.743.934.0506', 'Tour Guide', 70, 'jaclyn78@example.net', NULL, NULL),
(71, 'Boyle', 'Elroy', '(657) 917-0325', 'Sawing Machine Tool Setter', 71, 'isom.hansen@example.com', NULL, NULL),
(72, 'Pollich', 'Tobin', '334-227-0209', 'Postal Service Mail Carrier', 72, 'frankie66@example.com', NULL, NULL),
(73, 'Mohr', 'Israel', '530.446.9051', 'Rail Transportation Worker', 73, 'laurianne.williamson@example.com', NULL, NULL),
(74, 'O\'Hara', 'Emery', '458-673-9018', 'Freight Inspector', 74, 'jared67@example.com', NULL, NULL),
(75, 'Hayes', 'Genesis', '+1.567.797.7347', 'Psychology Teacher', 75, 'quincy.paucek@example.net', NULL, NULL),
(76, 'Homenick', 'Nella', '283-264-3590', 'Painter', 76, 'brad.klein@example.net', NULL, NULL),
(77, 'Bernier', 'Melyna', '+12837411304', 'Pipelayer', 77, 'murray.harvey@example.net', NULL, NULL),
(78, 'Marvin', 'Carleton', '+1 (253) 567-3765', 'Credit Checkers Clerk', 78, 'wbarton@example.net', NULL, NULL),
(79, 'Auer', 'Heather', '+1 (458) 450-4691', 'Anthropologist OR Archeologist', 79, 'isaias.langworth@example.org', NULL, NULL),
(80, 'Sipes', 'Marguerite', '+1.267.277.3770', 'Power Plant Operator', 80, 'maggie80@example.net', NULL, NULL),
(81, 'Deckow', 'Alva', '+1.321.313.1788', 'Casting Machine Operator', 81, 'ethiel@example.net', NULL, NULL),
(82, 'Gleichner', 'Suzanne', '980-793-5655', 'Gaming Surveillance Officer', 82, 'destiney.hammes@example.net', NULL, NULL),
(83, 'VonRueden', 'Adolfo', '1-720-361-6048', 'Drywall Installer', 83, 'veum.cooper@example.org', NULL, NULL),
(84, 'Block', 'Adeline', '(346) 410-1073', 'Communication Equipment Worker', 84, 'dubuque.michael@example.com', NULL, NULL),
(85, 'Labadie', 'Audrey', '+1-310-793-9172', 'Automotive Mechanic', 85, 'kdubuque@example.org', NULL, NULL),
(86, 'Hintz', 'Sylvia', '+1.442.809.0599', 'Nursing Instructor', 86, 'dortha37@example.net', NULL, NULL),
(87, 'Ward', 'Cary', '(417) 915-9177', 'Government Property Inspector', 87, 'darion81@example.org', NULL, NULL),
(88, 'Osinski', 'Murl', '1-252-949-7113', 'Electrical and Electronic Inspector and Tester', 88, 'quigley.earline@example.net', NULL, NULL),
(89, 'Cummerata', 'Una', '564-322-0139', 'Business Teacher', 89, 'moen.madyson@example.net', NULL, NULL),
(90, 'Smith', 'Juvenal', '985-525-7420', 'Interaction Designer', 90, 'loyal.stiedemann@example.com', NULL, NULL),
(91, 'Marvin', 'Salvatore', '+1-239-998-7621', 'Captain', 91, 'lsawayn@example.net', NULL, NULL),
(92, 'Jacobson', 'Kennedy', '(614) 799-0189', 'Makeup Artists', 92, 'qmcdermott@example.com', NULL, NULL),
(93, 'Jacobs', 'Royce', '+1-534-543-2620', 'Dishwasher', 93, 'waelchi.francisca@example.com', NULL, NULL),
(94, 'Pfannerstill', 'Beulah', '956-638-9914', 'Anthropologist', 94, 'nat53@example.net', NULL, NULL),
(95, 'Pollich', 'Ewell', '(934) 548-1566', 'Skin Care Specialist', 95, 'aliya.gutkowski@example.com', NULL, NULL),
(96, 'Crooks', 'Casimer', '(210) 904-9967', 'Professional Photographer', 96, 'sipes.stacey@example.org', NULL, NULL),
(97, 'Bernhard', 'Helga', '872-987-8789', 'Nutritionist', 97, 'clovis03@example.org', NULL, NULL),
(98, 'Muller', 'Malachi', '870.712.6212', 'Transformer Repairer', 98, 'mohr.layne@example.com', NULL, NULL),
(99, 'Littel', 'Jalon', '380-613-3432', 'Automotive Specialty Technician', 99, 'strosin.tomasa@example.org', NULL, NULL),
(100, 'Rempel', 'Julia', '986-621-9338', 'Correctional Officer', 100, 'hollis.bode@example.org', NULL, NULL);

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
(12, '2024_04_06_013128_create_contacts_table', 6),
(13, '2024_04_11_171718_create_table_povs', 7),
(14, '2024_04_18_113912_add_unique_constraint_to_povs_table', 8);

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
-- Table structure for table `povs`
--

CREATE TABLE `povs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_appliance` bigint(20) UNSIGNED NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `compteManager` varchar(255) NOT NULL,
  `ingenieurCybersecurity` varchar(255) NOT NULL,
  `analyseCybersecurity` varchar(255) NOT NULL,
  `libelle_pov` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `povs`
--

INSERT INTO `povs` (`id`, `id_appliance`, `id_client`, `dateDebut`, `dateFin`, `description`, `compteManager`, `ingenieurCybersecurity`, `analyseCybersecurity`, `libelle_pov`, `created_at`, `updated_at`) VALUES
(1, 1, 19, '2024-04-11', '2024-04-24', 'Sample descriptio', 'Sample mnager 1', 'Sampe cybersecurity engineer 1', 'Sample cybersecurity# analysis 1', 'Sample n', '2024-04-11 17:40:02', '2024-04-17 13:06:13'),
(3, 36, 8, '2024-04-11', '2024-05-09', 'Sample description 3', 'Sample manager 3', 'Sample cybersecurity engineer 3', 'Sample cybersecurity analysis 3', 'Sample POV 3', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(4, 32, 4, '2024-04-11', '2024-04-27', 'Sample description 4', 'Sample manager 4', 'Sample cybersecurity engineer 4', 'Sample cybersecurity analysis 4', 'Sample POV 4', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(5, 40, 37, '2024-04-11', '2024-04-27', 'Sample description 5', 'Sample manager 5', 'Sample cybersecurity engineer 5', 'Sample cybersecurity analysis 5', 'Sample POV 5', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(6, 46, 13, '2024-04-11', '2024-05-05', 'Sample description 6', 'Sample manager 6', 'Sample cybersecurity engineer 6', 'Sample cybersecurity analysis 6', 'Sample POV 6', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(7, 22, 48, '2024-04-11', '2024-05-06', 'Sample description 7', 'Sample manager 7', 'Sample cybersecurity engineer 7', 'Sample cybersecurity analysis 7', 'Sample POV 7', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(8, 41, 7, '2024-04-11', '2024-05-10', 'Sample description 8', 'Sample manager 8', 'Sample cybersecurity engineer 8', 'Sample cybersecurity analysis 8', 'Sample POV 8', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(9, 48, 32, '2024-04-11', '2024-04-30', 'Sample description 9', 'Sample manager 9', 'Sample cybersecurity engineer 9', 'Sample cybersecurity analysis 9', 'Sample POV 9', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(10, 49, 36, '2024-04-11', '2024-05-04', 'Sample description 10', 'Sample manager 10', 'Sample cybersecurity engineer 10', 'Sample cybersecurity analysis 10', 'Sample POV 10', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(11, 12, 17, '2024-04-11', '2024-04-21', 'Sample description 11', 'Sample manager 11', 'Sample cybersecurity engineer 11', 'Sample cybersecurity analysis 11', 'Sample POV 11', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(12, 3, 48, '2024-04-11', '2024-04-24', 'Sample description 12', 'Sample manager 12', 'Sample cybersecurity engineer 12', 'Sample cybersecurity analysis 12', 'Sample POV 12', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(13, 27, 42, '2024-04-11', '2024-04-26', 'Sample description 13', 'Sample manager 13', 'Sample cybersecurity engineer 13', 'Sample cybersecurity analysis 13', 'Sample POV 13', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(15, 18, 12, '2024-04-11', '2024-04-26', 'Sample description 15', 'Sample manager 15', 'Sample cybersecurity engineer 15', 'Sample cybersecurity analysis 15', 'Sample POV 15', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(16, 43, 24, '2024-04-11', '2024-05-10', 'Sample description 16', 'Sample manager 16', 'Sample cybersecurity engineer 16', 'Sample cybersecurity analysis 16', 'Sample POV 16', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(17, 34, 47, '2024-04-11', '2024-04-28', 'Sample description 17', 'Sample manager 17', 'Sample cybersecurity engineer 17', 'Sample cybersecurity analysis 17', 'Sample POV 17', '2024-04-11 17:40:02', '2024-04-11 17:40:02'),
(22, 7, 13, '2024-04-11', '2024-05-04', 'Sample description 4', 'Sample manager 4', 'Sample cybersecurity engineer 4', 'Sample cybersecurity analysis 4', 'Sample POV 4', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(23, 5, 13, '2024-04-11', '2024-05-07', 'Sample description 5', 'Sample manager 5', 'Sample cybersecurity engineer 5', 'Sample cybersecurity analysis 5', 'Sample POV 5', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(26, 31, 32, '2024-04-11', '2024-05-08', 'Sample description 8', 'Sample manager 8', 'Sample cybersecurity engineer 8', 'Sample cybersecurity analysis 8', 'Sample POV 8', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(27, 13, 1, '2024-04-11', '2024-04-18', 'Sample description 9', 'Sample manager 9', 'Sample cybersecurity engineer 9', 'Sample cybersecurity analysis 9', 'Sample POV 9', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(29, 16, 23, '2024-04-11', '2024-04-26', 'Sample description 11', 'Sample manager 11', 'Sample cybersecurity engineer 11', 'Sample cybersecurity analysis 11', 'Sample POV 11', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(35, 6, 13, '2024-04-11', '2024-04-23', 'Sample description 17', 'Sample manager 17', 'Sample cybersecurity engineer 17', 'Sample cybersecurity analysis 17', 'Sample POV 17', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(38, 19, 6, '2024-04-11', '2024-05-10', 'Sample description 20', 'Sample manager 20', 'Sample cybersecurity engineer 20', 'Sample cybersecurity analysis 20', 'Sample POV 20', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(40, 44, 13, '2024-04-11', '2024-05-03', 'Sample description 22', 'Sample manager 22', 'Sample cybersecurity engineer 22', 'Sample cybersecurity analysis 22', 'Sample POV 22', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(42, 15, 48, '2024-04-11', '2024-05-02', 'Sample description 24', 'Sample manager 24', 'Sample cybersecurity engineer 24', 'Sample cybersecurity analysis 24', 'Sample POV 24', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(43, 35, 34, '2024-04-11', '2024-04-13', 'Sample description 25', 'Sample manager 25', 'Sample cybersecurity engineer 25', 'Sample cybersecurity analysis 25', 'Sample POV 25', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(45, 26, 42, '2024-04-11', '2024-04-29', 'Sample description 27', 'Sample manager 27', 'Sample cybersecurity engineer 27', 'Sample cybersecurity analysis 27', 'Sample POV 27', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(46, 9, 25, '2024-04-11', '2024-05-10', 'Sample description 28', 'Sample manager 28', 'Sample cybersecurity engineer 28', 'Sample cybersecurity analysis 28', 'Sample POV 28', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(50, 10, 14, '2024-04-11', '2024-04-20', 'Sample description 32', 'Sample manager 32', 'Sample cybersecurity engineer 32', 'Sample cybersecurity analysis 32', 'Sample POV 32', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(52, 24, 34, '2024-04-11', '2024-05-02', 'Sample description 34', 'Sample manager 34', 'Sample cybersecurity engineer 34', 'Sample cybersecurity analysis 34', 'Sample POV 34', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(55, 4, 21, '2024-04-11', '2024-05-04', 'Sample description 37', 'Sample manager 37', 'Sample cybersecurity engineer 37', 'Sample cybersecurity analysis 37', 'Sample POV 37', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(61, 17, 8, '2024-04-11', '2024-04-27', 'Sample description 43', 'Sample manager 43', 'Sample cybersecurity engineer 43', 'Sample cybersecurity analysis 43', 'Sample POV 43', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(62, 47, 26, '2024-04-11', '2024-04-23', 'Sample description 44', 'Sample manager 44', 'Sample cybersecurity engineer 44', 'Sample cybersecurity analysis 44', 'Sample POV 44', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(64, 38, 6, '2024-04-11', '2024-05-03', 'Sample description 46', 'Sample manager 46', 'Sample cybersecurity engineer 46', 'Sample cybersecurity analysis 46', 'Sample POV 46', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(68, 50, 2, '2024-04-11', '2024-04-26', 'Sample description 50', 'Sample manager 50', 'Sample cybersecurity engineer 50', 'Sample cybersecurity analysis 50', 'Sample POV 50', '2024-04-11 17:41:05', '2024-04-11 17:41:05'),
(71, 39, 33, '2024-04-11', '2024-04-23', 'Sample description 3', 'Sample manager 3', 'Sample cybersecurity engineer 3', 'Sample cybersecurity analysis 3', 'Sample POV 3', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(73, 28, 26, '2024-04-11', '2024-05-11', 'Sample description 5', 'Sample manager 5', 'Sample cybersecurity engineer 5', 'Sample cybersecurity analysis 5', 'Sample POV 5', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(74, 45, 25, '2024-04-11', '2024-04-24', 'Sample description 6', 'Sample manager 6', 'Sample cybersecurity engineer 6', 'Sample cybersecurity analysis 6', 'Sample POV 6', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(76, 8, 48, '2024-04-11', '2024-04-13', 'Sample description 8', 'Sample manager 8', 'Sample cybersecurity engineer 8', 'Sample cybersecurity analysis 8', 'Sample POV 8', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(77, 42, 6, '2024-04-11', '2024-04-18', 'Sample description 9', 'Sample manager 9', 'Sample cybersecurity engineer 9', 'Sample cybersecurity analysis 9', 'Sample POV 9', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(81, 21, 27, '2024-04-11', '2024-05-04', 'Sample description 13', 'Sample manager 13', 'Sample cybersecurity engineer 13', 'Sample cybersecurity analysis 13', 'Sample POV 13', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(82, 25, 49, '2024-04-11', '2024-04-30', 'Sample description 14', 'Sample manager 14', 'Sample cybersecurity engineer 14', 'Sample cybersecurity analysis 14', 'Sample POV 14', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(84, 29, 50, '2024-04-11', '2024-04-18', 'Sample description 16', 'Sample manager 16', 'Sample cybersecurity engineer 16', 'Sample cybersecurity analysis 16', 'Sample POV 16', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(87, 30, 28, '2024-04-11', '2024-04-21', 'Sample description 19', 'Sample manager 19', 'Sample cybersecurity engineer 19', 'Sample cybersecurity analysis 19', 'Sample POV 19', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(91, 37, 31, '2024-04-11', '2024-05-01', 'Sample description 23', 'Sample manager 23', 'Sample cybersecurity engineer 23', 'Sample cybersecurity analysis 23', 'Sample POV 23', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(95, 23, 19, '2024-04-11', '2024-04-23', 'Sample description 27', 'Sample manager 27', 'Sample cybersecurity engineer 27', 'Sample cybersecurity analysis 27', 'Sample POV 27', '2024-04-11 17:42:48', '2024-04-11 17:42:48'),
(111, 11, 19, '2024-04-11', '2024-04-21', 'Sample description 43', 'Sample manager 43', 'Sample cybersecurity engineer 43', 'Sample cybersecurity analysis 43', 'Sample POV 43', '2024-04-11 17:42:48', '2024-04-11 17:42:48');

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
-- Indexes for table `povs`
--
ALTER TABLE `povs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `povs_id_appliance_unique` (`id_appliance`),
  ADD KEY `povs_id_client_foreign` (`id_client`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `povs`
--
ALTER TABLE `povs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

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

--
-- Constraints for table `povs`
--
ALTER TABLE `povs`
  ADD CONSTRAINT `povs_id_appliance_foreign` FOREIGN KEY (`id_appliance`) REFERENCES `appliance` (`id`),
  ADD CONSTRAINT `povs_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
