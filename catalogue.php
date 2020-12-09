<?php
// Base de données contenant les données des articles.
include_once ('data.php');

// Bibliothèque de fonctions
include("functions.php");
?>

<form action="basket.php" method="post">
    <?php foreach($products as $key => $item) { ?>
        key : <?php echo $key; ?>
        <pre><?php var_dump($products) ?></pre>
    <?php displayItem($products); ?>
    }

    <input type="number" name="item[<?php echo $key; ?>]" value="">
    <hr>
    <?php } ?>

    <button class="m-5 bg-light" type="submit" name="submit">Valider</button>
</form>

