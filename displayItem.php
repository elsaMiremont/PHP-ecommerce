<!--Bibliothèque de fonctions-->
<?php include("functions.php");?>


<?php
var_dump($_POST);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Mon site e-commerce</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <h1 class="mx-auto font-weight-light">My Shop</h1>
</nav>
    <div class="row m-5 bg-light" >
        <!-- Contrôle des données du formulaire -->
        <?php
        // On vérifie que l'accès à la page displayItem.php soit passé par le formulaire de addItem.php.
        if(isset($_POST['submit'])) {
            // On récupère les données du formulaire.
            $picture = $_POST['picture'];
            $name = $_POST['name'];
            // Je cast le string $_POST['price'] en int.
            $price = (int)$_POST['price'];

            if (!isset($picture) || empty($picture) || !isset($name) || empty($name) || !isset($price) || empty($price)) {
                // Ici je sais que $picture ou $name ou $price n'existent pas.
                header("Location: ./addItem.php?article=empty"); // Redirection du navigateur vers le formulaire.
                exit(); // Je sors de la boucle.
            } else {
                if ($price < 0) {
                    // Ici je sais que $price est inférieur à 0.
                    header("Location: ./addItem.php?article=invalidprice"); // Redirection du navigateur vers le formulaire.
                    exit(); // Je sors de la boucle.
                } else {
                    displayItem($_POST);
                    exit(); // Je sors de la boucle.
                }
            }
        } else {
            header("Location: ./addItem.php"); // Redirection du navigateur vers le formulaire.
            exit(); // Je sors de la boucle.
        }
        ?>
    </div>
</body>
</html>