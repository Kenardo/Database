<?php

//HOME
$gpostsql = "SELECT gp.gpostid,title, g_post_type, g_image_path, text_body, gpost_like  from group_post AS gp JOIN gpost_content AS gpc ON gp.gpostid=gpc.gpostid";
$postsql = "SELECT pc.postid,title, post_type, image_path, text_body, post_like  from post AS p JOIN post_content AS pc ON p.postid=pc.postid"; 
$friendsql = 'SELECT fname, lname from users WHERE userid IN (SELECT friend FROM friend_of WHERE friend_owner="'.$_SESSION['userid'].'")';

//INSERT commands
$postinsertsql = 'INSERT INTO post (title, text_body, post_type) VALUES ("'.$title.'","'.$content.'","text")';

//ADMIN
$allfriendsql = 'SELECT fname, lname from users WHERE userid IN (SELECT friend FROM friend_of WHERE friend_owner= "'.$uid.'"")';
$commentsql = 'SELECT content from comments where commentid IN (SELECT commentid FROM comments_on WHERE userid="'.$uid.'")';
$allpostsql = 'SELECT title from post where postid in (SELECT postid FROM creates where userid = "'.$uid.'") ';

$usersql ='SELECT fname, lname from users';
$usercountsql = 'SELECT COUNT(userid) FROM users';
?>