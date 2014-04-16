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
	//include('query.php');
  $id = $_GET['userid'];
?>
<br />
<br />

  <!-- Jumbotron -->
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-lg-4">
        <h2>Friends</h2>
        <?php
          $frdsql = "SELECT fname, lname from users WHERE userid IN (SELECT friend FROM friend_of WHERE friend_owner= $id)";
          $tempfriendlst = mysql_query($frdsql);
          //$gpdatastore = mysql_fetch_assoc($tempgpost);
          while ($userfrienddatastore = mysql_fetch_array($tempfriendlst))
          {
            ?>
      
            <div class="gpostbox">
            <p id="gposttitle"> <?= $userfrienddatastore['fname'] ?> <?= $userfrienddatastore['lname'] ?>
            </div>
            <br />
            <?php
          }
          ?>
<br />
<br />

  <!-- Jumbotron -->
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-lg-4">
        <h2>Posts</h2>
        <?php
          $uptsql = "SELECT title from post where postid in (SELECT postid FROM creates WHERE userid =$id)";
          $temppostlst = mysql_query($uptsql);
          //$gpdatastore = mysql_fetch_assoc($tempgpost);
          while ($userpostdatastore = mysql_fetch_array($temppostlst))
          {
            ?>
      
            <div class="gpostbox">
            <p id="gposttitle"> <?= $userpostdatastore['title'] ?>
            </div>
            <br />
            <?php
          }
          ?>
<br />
<br />

  <!-- Jumbotron -->
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-lg-4">
        <h2>Comments</h2>
        <?php
          $uctsql = "SELECT content from comments where commentid IN (SELECT commentid FROM comments_on WHERE userid=$id)";
          $tempctlst = mysql_query($uctsql);
          //$gpdatastore = mysql_fetch_assoc($tempgpost);
          while ($userctdatastore = mysql_fetch_array($tempctlst))
          {
            ?>
      
            <div class="gpostbox">
            <p id="gposttitle"> <?= $userctdatastore['content'] ?>
            </div>
            <br />
            <?php
          }
          ?>          
    

</div>
</body>
</html>