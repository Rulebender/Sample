<?php 
	
	require('connection.php');
	$con = new Connection();
	
	$tables = $con->query("SHOW TABLES FROM ".$con->database);
	
	echo "<ul>";
	
	while($row = mysql_fetch_row($tables)){
			
			echo "<li><input type='radio' name='table' value='".$row[0]."'>".$row[0]."</li>";
			
			$result = $con->query("SHOW COLUMNS FROM ".$con->database.'.'.$row[0]);
			
			echo "<ul>";
			while ($row = mysql_fetch_assoc($result)) {
				echo "<li><input type='checkbox' name='fields[]' value='".$row["Field"]."'>".$row["Field"]."</li>";	
			}
			echo "</ul>";
	}
	echo "</ul>";

?>