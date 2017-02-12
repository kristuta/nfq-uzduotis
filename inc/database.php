<?php
$datatable = "books"; // MySQL table name
$results_per_page = 8; // number of results per page
$mysqli = new mysqli("localhost", "root", "", "library");
/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}