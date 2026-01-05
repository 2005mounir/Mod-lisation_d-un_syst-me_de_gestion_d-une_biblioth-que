-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 05 jan. 2026 à 09:21
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exersicedata`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id_auteur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `nom`) VALUES
(1, 'Victor Hugo'),
(2, 'Alexandre Dumas'),
(3, 'Albert Camus'),
(5, 'Victor Hugo'),
(6, 'Alexandre Dumas'),
(7, 'Albert Camus'),
(8, 'Victor Hugo'),
(9, 'Alexandre Dumas'),
(10, 'Albert Camus'),
(11, 'Victor Hugo'),
(12, 'Alexandre Dumas'),
(13, 'Albert Camus'),
(14, 'Victor Hugo'),
(15, 'Alexandre Dumas'),
(16, 'Albert Camus'),
(17, 'Victor Hugo'),
(18, 'Alexandre Dumas'),
(19, 'Albert Camus'),
(20, 'Victor Hugo'),
(21, 'Alexandre Dumas'),
(22, 'Albert Camus'),
(23, 'Victor Hugo'),
(24, 'Alexandre Dumas'),
(25, 'Albert Camus'),
(26, 'Victor Hugo'),
(27, 'Alexandre Dumas'),
(28, 'Albert Camus');

-- --------------------------------------------------------

--
-- Structure de la table `crire`
--

CREATE TABLE `crire` (
  `id_auteur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id_emprunt` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL,
  `id_lecteur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lecteur`
--

CREATE TABLE `lecteur` (
  `id_lecteur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lecteur`
--

INSERT INTO `lecteur` (`id_lecteur`, `nom`, `email`) VALUES
(1, 'Sara mofid', 'sara@example.com'),
(2, 'Ali mn', 'ali@example.com'),
(3, 'Nadia El rahmouni', 'nadia@example.com'),
(22, 'Sara Mofiid', 'sa@example.com'),
(23, 'Ali MNm', 'im@example.com'),
(24, 'Nadia El Ramouni', 'nadia2@example.com'),
(34, 'Sara Mofid', 'san@example.com'),
(40, 'Sara Mofid', 'sanaee@example.com'),
(41, 'Ali MNm', 'ali21@example.com'),
(42, 'Nadia El Ramouni', 'nadiaaa2@example.com');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id_livre` int(11) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `date_pub` date DEFAULT NULL,
  `id_rayon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_livre`, `titre`, `date_pub`, `id_rayon`) VALUES
(1, 'Les Misérables', '1862-01-01', 1),
(2, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(3, 'L’Étranger', '1942-05-19', 3),
(13, 'Les Misérables', '1862-01-01', 1),
(14, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(15, 'L’Étranger', '1942-05-19', 3),
(16, 'Les Misérables', '1862-01-01', 1),
(17, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(18, 'L’Étranger', '1942-05-19', 3),
(19, 'Les Misérables', '1862-01-01', 1),
(20, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(21, 'L’Étranger', '1942-05-19', 3),
(22, 'Les Misérables', '1862-01-01', 1),
(23, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(24, 'L’Étranger', '1942-05-19', 3),
(25, 'Les Misérables', '1862-01-01', 1),
(26, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(27, 'L’Étranger', '1942-05-19', 3),
(28, 'Les Misérables', '1862-01-01', 1),
(29, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(30, 'L’Étranger', '1942-05-19', 3),
(31, 'Les Misérables', '1862-01-01', 1),
(32, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(33, 'L’Étranger', '1942-05-19', 3),
(34, 'Les Misérables', '1862-01-01', 1),
(35, 'Le Comte de Monte-Cristo', '1844-01-01', 2),
(36, 'L’Étranger', '1942-05-19', 3);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id_personnel` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `id_responsable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id_personnel`, `nom`, `id_responsable`) VALUES
(1, 'Mouad', NULL),
(2, 'Fatima', 1),
(3, 'Youssef', 1),
(4, 'Mouad', NULL),
(5, 'Fatima', 1),
(6, 'Youssef', 1),
(7, 'Mouad', NULL),
(8, 'Fatima', 1),
(9, 'Youssef', 1);

-- --------------------------------------------------------

--
-- Structure de la table `rayon`
--

CREATE TABLE `rayon` (
  `id_rayon` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rayon`
--

INSERT INTO `rayon` (`id_rayon`, `nombre`) VALUES
(1, 100),
(2, 50),
(3, 75),
(4, 100),
(5, 50),
(6, 75),
(7, 100),
(8, 50),
(9, 75),
(10, 100),
(11, 50),
(12, 75),
(13, 100),
(14, 50),
(15, 75),
(16, 100),
(17, 50),
(18, 75),
(19, 100),
(20, 50),
(21, 75),
(22, 100),
(23, 50),
(24, 75),
(25, 100),
(26, 50),
(27, 75);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `crire`
--
ALTER TABLE `crire`
  ADD PRIMARY KEY (`id_auteur`,`id_livre`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id_emprunt`),
  ADD UNIQUE KEY `id_livre` (`id_livre`),
  ADD KEY `id_lecteur` (`id_lecteur`);

--
-- Index pour la table `lecteur`
--
ALTER TABLE `lecteur`
  ADD PRIMARY KEY (`id_lecteur`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id_livre`),
  ADD KEY `id_rayon` (`id_rayon`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id_personnel`),
  ADD KEY `id_responsable` (`id_responsable`);

--
-- Index pour la table `rayon`
--
ALTER TABLE `rayon`
  ADD PRIMARY KEY (`id_rayon`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id_emprunt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `lecteur`
--
ALTER TABLE `lecteur`
  MODIFY `id_lecteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id_livre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_personnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `rayon`
--
ALTER TABLE `rayon`
  MODIFY `id_rayon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `crire`
--
ALTER TABLE `crire`
  ADD CONSTRAINT `crire_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`),
  ADD CONSTRAINT `crire_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`);

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`id_lecteur`) REFERENCES `lecteur` (`id_lecteur`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id_livre`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_rayon`) REFERENCES `rayon` (`id_rayon`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`id_responsable`) REFERENCES `personnel` (`id_personnel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
