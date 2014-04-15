<?php


$gpostsql = "SELECT gp.gpostid,title, g_post_type, g_image_path, text_body, gpost_like  from group_post AS gp JOIN gpost_content AS gpc ON gp.gpostid=gpc.gpostid";
$postsql = "SELECT pc.postid,title, post_type, image_path, text_body, post_like  from post AS p JOIN post_content AS pc ON p.postid=pc.postid"; 


$friendsql = 'SELECT fname, lname from users WHERE userid IN (SELECT friend FROM friend_of WHERE friend_owner="'.$_SESSION['userid'].'")';
$usercountsql = 'SELECT COUNT(userid) FROM users';
$commentsql = 'SELECT content from comments where commentid IN (SELECT commentid FROM comments_on WHERE userid="'.$_SESSION['userid'].'")';

?>