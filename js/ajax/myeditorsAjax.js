var a;
var user=sessionStorage.getItem("data");

window.onload = function () {
	
        //首先要获取当前的href值

        let url = window.location.href.split('#');
         a=url[1];



var str0={
		 				newsId:a,
		 		
		 		}
var str0 = JSON.stringify(str0);
$.ajax({  
           url:'http://192.168.1.100:80/getNewsById' ,  // 后面加个随机数是清除缓存  
//          url:'http://127.0.0.1:8088/' ,
            type: 'post',  
            async: false,
            contentType: "application/json;charset=utf-8",
			dataType: "json",
			data: str0,
            success: function (data) {  
                //字符串拼接  
                data = eval("(" + data + ")");

                document.getElementById("newsName").value=data.newsName;
               document.getElementById("newsAuthor").value=data.newsAuthor;
               document.getElementById("newsSummary").value=data.newsSummary;
               document.getElementById("newsDate").value=data.newsDate;
                $('#summernote').summernote('code', data.newsContext);
            } ,
			error: function() {
				alert("服务器未响应"); 
            
		   }
            
        }); 
        
        
}



	
	function sumbit(){
	var newsName1=$("#newsName").val();
	var newsAuthor1=$("#newsAuthor").val();
	
	var newsSummary1=$("#newsSummary").val();
	
	var newsDate1=$("#newsDate").val();
	
	var newsContext1=$("#summernote").code();
	
	var str0={              
							newsId:a,
							newsByUserId:user,
			 				newsName:newsName1,
			 				newsAuthor:newsAuthor1,
			 				newsSummary:newsSummary1,
			 				newsDate:newsDate1,
			 				newsContext:newsContext1
			 }	
	var str0 = JSON.stringify(str0);
		
		$.ajax({
			
						
						type: "post",
						url: "http://192.168.1.100:80/updateNewsById",
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

