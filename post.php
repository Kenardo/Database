<?php
include('header.html');
include('query.php');

	if(isset($_POST['save'])) {
		$errors = "";
		$title = strtolower(stripslashes($_POST['ptitle']));
		$content = strtolower(stripslashes($_POST['textbox']));
		$ptype = 'text';
		$temp = mysql_query('select max(postid) as maxpost from post');
		$curpid = mysql_fetch_array($temp);

		$newpostid = (int)$curpid['maxpost'];
	
		$newpostid++;
	
		if(mysql_query('INSERT INTO post (postid, title, text_body, post_type) VALUES ("'.$newpostid.'","'.$title.'","'.$content.'","'.$ptype.'")'))
		{
			?>
			<div class="message">Post successfully saved<br />
			Make another <a href="post.php">Post</a></div>   
			<?php	
		}
		else {
			$errors .= "Post was not saved";
		}
		
		$allowedExts = array("gif", "jpeg", "jpg", "png");
		$temp = explode(".", $_FILES["file"]["name"]);
		$extension = end($temp);
		if ((($_FILES["file"]["type"] == "image/gif")
		|| ($_FILES["file"]["type"] == "image/jpeg")
		|| ($_FILES["file"]["type"] == "image/jpg")
		|| ($_FILES["file"]["type"] == "image/pjpeg")
		|| ($_FILES["file"]["type"] == "image/x-png")
		|| ($_FILES["file"]["type"] == "image/png"))
		&& ($_FILES["file"]["size"] < 20000000)
		&& in_array($extension, $allowedExts))
		  {
		  if ($_FILES["file"]["error"] > 0)
			{
			echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
			}
		  else
			{
			//echo "Upload: " . $_FILES["file"]["name"] . "<br>";
			//echo "Type: " . $_FILES["file"]["type"] . "<br>";
			//echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
			//echo "Temp file: " . $_FILES["file"]["tmp_name"] . "<br>";

			if (file_exists("postpic/" . $_FILES["file"]["name"]))
			  {
			  echo $_FILES["file"]["name"] . " already exists. ";
			  }
			else
			  {
			  move_uploaded_file($_FILES["file"]["tmp_name"],
			  "postpic/" . $_FILES["file"]["name"]);
			  $fullpath = "postpic/" . $_FILES["file"]["name"];
			  mysql_query('INSERT into post_content(postid, image_path, post_like) VALUES ("'.$newpostid.'","'.$fullpath.'",0)');
				 echo "<p class=\"message\">Picture uploaded successfully</p>";
			  //echo "Stored in: " . "postpic/" . $_FILES["file"]["name"];
			  }
			}
		  }
		else
		  {
		  echo "Invalid file";
		  }
	}
	
?>
<br />
<br />
	<form name ="input" action ="" method = "post" enctype="multipart/form-data">
		<br />
		<label class="left" for="ptitle"><strong>Post Title:</strong></label>
		<label class="column"><input type="text" size="30" id="ptitle" name="ptitle"></label><br /><br />
	
		<br />
		<label class="left" for="textbox"><strong>Write Post below:</strong></label><br />
		<label class="column"><textarea name = "textbox" rows ="4" cols ="30">
		
		</textarea>
		</label><br /><br />
		<label for="file">Upload photo:</label>
		<input type="file" name="file" id="file"><br>
		<!-- <input class="btn btn-info" type="submit" name="submit" value="Upload">  -->
		
		<button name="save" class="btn btn-info" type="submit">Save</button>
		
	<!-- </form>
	<form action="upload_file.php" method="post" enctype="multipart/form-data"> -->
		
	</form>

	<br />
	<br />
</div>	  
</body>
</html>
	  
