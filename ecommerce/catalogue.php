<!--
Modifier catalogue.php en incluant la liste des articles dans un formulaire et en
ajoutant en face de chaque article une case à cocher. L’utilisateur coche les articles qu’il
veut commander, et lorsqu’il soumet le formulaire, on appelle un programme
basket.php qui affiche uniquement la liste des produits cochés.
-->


<?php
// Base de données contenant les données des articles.
include_once ('data.php');

global $products; // "import" de la variable dans ce fichier.

// var_dump($products); pour savoir ce qu'il y a dans la variable.

// Bibliothèque de fonctions
include("functions.php");
?>
<h2  class="font-weight-light m-5">Catalogue</h2>
<div class="m-5 p-3 bg-light">
    <p>Choisissez vos articles !</p>

    <form action="basket.php" method="post">
        <?php foreach($products as $index => $item) { ?>
            <?php //var_dump($index); ?>
            <pre><?php //var_dump($item) ?></pre>
        <div class="row m-5 bg-light d-flex" >
            <?php displayItem($item); ?>

            <input class="bg-light col-sm-3" type="checkbox" name="check[]" value="<?php echo $index ?>" />

        </div>

        <?php } ?>

        <button class="m-5 bg-light" type="submit" name="submit">Valider la sélection</button>
    </form>
</div>


