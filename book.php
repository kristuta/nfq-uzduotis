<?php
include ("inc/header.php");
include("inc/database.php");

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $bid = (int)$_GET['id'];
}

if ($result = $mysqli->query("SELECT books.name AS book_name, first_name AS first_name, authors.last_name AS last_name, authors.id AS author_id, books.year AS year, books.genre AS genre 
FROM joins LEFT OUTER JOIN books ON (joins.book_id = books.id)
LEFT OUTER JOIN authors ON (joins.author_id = authors.id) WHERE joins.book_id = $bid")
) {

    $i=0;
    while ($row = $result->fetch_object()) {
        if($i==0) {
            echo "<h2>".$row->book_name."</h2><br>";
            $i=1;
            echo "Year: " . $row->year. "<br>";
            echo "Genre: " . $row->genre. "<br>";
            $i=1;}
        $author_id = $row->author_id;
        echo "Author: <a href='author.php?id=$author_id'>" . $row->first_name . " " . $row->last_name . "</a><br>";


    }

    $result->close();
}

$mysqli->close();

include("inc/footer.php");
