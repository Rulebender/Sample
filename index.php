<html>
	<head>
	</head>
	<body>
		<script type="text/javascript">
		// function selectAll(x) {
		// for(var i=0,l=x.form.length; i<l; i++)
		// if(x.form[i].type == 'checkbox' && x.form[i].name != 'sAll')
		// x.form[i].checked=x.form[i].checked?false:true
		// }
		function uncheckall(){
			var inputs = document.getElementsByTagName("input");
			for(var i = 0; i < inputs.length; i++) {
				if(inputs[i].type == "checkbox") {
					inputs[i].checked = false; 
				}  
			}
		}
		</script>
		<style>
			li {
				list-style-type: none;
				margin: 0;
				padding: 0;
			}
		</style>
		<form id="form1" action="results.php" method="POST">
		<?php include("template.php"); ?>
		<input type="submit"></input>
		</form>
	</body>
</html>