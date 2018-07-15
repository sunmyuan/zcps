var user=sessionStorage.getItem("data");
function sumbit(){
	
var newsName1=$("#newsName").val();
var newsAuthor1=$("#newsAuthor").val();

var newsSummary1=$("#newsSummary").val();

var newsDate1=$("#newsDate").val();

var newsContext1=$("#summernote").code();

var str0={              newsByUserId:user,
		 				newsName:newsName1,
		 				newsAuthor:newsAuthor1,
		 				newsSummary:newsSummary1,
		 				newsDate:newsDate1,
		 				newsContext:newsContext1
		 }	
var str0 = JSON.stringify(str0);
	
	$.ajax({
		
					
					type: "post",
					url: "http://192.168.1.103:80/createNews",
					async: false,
					contentType: "application/json;charset=utf-8",
					dataType: "json",
					data: str0,
					success: function(data1) {
						data1 = eval("(" + data1 + ")");
						
						flag11 = data1.status.toString();

						if(flag11=="1"){
							
						    alert("提交成功")
							
						}
						
						else{
							alert("提交失败，请重试");
						}
					},
					error: function() {
						alert("服务器未响应，修改失败！"); 
            
					}
			});
}
