<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Mon site e-commerce</title>
    </head>

    <body>

    <form action="displayItem.php" method="post" enctype="multipart/form-data">
        <div>
            <p><label>Nom de l'article : <input type="text" name="name" /></label></p>
            <p><label>Prix de l'article : <input type="text" name="price" /></label></p>
            <p><label>Image de l'article : <input type="file" name="picture" /></label></p>
            <p><input type="submit" value="Valider"/></p>
        </div>

    </form>

    </body>
</html>