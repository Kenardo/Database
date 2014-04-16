<!DOCTYPE html>
<html lang="en">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<link href="display.css" rel="stylesheet">
<body>

<div class="container">

      <div class="masthead">
        <h3 class="text-muted">Project name</h3>
        <ul class="nav nav-justified">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">Projects</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Downloads</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
</div>

<div class="media">
<?php
	include('config.php');
	include('query.php');
?>
<br />
<br />

  <!-- Jumbotron -->
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-lg-4">
        <h2>Friends</h2>
        <?php
          $tempfriendlst = mysql_query($friendsql);
          //$gpdatastore = mysql_fetch_assoc($tempgpost);
          while ($userfrienddatastore = mysql_fetch_array($tempfriendlst))
          {
            ?>
      
            <div class="gpostbox">
            <p id="gposttitle"><a href="#"> <?= $userfrienddatastore['fname'] ?> <?= $userfrienddatastore['lname'] ?></a>
            </div>
            <br />
            <?php
          }
          ?>
  
    

</div>
</body>
</html>