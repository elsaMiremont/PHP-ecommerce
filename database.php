<?php
$bdd = new PDO('mysql:host=localhost;dbname=ecommerce;charset=utf8', 'elsa', 'bisse18602', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));

# Bibliothèque de fonctions
#2 parmi les requêtes de sélection sur une seule table.

$query = $bdd->query('');
$reponse = $query->fetchAll();
var_dump($reponse);

$query = $bdd->query('');
$reponse = $query->fetchAll();
var_dump($reponse);

# 2 parmi les requêtes de sélection sur plusieurs tables.

$query = $bdd->query('SELECT `name`,order_product.quantity AS quantity,`price` FROM products INNER JOIN order_product ON products.id = order_product.product_id WHERE order_product.order_id=1;');
$reponse = $query->fetchAll();
var_dump($reponse);

$query = $bdd->query('');
$reponse = $query->fetchAll();
var_dump($reponse);

# 2 parmi les requêtes d’insertion, modification et suppression.

$query = $bdd->query('');
$reponse = $query->fetchAll();
var_dump($reponse);

$query = $bdd->query('');
$reponse = $query->fetchAll();
var_dump($reponse);