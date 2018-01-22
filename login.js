$("#btn").click(function(e) {
	/* Act on the event */
	var u=$("#uname").val();
	var p=$("#upwd").val();
	$.ajax({
		type:"post",
		url:"data/01_login.php",
		data:{uname:u,upwd:p},
		success:function(data){
			if(data.code>0){
				alert(data.msg);
				sessionStorage.setItem("uname",u);
				location.href="main.html";
			}else{
				alert(data.msg);
			}
			
		},
		error:function(){
			alert("网络错误请检查");
		}
	})
});