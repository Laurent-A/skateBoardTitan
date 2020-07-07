-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  sam. 14 sep. 2019 à 07:32
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `api_rest`
--
DROP DATABASE IF EXISTS `skateboard_titan`;
CREATE DATABASE IF NOT EXISTS `skateboard_titan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `skateboard_titan`;


--
-- Structure de la table `type_contrat`
--

DROP TABLE IF EXISTS `type_contrat`;
CREATE TABLE `type_contrat` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table `prestataire`
--

DROP TABLE IF EXISTS `prestataire`;
CREATE TABLE `prestataire` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `type_id` int(11) NOT null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE `utilisateur` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `tel` int(12) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE `contrat` (
  `id` int(11) PRIMARY key NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT null,
  `prestataire_id` int(11) NOT null,
  `utilisateur_id` int(11) NOT null,
  `cout` varchar(50) NOT NULL,
  `date_debut` DATE NOT NULL,
  `date_fin` DATE NOT NULL,
  `duree` int(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `prestataire`
--
ALTER TABLE `prestataire`
  ADD KEY `type_id` (`type_id`);

-- Contraintes pour la table `prestataire`
--
ALTER TABLE `prestataire`
  ADD CONSTRAINT `prestataire_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_contrat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Index pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD KEY `prestataire_id` (`prestataire_id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`),
  ADD KEY `type_id` (`type_id`);
--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `contrat_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE cascade,
  ADD CONSTRAINT `contrat_ibfk_2` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataire` (`id`) ON DELETE CASCADE ON UPDATE cascade,
  ADD CONSTRAINT `contrat_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `type_contrat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

 

-- --------------------------------------------------------

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*
INSERT INTO `type_contrat` (`type`) VALUES
('Electricite'),
('telephonie mobile'),
('assurance');

INSERT INTO `prestataire` (`nom`, `type_id`) VALUES
('EDF', 1),
('SFR', 2),
('Groupama', 3);


INSERT INTO `utilisateur` (`prenom`, `password`, `pseudo`, `mail`, `tel`, `created_at`, `updated_at`) VALUES
('Laurent', 'Laurent', 'Napo', 'laurent@gmail.com', '0612831451', '2019-09-07 21:19:09', '2019-09-07 19:19:09'),
('Anakin', 'Anakin', 'Anakin', 'anakin@gmail.com', '0612345678', '2019-09-07 21:21:11', '2019-09-07 19:21:11');

INSERT INTO `contrat` (`cout`, `date_debut`, `date_fin`, `duree`, `utilisateur_id`, `prestataire_id`, `type_id`, `updated_at`) VALUES
(45,'2018-09-01','2021-10-01','36',1,2,2, '2019-09-07 21:19:09');
*/