<!--
Ajouter dans basket.php, pour chaque article, un champ de saisie qui permet de saisir
une quantité d'articles.
Dans votre code php, contrôler que la donnée saisie est bien un entier positif, afficher un
message en cas d’erreur et recalculer le prix total.
Ajouter aussi pour chaque article un bouton supprimer, qui va enlever l’article du panier.
-->


<?php
include ("functions.php");
include_once ('data.php');
global $products; // "import" de la variable dans ce fichier.

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>MyShop</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <h1 class="mx-auto font-weight-light">My Shop</h1>
</nav>
<div class="bg-light px-5  pt-3 mt-5">
    <h2 class="m-2 font-weight-light">Votre panier :</h2>

    <pre><?php var_dump($_POST) ?></pre>
    <form action="checked.php" method="post">
        <?php foreach ($products as  $index => $item) { ?>
            <div class="row m-5 bg-light d-flex" >
                <?php displayItem($item); ?>
                <div>
                    <p>Quantité :</p>
                    <input class="d-inline" type="number" name="qt[<?php echo $index; ?>]" value="">
                </div>
            </div>

            <!-- ici on a pas le droit de fixer la value -->
        <?php } ?>

        <button type="submit">Passer commande !</button>
    </form>


</div>

</body>
</html>