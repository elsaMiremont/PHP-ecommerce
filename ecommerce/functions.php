<?php

// Affiche 1 item, l'item 1
function displayItem1() {

    $item1 = [
        "picture" => "assets/blue-love.png",
        "name" => "Patch Blue Jeans",
        "price" => 75
    ];
    echo '<div class="row m-5 bg-light" >
        <div class="col-sm-4">
            <img src="'.$item1["picture"].'" class="d-block mx-auto w-30 p-4" alt="...">
        </div>
        <div class="col-sm-4">
            <div class="d-flex">
                <h2 class="font-weight-light text-center align-self-center">'.$item1["name"].'</h2>
</div>
</div>
<div class="col-sm-4">
    <h2 class="m-auto font-weight-light">'.$item1["price"].' €</h2>
</div>
</div>';
}

// Affiche 1 item, l'item 2
function displayItem2() {
    $item2 = [
        "picture" => "assets/pink-dress.png",
        "name" => "Pastel Pink Dress",
        "price" => 88
    ];
    echo '<div class="row m-5 bg-light" >
        <div class="col-sm-4">
            <img src="'.$item2["picture"].'" class="d-block mx-auto w-30 p-4" alt="...">
        </div>
        <div class="col-sm-4">
            <div class="d-flex">
                <h2 class="font-weight-light text-center align-self-center">'.$item2["name"].'</h2>
</div>
</div>
<div class="col-sm-4">
    <h2 class="m-auto font-weight-light">'.$item2["price"].' €</h2>
</div>
</div>';
}

// Affiche 1 item, l'item 3
function displayItem3() {
    $item3 = [
        "picture" => "assets/cute-yellow.png",
        "name" => "Pastis Top",
        "price" => 65
    ];
    echo '<div class="row m-5 bg-light" >
        <div class="col-sm-4">
            <img src="'.$item3["picture"].'" class="d-block mx-auto w-30 p-4" alt="...">
        </div>
        <div class="col-sm-4">
            <div class="d-flex">
                <h2 class="font-weight-light text-center align-self-center">'.$item3["name"].'</h2>
</div>
</div>
<div class="col-sm-4">
    <h2 class="m-auto font-weight-light">'.$item3["price"].' €</h2>
</div>
</div>';
}

// Affiche n'importe quel item
function displayItem($item) {

    echo '
    <div class="col-sm-3">
        <img src="'.$item["picture"].'" class="d-block mx-auto w-30 p-4" alt="...">
    </div>
    <div class="col-sm-3">
        <div class="d-flex">
            <h2 class="font-weight-light text-center">'.$item["name"].'</h2>
        </div>
    </div>
    <div class="col-sm-3">
        <h2 class="p-3 m-auto font-weight-light text-center">'.$item["price"].' €</h2>
</div>';
}

// Retourne le total du panier et l'affiche.
function basketTotal() {

    echo $total;
    return $total;
}
