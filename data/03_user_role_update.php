<?php
    require("00_init.php");
//    $uid=$_REQUEST["uid"];
//    $rid=$_REQUEST["rid"];
//    $state=$_REQUEST["state"];
//    $sql="select * from t_user_role where uid='$uid' and rid='$rid'";
//    $result=mysqli_query($conn,$sql);
//    $row=mysqli_fetch_assoc($result);
$sql="insert into t_user_role values(null,$uid,$rid)";
$result=mysqli_query($conn,$sql);
$row=mysqli_affected_rows($conn);
    if($row>0){
        echo '{"code":1,"msg";"添加成功"}'
    }else{
        echo '{"code":-1,"msg";"添加失败"}'
    }
?>