<?php
	session_start();
	require("00_init.php");
	$sql="select * from t_user";
	$result=mysqli_query($conn,$sql);
	$rows=mysqli_fetch_all($result,1);
	
	$utype=$_SESSION['utype'];
	$output=["utype"=>$utype,"data"=>$rows];
	echo json_encode($output);
?>