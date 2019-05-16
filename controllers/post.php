<?php

$id = $_GET["id"];

$post = $db->query("
	SELECT A.id, A.title, A.text, A.picture AS pic, B.username AS user
    FROM posts A
	JOIN users B
    ON A.userid = B.id 
    WHERE A.id = $id");

if(empty($post)) die("Post not found");
else $post = $post[0];

include "views/post.tpl";
