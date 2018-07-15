var user=sessionStorage.getItem("data");
var myUser=document.getElementById("myUser");
	myUser.innerHTML=user;
var ardic=document.getElementById("artic");
ardic.style.display="none";
var str = {
				userId: user,	
			}
			var str1 = JSON.stringify(str);
			$.ajax({
				type: "post",
				url: "http://192.168.1.100/getLevel",
				async: false,
				contentType: "application/json;charset=utf-8",
				dataType: "json",
				data: str1,
				success: function(data) {
					 data = eval("(" + data + ")");
					 var flag1 = data.level.toString();
					if(flag1=="1"){
						ardic.style.display="none";
						
					}
					else if(flag1=="2"){
						
						
					}else if(flag1=="3"){
							ardic.style.display="block";
						
					}else if(flag1=="4"){
						
						
					}
					else{
						
						
					}
				},
				error: function() {
					alert("服务器未响应");
					flag=false;
				}
			});
