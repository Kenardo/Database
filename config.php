<?php
	session_start();
	
	$con = mysql_connect('localhost','root',''); /*connects to the database */
	mysql_select_db('aarkdb'); /* selects the mysql database named 'coursemgmtdb' */
	
	$query = 'SELECT * FROM courses';  /* sql query string being assigned to php variable */
	$result = mysql_query($query) or die("Query failed" . mysql_error()); /*queries the database with the query string in variable ($query), returns an error if the query fails */
	
?>