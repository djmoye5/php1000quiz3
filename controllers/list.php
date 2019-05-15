<?php

$title = "Pictures";

$user = $_SESSION["user"];

// get the images
$images = $db->query("
	SELECT A.id, A.title, A.text, A., A.picture AS pic, B.username AS user
	FROM pictures A
	JOIN users B
	ON A.userid = B.id
	ORDER BY (A.inserted) DESC");

// include the view
include "views/list.tpl";