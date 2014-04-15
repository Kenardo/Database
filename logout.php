<?php
$title = "Logout";

include('config.php');
?>
<!DOCTYPE html>
<html lang="en">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<link href="display.css" rel="stylesheet">
<script type="text/javascript" src="jsfunctions.js"></script>

<div class="masterdiv">
	<h2>AARK book</h2>
</div>
<br />
<br />
<?php

if(isset($_SESSION['userid']))
{
	unset($_SESSION['email'], $_SESSION['userid'], $_SESSION['email'], $_SESSION['dob'], $_SESSION['fname'], $_SESSION['lname']);
	
?>
<div class="container">
	<div class="message">You have successfully been loged out.<br />
	<a class="btn btn-primary" href="login.html" role="button">Login</a></div>
</div>
<?php
}
else
{
?>
<div class="container">
	<p class="message">You are logged out. Click here to <a class="btn btn-primary" href="login.html" role="button" > login</a></p>
</div>
<?php
}
?>