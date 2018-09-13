<link rel="stylesheet" href="../css/bootstrap.min.css">

<?php
$hostname_conne10 = "localhost";
$database_conne10 = "db_consulting";
$username_conne10 = "root";
$password_conne10 = "24101989";
$conne10 = mysql_connect($hostname_conne10, $username_conne10, $password_conne10) or trigger_error(mysql_error(),E_USER_ERROR); 


mysql_select_db($database_conne10, $conne10);
$query_rscategoriasd = "select * from tbl_contact order by date_contact desc";
$query = mysql_query($query_rscategoriasd, $conne10) or die(mysql_error());

//$data = mysql_fetch_array($query);

$query_user = "select * from user";
$user = mysql_query($query_user, $conne10) or die(mysql_error());
$clave='';
while ($myuser = mysql_fetch_array($user)) {
	$clave = $myuser['clave'];
}



$table ="<table class='table' id='prueba'><tr><td> #</td> <td>Name</td> <td>Date</td> <td>Reason</td> <td>Comment</td> <td>Company</td> <td>Email</td> <td>Status</td> </tr>";
	$cont = 1;
	while ($data = mysql_fetch_array($query)) {
		$table .= '<tr><td> '.$cont.'</td> <td>'.$data['name']."</td> <td>".$data['date_contact']."</td>  <td>".$data['reason_id']."</td> <td>".$data['comment']."</td> <td>".$data['empresa']."</td> <td>".$data['email']."</td> <td>".$data['status']."</td></tr>";
		$cont++;
	}
	$table .= "</table>";		
	echo $table;	
	mysql_close();

?>

<input type="hidden" id="demo" value=""/>
<input type="hidden" id="user" value="<?php echo $clave ?>"/>
<button onClick="demo()">Login</button>

<script type="text/javascript">

	document.getElementById('prueba').style.display = "none";

	function demo(){
		var valor = document.getElementById('demo');

		if(valor.value == ''){
			//
			//table.text = "";
			var person = prompt("Please enter your PASSWORD", );

			if (person == null || person == "") {
			    alert("User cancelled the prompt.");
			} else {

				var clave = document.getElementById('user').value;

			    if(person == clave){

			    	document.getElementById('prueba').style.display = 'unset';
			    }
			}
		}
	}
	
	
	
</script>