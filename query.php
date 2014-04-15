<?php


$gpostsql = "SELECT gp.gpostid,title, g_post_type, g_image_path, text_body, gpost_like  from group_post AS gp JOIN gpost_content AS gpc ON gp.gpostid=gpc.gpostid";
$postsql = "SELECT pc.postid,title, post_type, image_path, text_body, post_like  from post AS p JOIN post_content AS pc ON p.postid=pc.postid"; 
/*
$uid=1;
$name = "SELECT fname, lname FROM users  WHERE userid='$uid'";
$nresult = mysql_query($name) or die("Query failed" . mysql_error());

while ($nrow = mysql_fetch_array($nresult))
{
	echo $nrow['fname']." ".$nrow['lname'];
	echo "<br>";
}

echo "user table";
$info = "SELECT * FROM users";
$iresult = mysql_query($info) or die("Query failed" . mysql_error());
echo "ID | First Name | Last Name";
while ($irow = mysql_fetch_array($iresult))
{
	echo $irow['userid']." ".$irow['fname']." ".$irow['lname'];
	echo "<br>";
}


echo "admin <br>";
$admin = "SELECT fname, lname FROM users JOIN friend_of ON friend_of.friend = users.userid GROUP BY friend_of.friend_owner ";
$aresult =  mysql_query($admin) or die("Query failed" . mysql_error());
while($arow = mysql_fetch_array($aresult))
{
	echo $arow['fname']." ".$arow['lname'];
	echo "<br>";
}"
*/

$friendsql = "SELECT fname, lname from users WHERE userid IN (SELECT friend FROM friend_of WHERE friend_owner=$_SESSION['userid'])";
$usercountsql = "SELECT COUNT(userid) FROM users";
$commentsql = "SELECT content from comments where commentid IN (SELECT commentid FROM comments_on WHERE userid=$_SESSION['userid'])";
$postsql = "";
?>