<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Mon site e-commerce</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <h1 class="mx-auto font-weight-light">My Shop</h1>
</nav>

<!-- Affiche l'item saisie dans le formulaire -->

<?php
// Bibliothèque de fonctions
include("functions.php");

if(array_key_exists('name', $_POST) && array_key_exists('price', $_POST) && array_key_exists('picture', $_POST))  {

    displayItem($_POST);

}
?>
</body>
</html>