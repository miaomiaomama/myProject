var uname = sessionStorage.getItem("uname");
if(!uname){
	location.href="login.html";
}
$(function(){
	$.ajax({
		type:"get",
		url:"data/02_userlist.php",
		success:function(data){
			// console.log(data);
			var html="";
			var rows=data.data;
			var type=data.utype;
			for(var i=0;i<rows.length;i++){
				var obj=rows[i];
				html+=`<tr>
					<td>${obj.id}</td>
					<td>${obj.uname}</td>
					<td>${obj.utype==0?"管理员":"普通用户"}</td>
					<td>	`;
				if(type==0){
					html+=`</td>
					<td><a href="#">查看</a>
					<td><a href="#">更新</a>	 
					<td><a href="#">删除</a>			
					</td>
					</tr>`;
				
				}
			}
			$("#tbody").html(html)
		},
		error:function(){
			alert("网络故障请检查");
		}
	})
})