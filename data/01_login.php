<?php
	session_start();
	@$uname=$_REQUEST["uname"];
	@$upwd=$_REQUEST["upwd"];
	require("00_init.php");
	$sql="select * from t_user where uname='$uname' and upwd=md5('$upwd')";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	if($row!=""){
		$_SESSION['uid']=$row['id'];
		$_SESSION['utype']=$row['utype'];
		echo '{"code":1,"msg":"登录成功"}';
	}else{
		echo '{"code":-1,"msg":"登录失败"}';
	}
	
?>