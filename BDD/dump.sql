-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 04 jan. 2021 à 14:03
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Fruits'),
(2, 'Légumes'),
(3, 'Noix');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `addresse` varchar(100) DEFAULT NULL,
  `cp` mediumint(9) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `addresse`, `cp`, `city`) VALUES
(1, 'Chuck', 'Norris', NULL, NULL, NULL),
(2, 'Charlize', 'Theron', NULL, NULL, NULL),
(3, 'Ryan', 'Gosling', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `total` mediumint(8) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `number`, `date`, `total`, `customer_id`) VALUES
(1, '1', '2020-12-11 10:09:52', 5330, 1),
(2, '2', '2020-12-08 06:12:33', 7452, 1),
(3, '3', '2020-12-05 11:17:34', 4254, 2),
(4, '4', '2020-12-06 11:19:11', 74587, 2),
(5, '5', '2020-12-11 10:20:27', 57747, 2);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 13, 1),
(4, 2, 9, 2),
(5, 3, 2, 1),
(6, 3, 10, 1),
(7, 4, 3, 2),
(8, 4, 12, 1),
(9, 5, 2, 1),
(10, 5, 11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `price` mediumint(8) UNSIGNED DEFAULT NULL,
  `weight` mediumint(8) UNSIGNED DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `quantity` mediumint(8) UNSIGNED DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `category` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `weight`, `image`, `quantity`, `available`, `category`) VALUES
(1, 'Oranges', NULL, 100, 1000, NULL, 10, 1, 1),
(2, 'Pêches', NULL, 100, 1000, NULL, 10, 1, 1),
(3, 'Bananes', NULL, 10, 500, NULL, 1, 1, 1),
(4, 'Abricots', NULL, 10, 500, NULL, 1, 1, 1),
(5, 'Ananas', NULL, 10, 500, NULL, 1, 0, 1),
(6, 'Fraise', NULL, 10, 500, NULL, 1, 0, 1),
(7, 'Courgettes', NULL, 13, 500, NULL, 0, 1, 2),
(8, 'Pommes de Terre', NULL, 13, 500, NULL, 0, 1, 2),
(9, 'Navets', NULL, 50, 1200, NULL, 2, 1, 2),
(10, 'Radis', NULL, 50, 1200, NULL, 2, 1, 2),
(11, 'Noix', NULL, 500, 1200, NULL, 5, 1, 3),
(12, 'Noix de Cajou', NULL, 500, 1200, NULL, 5, 1, 3),
(13, 'Amandes', NULL, 500, 1200, NULL, 5, 1, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifiant_UNIQUE` (`number`),
  ADD KEY `fk_orders_customers_idx` (`customer_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_product_order_idx` (`order_id`),
  ADD KEY `fk_order_product_product_idx` (`product_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorie_idx` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `fk_order_product_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_product_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_categorie` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
