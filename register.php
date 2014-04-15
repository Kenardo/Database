<!DOCTYPE html>
<html lang="en">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<link href="display.css" rel="stylesheet">
<script type="text/javascript" src="jsfunctions.js"></script>

<div class="masterdiv">
	<h2>AARK book</h2>
</div>
<?php
    
     include('config.php');
?>
     <?php
     if(isset($_POST['submit'])) {
	$errors = "";
        $ln = strtolower(stripslashes($_POST['ln']));
	$fn = strtolower(stripslashes($_POST['fn']));
	$em = stripslashes($_POST['em']);
	$pass = stripslashes($_POST['pass']);
        
	$confpass = stripslashes($_POST['confpass']);
        
      
        if($pass == $confpass) {
            if(strlen($pass) > 5) 
            {
				
					$password = md5($pass);
					if(preg_match('#^(([a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+\.?)*[a-z0-9!\#$%&\\\'*+/=?^_`{|}~-]+)@(([a-z0-9-_]+\.?)*[a-z0-9-_]+)\.[a-z]{2,}$#i',$_POST['em']))
					{
						$userid = mysql_num_rows(mysql_query('select id from users where email="'.$em.'"'));
						if($userid == 0) 
						{
							$numid = mysql_num_rows(mysql_query('select id from users'));
							$id = $numid+1;
							if(mysql_query('insert into users(id,lname,fname,email,password) values ("'.$id.'","'.$ln.'","'.$fn.'","'.$em.'","'.$password.'")'))
							{   
								?>
								<div class="message">You have successfully been signed up. You can log in.<br />
								<a href="welcome.html">Log in</a></div>   
								<?php						   
							}
							else {
								$errors .= "An error occurred while signing up.";
							}
						}
						else {
							$errors .= "That email is already taken";
						}
					}
					else {
						$errors .= "Invalid email address!";
					}
			
			  
            }
            else {
                 $errors .= "Password too short";
            }
        } 
        else {
             $error .= "The passwords do not match!";
        }
        
        ?>
        <link rel="stylesheet" type="text/css" href="survey.css" />
        <p><?= $errors ?></p>
        <?php
     }
     else {
          $errors .= "Please fill out the form";
          print $errors;
     }
       
?>

<div class="container">
	<form action="" method="post">
	<fieldset>
	    
		<legend>New User Signup:</legend>
		
		<label class="left" for="fname"><strong>First Name:</strong></label>
		<label class="column"><input type="text" size="16" maxlength="16" id="fname" name="fname"></label><br /><br />
		
		<label class="left" for="lname"><strong>Last Name:</strong></label>
		<label class="column"><input type="text" size="16" maxlength="16" id="lname" name="lname"></label><br /><br />
		
		<label class="left" for="email"><strong>Email:</strong></label>
		<label class="column"><input type="text" size="50" maxlength="128" id="email" name="email"></label><br /><br />
		
		<label class="left" for="pass"><strong>Password:</strong></label>
		<label class="column"><input type="password" size="30" id="pass" name="pass" maxlength="30"></label><br /><br />
		
		<label for="confpass"><strong>Confirm Password: </strong></label>
		<label class="column"><input type="password" id="confpass" size="30" name="confpass" maxlength="25"></label><br /><br />
			
		<button name="submit" class="btn btn-info signup" type="submit">Sign up</button>
		
	</fieldset>

	</form>
</div>
</html>
