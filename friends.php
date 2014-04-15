<?php
include('header.html');
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
			$tempfriend = mysql_query($friendsql);
			//$gpdatastore = mysql_fetch_assoc($tempgpost);
		
			while ($frienddatastore = mysql_fetch_array($tempfriend))
			{
				//echo "<p><?$gpdatastore['title']
				//echo $gpdatastore['title'];
				?>
			
				<div class="gpostbox">
				<p id="gposttitle"> <?= $frienddatastore['fname'] ?> <?= $frienddatastore['lname'] ?>
				</div>
				<br />
				<?php
			}
		  ?>


</div>
</body>
</html>
	  
