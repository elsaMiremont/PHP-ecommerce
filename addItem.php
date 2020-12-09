

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

    <h2 class="m-5 font-weight-light">Ajouter un produit</h2>

    <!-- Formulaire de saisie d'un nouvel article -->
    <form action="displayItem.php" method="post" enctype="multipart/form-data">
        <div class="row m-5 bg-light">
            <div class="m-5 bg-light"><p><label>Nom de l'article : <input type="text" name="name" /></label></p></div>
            <div class="m-5 bg-light"><p ><label>Prix de l'article : <input type="number" name="price" /></label></p></div>
            <div class="m-5 bg-light"><p><label>Image de l'article : <input type="text" name="picture" /></label></p></div>
            <button class="m-5 bg-light" type="submit" name="submit">Valider</button>
        </div>
    </form>
    <!-- Affiche un message en cas d'erreur -->
    <?php
        $fullUrl = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

        if (strpos($fullUrl, "article=empty") == true) {
            echo '<p class="m-5 text-danger">Vous n\'avez pas rempli tous les champs !</p>';
            exit();
        } elseif (strpos($fullUrl, "article=invalidprice") == true){
            echo '<p class="m-5 text-danger">Veuillez renseigner un prix correct ! (radin...)</p>';
            exit();
        }
    ?>
    </body>
</html>