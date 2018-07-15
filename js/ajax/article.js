var a;
window.onload = function () {
        //首先要获取当前的href值

        let url = window.location.href.split('#');
         a=url[1];

var articName=document.getElementById("articName");
var articAuthor=document.getElementById("articAuthor");
var articDate=document.getElementById("articDate");


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
                articName.innerHTML=data.newsName;
                articAuthor.innerText=data.newsAuthor;
                articDate.innerText=data.newsDate;
                var htmlNodes = ''; 
                htmlNodes=data.newsContext;
               

                $('#article').append(htmlNodes);  
               
               
               
                 
            } ,
			error: function() {
				alert("服务器未响应"); 
            
		   }
            
        }); 
        
        
}

function guan(){
	window.opener=null;  
    window.open('','_self');  
    window.close();  
	
}
