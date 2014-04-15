<?php 
	include('config.php');
	
	if(isset($_POST['submit'])) 
	{		
			$email = STRIPSLASHES($_POST['user']);
			
			$pass= STRIPSLASHES($_POST['pass']);
			
			$acct = mysql_query('SELECT userid FROM users_info WHERE email="'.$email.'"');
			$data = mysql_fetch_array($acct);
			$userid = $data['userid'];
		
			$acct2 = mysql_query('SELECT password FROM users WHERE userid="'.$userid.'"');
			$data2 = mysql_fetch_array($acct2);
					
		    $password = md5($pass);
			    if($data2['password']==$password)
				{
					
					$temp = mysql_query('SELECT us.userid,fname,lname,email,dob from users AS us JOIN users_info AS ui ON us.userid=ui.userid WHERE us.userid="'.$userid.'"');
					$datastore = mysql_fetch_array($temp);
					$_SESSION['userid'] = $datastore["userid"];
					$_SESSION['fname'] = $datastore["fname"];
					$_SESSION['lname'] = $datastore["lname"];
					$_SESSION['email'] = $datastore["email"];
					$_SESSION['dob'] = $datastore["dob"];
					
					
					header("Location: profile.php");
				?>
					
					<p>Login successful!</p>
					

				<?php
				
					
				}
				else {
				?>
					<p>Login unsuccessful! </p>
				<?php
				}
	}
	
?>