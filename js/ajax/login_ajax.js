  var flag=true;
  function myFunction(obj){
    var user=document.getElementById("user").value;
   	var password=document.getElementById("password").value;

			var str = {
				userId: user,
				userPassword: password
			}
			var str1 = JSON.stringify(str);
			$.ajax({
				type: "post",
				url: "http://192.168.1.100/userLogin",
				async: false,
				contentType: "application/json;charset=utf-8",
				dataType: "json",
				data: str1,
				success: function(data) {
						data = eval("(" + data + ")");
					 var flag1 = data.status.toString();
					if(flag1=="0"){
						sessionStorage.setItem("data", user); 
						flag=true;
						
					}
					else if(flag1=="1"){
						alert("用户名不存在");
						flag=false;
						
					}
					else{
						alert("密码错误");
						flag=false;
						
					}
				},
				error: function() {
					alert("服务器未响应");
					flag=false;
				}
			});
		
   			return flag;
   	}
   		
