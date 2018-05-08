<?php

$hostname_conne10 = "localhost";
$database_conne10 = "db_consulting";
$username_conne10 = "root";
$password_conne10 = "24101989";
$conne10 = mysql_connect($hostname_conne10, $username_conne10, $password_conne10) or trigger_error(mysql_error(),E_USER_ERROR); 


mysql_select_db($database_conne10, $conne10);
$query_rscategoriasd = "Insert into tbl_contact SET 
						name='".  $_POST['nombre'] ."' , 
						date_contact='".date('Y-m-d H:i:s')."', 
						reason_id='".  $_POST['motivo'] ."', 
						empresa='".  $_POST['empresa'] ."', 
						email='".  $_POST['email'] ."', 
						comment='".  $_POST['mensaje'] ."', 
						status=1 ";
$query = mysql_query($query_rscategoriasd, $conne10) or die(mysql_error());
		 mysql_query($query);
		 mysql_close();



//var_dump( $_POST );

?>