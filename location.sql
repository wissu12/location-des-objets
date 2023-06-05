-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 avr. 2023 à 05:22
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `location`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_partenaire` bigint(20) UNSIGNED NOT NULL,
  `id_objet` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `titre`, `description`, `prix`, `ville`, `status`, `id_partenaire`, `id_objet`, `created_at`, `updated_at`) VALUES
(37, 'console de jeux', 'console de jeux Description', 120, 'tangier', 'enligne', 7, 59, '2023-04-26 23:54:44', '2023-04-27 00:40:28'),
(38, 'Voiture', 'Voiture Description', 555, 'marrakech', 'enligne', 6, 55, '2023-04-26 23:59:03', '2023-04-27 00:38:12'),
(39, 'Pc', 'Pc Description', 124, 'tetouan', 'enligne', 6, 57, '2023-04-27 00:01:06', '2023-04-27 00:39:13'),
(40, 'canapé', 'canapé Description', 540, 'casablanca', 'enligne', 8, 60, '2023-04-27 01:04:13', '2023-04-27 01:04:13'),
(41, 'Table', 'Table Description', 388, 'rabat', 'enligne', 8, 61, '2023-04-27 01:07:54', '2023-04-27 01:07:54'),
(42, 'tapis Titre', 'tapis Description', 135, 'agadir', 'enligne', 8, 62, '2023-04-27 01:12:22', '2023-04-27 01:12:22'),
(44, 'piano', 'piano Description', 354, 'marrakech', 'horsligne', 8, 63, '2023-04-27 02:11:03', '2023-04-27 02:13:15');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`, `created_at`, `updated_at`) VALUES
(1, 'Vêtements', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(2, 'Électronique', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(3, 'Maison et jardin', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(4, 'Livres et papeterie', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(5, 'Art et artisanat', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(6, 'Musique et instruments', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(7, 'Sports et loisirs', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(8, 'Technologie et gadgets', '2023-04-04 14:11:24', '2023-04-04 14:11:24'),
(9, 'Véhicules', '2023-04-04 14:11:24', '2023-04-04 14:11:24');

-- --------------------------------------------------------

--
-- Structure de la table `disponibilites`
--

CREATE TABLE `disponibilites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `jour_semaine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_jour` int(11) NOT NULL,
  `id_annonce` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disponibilites`
--

INSERT INTO `disponibilites` (`id`, `date_debut`, `date_fin`, `jour_semaine`, `min_jour`, `id_annonce`, `created_at`, `updated_at`) VALUES
(51, '2023-04-01', '2023-04-30', 'Lundi,Mardi,Mercredi,Jeudi', 2, 37, '2023-04-26 23:54:44', '2023-04-26 23:54:44'),
(52, '2023-04-01', '2023-04-30', 'Mercredi,Jeudi,Vendredi,Samedi,Dimanche', 7, 38, '2023-04-26 23:59:03', '2023-04-27 00:13:09'),
(53, '2023-04-01', '2023-04-24', 'Lundi,Mardi,Mercredi,Jeudi', 2, 39, '2023-04-27 00:01:06', '2023-04-27 00:01:06'),
(54, '2023-04-01', '2023-04-19', 'Lundi,Mardi', 2, 40, '2023-04-27 01:04:13', '2023-04-27 01:04:13'),
(55, '2023-04-01', '2023-04-26', 'Lundi,Mercredi,Samedi,Dimanche', 3, 41, '2023-04-27 01:07:54', '2023-04-27 01:07:54'),
(56, '2023-04-08', '2023-04-24', NULL, 2, 42, '2023-04-27 01:12:22', '2023-04-27 01:12:22'),
(58, '2023-04-01', '2023-04-10', 'Lundi,Mardi', 2, 44, '2023-04-27 02:11:03', '2023-04-27 02:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_annonce` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `image`, `id_annonce`, `created_at`, `updated_at`) VALUES
(99, '1682556884_6449c7d427be9.jpg', 37, '2023-04-26 23:54:44', '2023-04-26 23:54:44'),
(100, '1682556884_6449c7d42b83d.jpg', 37, '2023-04-26 23:54:44', '2023-04-26 23:54:44'),
(101, '1682556884_6449c7d42c6f3.png', 37, '2023-04-26 23:54:44', '2023-04-26 23:54:44'),
(102, '1682557143_6449c8d75f8c7.jpeg', 38, '2023-04-26 23:59:03', '2023-04-26 23:59:03'),
(103, '1682557143_6449c8d763053.jpeg', 38, '2023-04-26 23:59:03', '2023-04-26 23:59:03'),
(104, '1682557143_6449c8d7644be.jpg', 38, '2023-04-26 23:59:03', '2023-04-26 23:59:03'),
(105, '1682557266_6449c95228a5f.jpeg', 39, '2023-04-27 00:01:06', '2023-04-27 00:01:06'),
(106, '1682557266_6449c9522d7d8.jpg', 39, '2023-04-27 00:01:06', '2023-04-27 00:01:06'),
(107, '1682557266_6449c9522ebed.jpg', 39, '2023-04-27 00:01:06', '2023-04-27 00:01:06'),
(108, '1682561053_6449d81dacb72.jpg', 40, '2023-04-27 01:04:13', '2023-04-27 01:04:13'),
(109, '1682561053_6449d81db0da2.jpg', 40, '2023-04-27 01:04:13', '2023-04-27 01:04:13'),
(110, '1682561053_6449d81db1e45.png', 40, '2023-04-27 01:04:13', '2023-04-27 01:04:13'),
(111, '1682561274_6449d8fa1f449.jpg', 41, '2023-04-27 01:07:54', '2023-04-27 01:07:54'),
(112, '1682561274_6449d8fa26ac8.jpg', 41, '2023-04-27 01:07:54', '2023-04-27 01:07:54'),
(113, '1682561274_6449d8fa27bc6.jpg', 41, '2023-04-27 01:07:54', '2023-04-27 01:07:54'),
(114, '1682561542_6449da0626853.jpg', 42, '2023-04-27 01:12:22', '2023-04-27 01:12:22'),
(115, '1682561542_6449da062c55e.jpg', 42, '2023-04-27 01:12:22', '2023-04-27 01:12:22'),
(116, '1682561542_6449da062e7e8.jpg', 42, '2023-04-27 01:12:22', '2023-04-27 01:12:22'),
(122, '1682565063_6449e7c7536e5.png', 44, '2023-04-27 02:11:03', '2023-04-27 02:11:03'),
(123, '1682565063_6449e7c75a0af.png', 44, '2023-04-27 02:11:03', '2023-04-27 02:11:03'),
(124, '1682565063_6449e7c75b051.jpg', 44, '2023-04-27 02:11:03', '2023-04-27 02:11:03');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_02_151807_create_categories_table', 2),
(6, '2023_04_02_151844_create_objets_table', 3),
(7, '2023_04_02_151754_create_reservations_table', 4),
(8, '2023_04_02_151903_create_disponibilites_table', 5),
(9, '2023_04_02_151921_create_reviews_table', 6),
(10, '2023_04_02_151937_create_admins_table', 7),
(11, '2023_04_02_193730_create_images_table', 8),
(12, '2014_10_12_200000_add_two_factor_columns_to_users_table', 9);

-- --------------------------------------------------------

--
-- Structure de la table `objets`
--

CREATE TABLE `objets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_objet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categorie` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `etat_c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`id`, `nom_objet`, `id_categorie`, `created_at`, `updated_at`, `partner_id`, `etat_c`) VALUES
(55, 'voiture', 9, '2023-04-26 19:40:42', '2023-04-26 19:40:42', 6, 'Neuf/Nouveau'),
(56, 'moto', 9, '2023-04-26 19:42:42', '2023-04-26 19:43:17', 6, 'Neuf/Nouveau'),
(57, 'Pc', 2, '2023-04-26 19:43:45', '2023-04-26 19:43:45', 6, 'Neuf/Nouveau'),
(58, 'Piano', 6, '2023-04-26 19:44:21', '2023-04-26 19:44:21', 6, 'Neuf/Nouveau'),
(59, 'console de jeux', 2, '2023-04-26 23:49:23', '2023-04-26 23:49:23', 7, 'Neuf/Nouveau'),
(60, 'Canapé', 3, '2023-04-27 00:54:41', '2023-04-27 00:54:41', 8, 'Neuf/Nouveau'),
(61, 'Table', 3, '2023-04-27 00:55:07', '2023-04-27 00:55:07', 8, 'Neuf/Nouveau'),
(62, 'Tapis', 3, '2023-04-27 00:55:35', '2023-04-27 00:55:35', 8, 'Neuf/Nouveau'),
(63, 'piano', 6, '2023-04-27 02:10:01', '2023-04-27 02:10:01', 8, 'Neuf/Nouveau');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `jour_semaine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `id_annonce` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_partenaire` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `review_client` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `date_debut`, `date_fin`, `jour_semaine`, `status`, `id_client`, `id_annonce`, `created_at`, `updated_at`, `review_partenaire`, `review_client`) VALUES
(22, '2023-04-01', '2023-04-05', 'Lundi,Mardi,Mercredi', 'accepte', 6, 37, '2023-04-27 00:32:31', '2023-04-27 00:45:57', 'no', 'no'),
(23, '2023-04-08', '2023-04-18', '', 'accepte', 9, 42, '2023-04-27 01:15:52', '2023-04-27 01:17:52', 'no', 'no'),
(24, '2023-04-05', '2023-04-10', 'Lundi,Mardi', 'attente', 9, 40, '2023-04-27 01:16:30', '2023-04-27 01:20:14', 'no', 'no'),
(25, '2023-04-01', '2023-04-10', 'Lundi,Mardi,Mercredi,Jeudi', 'attente', 9, 37, '2023-04-27 01:37:12', '2023-04-27 01:37:12', 'no', 'no'),
(27, '2023-04-06', '2023-04-11', 'Lundi', 'attente', 8, 37, '2023-04-27 01:41:02', '2023-04-27 01:41:02', 'no', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note_client_partenaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commantaire_client_partenaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_client_objet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commantaire_client_objet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_partenaire_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commantaire_partenaire_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_client` bigint(20) UNSIGNED NOT NULL,
  `id_partenaire` bigint(20) UNSIGNED NOT NULL,
  `id_reservation` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `note_client_partenaire`, `commantaire_client_partenaire`, `note_client_objet`, `commantaire_client_objet`, `note_partenaire_client`, `commantaire_partenaire_client`, `id_client`, `id_partenaire`, `id_reservation`, `created_at`, `updated_at`, `display`) VALUES
(6, '5', 'good partenaire', '4', 'very good objet', '4', 'good client', 6, 7, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yes'),
(7, '5', 'good partenaire', '5', 'very nice objet', '5', 'good client', 9, 7, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yes'),
(11, '5', 'good partenaire', '2', 'not bad', '2', 'good client', 8, 7, 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `tel`, `adresse`, `ville`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `profile`, `isAdmin`) VALUES
(6, 'elouafy', 'wissal', 'wissal.elouafy@etu.uae.ac.ma', '$2y$10$IzqlcAfyYTZdE4m0KVB4e.X/C76M.gNJ42QWLrqvnTS73HpkwlA5u', NULL, NULL, NULL, '56456454654654', 'tetouan', 'tetouan', NULL, NULL, '2023-04-26 19:09:49', '2023-04-26 19:11:33', 'images/profile/1682539893.jpeg', 0),
(7, 'zaidi', 'mouad', 'mouad.zaidi@etu.uae.ac.ma', '$2y$10$lYnB5V6ny6Wnb8wn0377puyQ2Wn4tmIYWG15J5qwHYGcPrSQ0s386', NULL, NULL, NULL, '4545446523232', 'tetouan', 'tetouan', NULL, NULL, '2023-04-26 19:13:42', '2023-04-26 19:16:33', 'images/profile/1682540193.JPG', 0),
(8, 'abbah', 'ahmed', 'ahmed.abbah@etu.uae.ac.ma', '$2y$10$ny9kMQ1PNz54RDQOc/F9lehsjkokgF0wG5E518xPTiudhE272bEoS', NULL, NULL, NULL, '54654654546', 'casa', 'casa', NULL, NULL, '2023-04-26 19:18:11', '2023-04-26 19:19:35', 'images/profile/1682540375.jpeg', 0),
(9, 'elamri', 'hajar', 'hajar.elamri@etu.uae.ac.ma', '$2y$10$v6v45h99o3qG/0mzOYETdOaCueA.bkW1AfVklvsPCa9pAY./jXiG6', NULL, NULL, NULL, '564564654564564', 'rabat', 'rabat', NULL, NULL, '2023-04-26 19:24:30', '2023-04-26 19:24:30', 'images/profile/default.jpg', 0),
(10, 'admin', 'admin', 'admin@admin.com', '$2y$10$WFQOPBsJkYdYVNZ4U7AhWutDkY2vrnZkQMgWmHAtiF3AZmKDtUziu', NULL, NULL, NULL, '65465465454', 'tetouan', 'tetouan', NULL, NULL, '2023-04-26 19:25:22', '2023-04-26 19:25:22', 'images/profile/default.jpg', 1),
(11, 'haouat', 'anas', 'anas.haouat@etu.uae.ac.ma', '$2y$10$1aGodtZgqEE6UcGDpGEBOOZNfRZ1zPp.QnAgtX6JWu52uIMpygJEG', NULL, NULL, NULL, '08970978098', 'casa', 'casa', NULL, NULL, '2023-04-27 01:59:33', '2023-04-27 01:59:33', 'images/profile/default.jpg', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonces_id_partenaire_foreign` (`id_partenaire`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `disponibilites`
--
ALTER TABLE `disponibilites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disponibilites_id_annonce_foreign` (`id_annonce`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_id_annonce_foreign` (`id_annonce`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objets_id_categorie_foreign` (`id_categorie`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_id_client_foreign` (`id_client`),
  ADD KEY `reservations_id_annonce_foreign` (`id_annonce`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_id_client_foreign` (`id_client`),
  ADD KEY `reviews_id_partenaire_foreign` (`id_partenaire`),
  ADD KEY `reviews_id_reservation_foreign` (`id_reservation`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `disponibilites`
--
ALTER TABLE `disponibilites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `objets`
--
ALTER TABLE `objets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD CONSTRAINT `annonces_id_partenaire_foreign` FOREIGN KEY (`id_partenaire`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `disponibilites`
--
ALTER TABLE `disponibilites`
  ADD CONSTRAINT `disponibilites_id_annonce_foreign` FOREIGN KEY (`id_annonce`) REFERENCES `annonces` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_id_annonce_foreign` FOREIGN KEY (`id_annonce`) REFERENCES `annonces` (`id`);

--
-- Contraintes pour la table `objets`
--
ALTER TABLE `objets`
  ADD CONSTRAINT `objets_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_id_annonce_foreign` FOREIGN KEY (`id_annonce`) REFERENCES `annonces` (`id`),
  ADD CONSTRAINT `reservations_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_id_client_foreign` FOREIGN KEY (`id_client`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_id_partenaire_foreign` FOREIGN KEY (`id_partenaire`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_id_reservation_foreign` FOREIGN KEY (`id_reservation`) REFERENCES `reservations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
