<?php

include("inc/database.php");

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $aid = (int)$_GET['id'];
}

if ($result = $mysqli->query("SELECT books.name AS book_name, authors.first_name AS first_name, authors.last_name AS last_name, books.id AS book_id, authors.id AS author_id
FROM joins LEFT OUTER JOIN books ON (joins.book_id = books.id)
LEFT OUTER JOIN authors ON (joins.author_id = authors.id) WHERE author_id = $aid")
) {

    $i = false;
    while ($row = $result->fetch_object()) {
        if ($i == false) {
            $author_id = $row->author_id;
            echo "<h2>" . $row->first_name . " " . $row->last_name . "</h2><br>";
            $i = true;
        }
        $book_id = $row->book_id;
        echo "<a href='book.php?id=$book_id'>" . $row->book_name . "</a><br>";
    }
    $result->close();
}
$mysqli->close();

include("inc/footer.php");
