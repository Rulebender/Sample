<?php 
	
	require('extension.php');	
	
	
	$table = $_POST['table'];
	$fields = $_POST['fields'];

	$pdf = new Extension('l','mm','letter',$table,$fields);
	
?>