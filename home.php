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
          <h2>Group Post</h2>
		  <?php
			$tempgpost = mysql_query($gpostsql);
			//$gpdatastore = mysql_fetch_assoc($tempgpost);
		
			while ($gpdatastore = mysql_fetch_array($tempgpost))
			{
				//echo "<p><?$gpdatastore['title']
				//echo $gpdatastore['title'];
				?>
			
				<div class="gpostbox">
				<p id="gposttitle"> <?= $gpdatastore['title'] ?></p>
				<p><?= $gpdatastore['g_post_type'] ?></p>
				<p><?= $gpdatastore['g_image_path'] ?></p>
				<p><?= $gpdatastore['text_body'] ?></p>
				<p><span class="glyphicon glyphicon-heart"></span>&nbsp;<?= $gpdatastore['gpost_like'] ?></p>
				<form>
					<textarea name="comments" cols="20" rows="3">
					</textarea>
					<button type="submit" formmethod="post" formaction="">Comment</button>
				</form>
				</div>
				<br />
				<?php
			}
		  ?>
          
        </div>
        <div class="col-lg-4">
          <h2>Post</h2>
           <?php
			$temppost = mysql_query($postsql);
			//$gpdatastore = mysql_fetch_assoc($tempgpost);
		
			while ($pdatastore = mysql_fetch_array($temppost))
			{
				//echo "<p><?$gpdatastore['title']
				//echo $gpdatastore['title'];
				?>
			
				<div class="gpostbox">
				<p id="gposttitle"> <?= $pdatastore['title'] ?></p>
				<p><?= $pdatastore['post_type'] ?></p>
				<p><?= $pdatastore['image_path'] ?></p>
				<p><?= $pdatastore['text_body'] ?></p>
				<p><span class="glyphicon glyphicon-heart"></span>&nbsp;<?= $pdatastore['post_like'] ?></p>
				<form>
					<textarea name="comments" cols="20" rows="3">
					</textarea>
					<button type="submit" formmethod="post" formaction="">Comment</button>
				</form>
				</div>
				<br />
				<?php
			}
		  ?>
       </div>
        <!-- <div class="col-lg-4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div> -->
      </div>
	  </div>
</div>
</body>
</html>