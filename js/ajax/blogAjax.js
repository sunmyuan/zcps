$.ajax({  
           url:'http://192.168.1.100:80/getAllNewsByIdDesc' ,  // 后面加个随机数是清除缓存  
//          url:'http://127.0.0.1:8088/' ,
            type: 'post',  
            async: false,
			dataType: "json",
            success: function (data) {  
                //字符串拼接  
                data = eval("(" + data + ")");
                
                var htmlNodes = ''; 
                
                for(var i = 0; i < data.length; i++){  

                    htmlNodes += ' <div style="height:250px" class="col-lg-4"><div style="height:250px" class="ibox">'+
                    '<div style="height:230px" class="ibox-content">'+
                        '<a href="article.html#'+data[i].newsId+'" class="btn-link" target="_blank">'+
                            '<h2>'+ data[i].newsName +' </h2></a>'+
                        '<div class="small m-b-xs">'+
                            '<strong>'+data[i].newsAuthor+'</strong> <span class="text-muted"><i class="fa fa-clock-o"></i>'+ data[i].newsDate+'</span></div>'+
                        '<p style="height:90px">'+data[i].newsSummary+'</p>'+
                        '<div class="row"><div class="col-md-6"></div><div class="col-md-6"><div class="small text-right"><h5>状态：</h5>'+
                                    '<div> <i class="fa fa-comments-o"> </i> 56 评论 </div>'+
                                    '<i class="fa fa-eye"> </i> 144 浏览</div></div></div></div></div></div>' 
                }  

                $('#container').append(htmlNodes);  
               
               
               
                 
            } ,
			error: function() {
				alert("服务器未响应"); 
            
		   }
            
        }); 