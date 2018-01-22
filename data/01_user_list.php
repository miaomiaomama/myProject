<?php
    require("00_init.php");

    $sql="select * from t_users";
    $result=mysqli_query($conn,$sql);
    $rows=mysqli_fetch_all($result,1);
    echo json_encode($rows);
?>