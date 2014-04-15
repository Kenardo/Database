<?php
include('header.html');
$id = $_SESSION['userid'];
$tempstat = mysql_query('SELECT user_status FROM profile where "'.$id.'"');
$statdata = mysql_fetch_array($tempstat);
$status = $statdata['user_status'];

$temp = mysql_query("call GetAge('$id')");
$agedata = mysql_fetch_array($temp);
$agefloat = floatval($agedata['ageInYears']);
$age = floor($agefloat);

?>

	  
	  <div class="container">
		<div class="row">
			<div class="col-lg-4">
			
			  <h2>Personal Data</h2>
				<table cellspacing="10" class="udata">
					
					<tr class="personaldata" ><td class="title">First Name: </td><td class="val"><?= $_SESSION['fname'] ?></td></tr>
					<tr class="personaldata" ><td class="title">Last Name: </td><td class="val"><?= $_SESSION['lname'] ?></td></tr>
					<tr class="personaldata"><td class="title">Age: </td><td class="val"><?= $age ?></td>
				</table>
			  <br />
			  <p><a class="btn btn-primary" href="#" role="button">Change &raquo;</a></p>
			</div>
			<div class="col-lg-4">
			  <h2>About me</h2>
				<table cellspacing="10" class="udata">
					
					<tr class="personaldata" ><td class="title">Status: </td><td class="val"><?= $status ?></td></tr>
					<tr class="personaldata" ><td class="title">Email: </td><td class="val"><?= $_SESSION['email'] ?></td></tr>
					<tr class="personaldata" ><td class="title">D.O.B: </td><td class="val"><?= $_SESSION['dob'] ?></td></tr>
					
				</table>
              <br />
			  <p><a class="btn btn-primary" href="#" role="button">Change &raquo;</a></p>
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