<?php

$title = "Pictures";

$user = $_SESSION["user"];

// get the images
$images = $db->query("
	SELECT A.id, A.title, A.text, A.picture AS pic, B.username AS user
	FROM posts A
	JOIN users B
	ON A.userid = B.id
	ORDER BY (A.inserted) DESC");

// include the view
include "views/blog.tpl";