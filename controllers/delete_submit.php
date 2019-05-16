<?php

// get params from post
$id = $_GET["id"];

// remove from the database
$db->query("DELETE FROM posts WHERE id = $id");

// redirect to blog
header("Location: ?p=blog");