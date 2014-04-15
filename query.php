<?php
include ('config.php');

$gpostsql = "SELECT gp.gpostid,title, g_post_type, g_image_path, text_body, gpost_like  from group_post AS gp JOIN gpost_content AS gpc ON gp.gpostid=gpc.gpostid";


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

?>