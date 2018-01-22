<?php
    require("00_init.php");
    $sql="select * from t_role";
    $result=mysqli_query($conn,$sql);
    $rows=mysqli_fetch_assoc($result);
    echo json_encode($rows);
?>
