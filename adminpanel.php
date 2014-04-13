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
	include('config.php')
	?>
	<table>
	<tr>
			<!-- table header -->
			<th>First Name</th><th>Last Name</th><th>Sex</th><th class="theader">Age</th><th class="theader">status</th>
	</tr>
	<?php
		if(mysql_num_rows($result))
		{
			$currcolour = 1; /*will be used to change the class for the colour of the rows */
			$totalcredit = 0;
			while($row = mysql_fetch_assoc($result))
			{
				if($currcolour == 1)
				{
					$rowcolour = 'dark'; /* sets the variable that will be used by the class to make the row dark coloured*/
					$currcolour = 2;  /* changed to 2 so that 'light' colour will be true for the next row */
				}
				else {
					$rowcolour = 'light';  /* sets the variable that will be used by the class to make the row light coloured */
					$currcolour = 1;     /* changed to 1 so that the 'dark' colour will be true for the next row */
				}
				/*6 lines of code below assigns the course code, title, discipline, level, credits and semester to respectively php variables */
				$ccode = $row["code"];    
				$ctitle = $row["title"];
				$cdisp = $row["discipline"];
				$clevel = $row["level"];
				$ccredit = $row["credits"];
				$csemest = $row["semester"];
				
				$totalcredit = $totalcredit + $ccredit;  /* totals the credit for the number of courses displayed */
				?>
				<tr class="<?= $rowcolour ?>"> <!-- the php variable $rowcolour contains the correct class to be selected for each row -->
					<td><?= $cdisp ?></td><td><?= $ccode ?></td><td><?= $ctitle ?></td><td class="numbers"><?= $clevel ?></td><td class="numbers"><?= $csemest ?></td><td class="numbers"><?= $ccredit ?></td>
				</tr>
				<?php
				
			}
			?>
			<tr class="totalrows">
				<td colspan="6"><hr /></td>
			</tr>
			<tr class="totalrows">
				<td class="totfield">Total</td><td colspan="4"></td><td class="totfield" id="totalval"><?= $totalcredit ?></td> <!-- php variable $totalcredit contains the sum of course credtis displayed in the table -->
			</tr>
			<?php
		}
		else {
			?>
			<tr><td colspan="6">No user data found!</td></tr> <!-- displayed if no record is found in the mysql database -->
			<?php
		
		}
		?>
		</table>
		<?php
		mysql_close($con); //closes the non-persistent connection to the MySQL server
?>
</div>
</body>
</html>