<?php

// Bibliothèque de fonctions
include("functions.php");

// Les données de chaque item sont rangées dans un tableau à clés
$products = [
    [   "picture" => "assets/blue-love.png",
        "name" => "Patch Blue Jeans",
        "price" => 75
    ],
    [   "picture" => "assets/pink-dress.png",
        "name" => "Pastel Pink Dress",
        "price" => 88
    ],
    [   "picture" => "assets/cute-yellow.png",
        "name" => "Pastis Top",
        "price" => 65
    ]
];

// Affiche chaque item
foreach ($products as $product) {
    displayItem($product);
}

