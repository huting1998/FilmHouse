<%@page pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
	
	
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back3.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div style="margin-top:30px ">
	<div style="margin-left:510px "><span style="color:white;font-size:30px;">✧ 影片修改 ✧</span></div>
<div class="container" style="margin-left:200px;">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<form class="form-horizontal" role="form">
			<input type="hidden" value="${film.id}" id="id" name="id"/>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3"><span style="color:white;font-size:20px;">名称:</span></label>
					<div class="col-sm-8">
						<input class="form-control" type="text" id="name"  name="name" value="${film.name}"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputPassword3"><span style="color:white;font-size:20px;">时长:</span></label>
					<div class="col-sm-8">
						<input class="form-control" id="time" type="text" name="time" value="${film.time}" />
					</div>
				</div>
								<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputPassword3"><span style="color:white;font-size:20px;">介绍：</span></label>
					<div class="col-sm-8">
						<input class="form-control" id="intro" type="text" name="intro" value="${film.intro}" />
					</div>
				</div>
					<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputPassword3"><span style="color:white;font-size:20px;">类型：</span></label>
					<div class="col-sm-8">
				<select name=”type” style="width:100px ; height:30px;" id="type" value="${film.type}" id="type" >
					<option value ="0" ${film.type ==0?"selected='selected'":""}>经典电影</option>
                  <option value ="1" ${film.type ==1? " selected='selected'":""}>经典电视</option>
					</select>
					</div>
				</div>
				<div class="form-group">
					<div style="margin-top:50px;text-align:center; ">
					<button type="button" class="btn btn-default" onclick="testUpdate()">确认修改</button>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	</div>

		</div>
	</div>
</div>
	</div>
	</body>
	<script>
	function testUpdate(){
	 // 获取输入的用户名和密码
    var id = $("#id").val();
	var name = $("#name").val();
	var time =$("#time").val();
	var intro=$("#intro").val();
	var type=$("#type").val();
	$.ajax({
		url : "${pageContext.request.contextPath }/update.do?id=${film.id}",
		type : "post", 
		// data表示发送的数据
	data :JSON.stringify({
		"name":name,
		"time":time,
		"intro":intro,
		"type":type
		}),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			console.log(JSON.parse(data));
			if(data!=0){					
				alert("修改成功");
				console.log("ia mdasdu");
				  location.href="${pageContext.request.contextPath }/manageFilmView.do";
				}else	{
					alert("你没有做任何的修改哦！");
					console.log("ia mu");
		}
		},
		
		erorr:function(){
			
		}
	});
	}
	</script>