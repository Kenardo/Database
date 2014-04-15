<?php
include('header.html');
?>
<br />
<br />
<form name ="input" action ="" method = "post">

		<label class="left" for="g_title"><strong>Group Post Title:</strong></label>
		<label class="column"><input type="text" size="40" maxlength="16" id="g_title" name="g_title"></label><br /><br />
		 
		<br />
		
		<label for="gposttype">Group Post Type</label>
		<label><select name="gposttype">
			<option></option>
			<option value="family">family</option>
			<option value="friend">friend</option>
		</select>
		</label>
		<br />
		<br />
		<label class="left" for="textbox"><strong>Write Post below</strong></label><br />
		<label class="column"><textarea name = "textbox" rows ="4" cols ="30">
		
		</textarea>
		</label><br /><br />
		
		<button name="save" class="btn btn-info" type="submit">Save</button>
		
	</form>

	<br />
	<br />

</div>
</body>
</html>
	  
