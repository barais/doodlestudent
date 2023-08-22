-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 22 août 2023 à 10:08
-- Version du serveur : 8.0.33-0ubuntu0.22.04.4
-- Version de PHP : 8.1.2-1ubuntu2.13


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tlc`
--
CREATE DATABASE IF NOT EXISTS `tlc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tlc`;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tlc`
--

-- --------------------------------------------------------

--
-- Structure de la table `Choice`
--

CREATE TABLE `Choice` (
  `id` bigint NOT NULL,
  `endDate` datetime(6) DEFAULT NULL,
  `startDate` datetime(6) DEFAULT NULL,
  `pollID` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Choice_SEQ`
--

CREATE TABLE `Choice_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Choice_SEQ`
--

INSERT INTO `Choice_SEQ` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `choice_user`
--

CREATE TABLE `choice_user` (
  `choice_id` bigint NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Comment`
--

CREATE TABLE `Comment` (
  `id` bigint NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pollID` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Comment_SEQ`
--

CREATE TABLE `Comment_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Comment_SEQ`
--

INSERT INTO `Comment_SEQ` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `MealPreference`
--

CREATE TABLE `MealPreference` (
  `id` bigint NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `pollID` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `MealPreference_SEQ`
--

CREATE TABLE `MealPreference_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `MealPreference_SEQ`
--

INSERT INTO `MealPreference_SEQ` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `Poll`
--

CREATE TABLE `Poll` (
  `id` bigint NOT NULL,
  `clos` bit(1) NOT NULL,
  `createdAt` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `has_meal` bit(1) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `padURL` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `slugAdmin` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tlkURL` varchar(255) DEFAULT NULL,
  `updatedAt` datetime(6) DEFAULT NULL,
  `selectedChoice_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Poll_SEQ`
--

CREATE TABLE `Poll_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Poll_SEQ`
--

INSERT INTO `Poll_SEQ` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `id` bigint NOT NULL,
  `icsurl` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `User_SEQ`
--

CREATE TABLE `User_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `User_SEQ`
--

INSERT INTO `User_SEQ` (`next_val`) VALUES
(1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Choice`
--
ALTER TABLE `Choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpptbydus718x0n5w5s1hmtvnp` (`pollID`);

--
-- Index pour la table `choice_user`
--
ALTER TABLE `choice_user`
  ADD KEY `FK74lqrm3h9f56d6ijnvjobl0wb` (`user_id`),
  ADD KEY `FKljka9n83yo9s4qpol3wplp1lw` (`choice_id`);

--
-- Index pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgw1unu5kgu9s7sdkqaoy0kyyh` (`pollID`);

--
-- Index pour la table `MealPreference`
--
ALTER TABLE `MealPreference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK61nykkil19yk0on84o44ykk3p` (`user_id`),
  ADD KEY `FK9pk3lx8mh8478nxj8lvxvaox0` (`pollID`);

--
-- Index pour la table `Poll`
--
ALTER TABLE `Poll`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_n779urxmh62kwbspgd6gp8564` (`selectedChoice_id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Choice`
--
ALTER TABLE `Choice`
  ADD CONSTRAINT `FKpptbydus718x0n5w5s1hmtvnp` FOREIGN KEY (`pollID`) REFERENCES `Poll` (`id`);

--
-- Contraintes pour la table `choice_user`
--
ALTER TABLE `choice_user`
  ADD CONSTRAINT `FK74lqrm3h9f56d6ijnvjobl0wb` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `FKljka9n83yo9s4qpol3wplp1lw` FOREIGN KEY (`choice_id`) REFERENCES `Choice` (`id`);

--
-- Contraintes pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `FKgw1unu5kgu9s7sdkqaoy0kyyh` FOREIGN KEY (`pollID`) REFERENCES `Poll` (`id`);

--
-- Contraintes pour la table `MealPreference`
--
ALTER TABLE `MealPreference`
  ADD CONSTRAINT `FK61nykkil19yk0on84o44ykk3p` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `FK9pk3lx8mh8478nxj8lvxvaox0` FOREIGN KEY (`pollID`) REFERENCES `Poll` (`id`);

--
-- Contraintes pour la table `Poll`
--
ALTER TABLE `Poll`
  ADD CONSTRAINT `FKfdictafwo8dwab5rjrjkmmxri` FOREIGN KEY (`selectedChoice_id`) REFERENCES `Choice` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;