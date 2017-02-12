<?php
include ("inc/header.php");
include("inc/database.php");
if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };
$start_from = ($page-1) * $results_per_page;
$sql = "SELECT books.id AS book_id, books.name AS book_name FROM ".$datatable." ORDER BY id ASC LIMIT $start_from, ".$results_per_page;
$rs_result = $mysqli->query($sql);

    echo "<h1>Books</h1>";

    echo "<table>";
        while ($row = $rs_result->fetch_object()) {

            $book_id = $row->book_id;

            echo "<tr><td><a href='book.php?id=$book_id'>" . $row->book_name . "</a></td></tr>";
        }
echo "</table>";
$sql = "SELECT COUNT(id) AS total FROM ".$datatable;
$result = $mysqli->query($sql);
$row = $result->fetch_assoc();
$total_pages = ceil($row["total"] / $results_per_page);
echo "<table><tr><td>";
for ($i=1; $i<=$total_pages; $i++) {
    echo "<a name='page' href='index.php?page=".$i."'";
    if ($i==$page)  echo " class='curPage'";
    echo ">".$i."</a> ";
};
echo "</td></tr></table>";
?>