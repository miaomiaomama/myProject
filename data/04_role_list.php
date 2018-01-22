<?php
require("00_init.php");
	$uid=$_REQUEST["uid"];
	$sql="select r.rid from t_role as r,t_user_role as u where r.rid=u.rid and u.uid=$uid";
	$result=mysqli_query($conn,$sql);
	$rows=mysqli_fetch_all($result,1);
	echo json_encode($rows);
?>