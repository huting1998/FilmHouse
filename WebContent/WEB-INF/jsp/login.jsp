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
	
	<script>
	function testLogin(){
	 // 获取输入的用户名和密码
	var id=$("#id").val();
	var name = $("#name").val();
	var password = $("#password").val();
	$.ajax({
		url : "${pageContext.request.contextPath }/login.do",
		type : "post", 
		// data表示发送的数据
	data :JSON.stringify({
		"id":id,
		"name":name,
		"password":password
		}),
		// 定义发送请求的数据格式为JSON字符串
		contentType : "application/json;charset=UTF-8",
		//定义回调响应的数据格式为JSON字符串,该属性可以省略
		dataType : "json",
		//成功响应的结果
		success : function(data){
			console.log(JSON.parse(data));
			if(data!=0){					
				alert("登陆成功");
				console.log("ia masdasdu");
				  location.href="${pageContext.request.contextPath }/index.do";
				}else	{
					alert("登录失败！");
					console.log("ia mu");
		}
		},
		
		erorr:function(){
			
		}
	});
	}
	</script>
	
	
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back3.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
	<div style="margin-top:30px ">
	<div style="margin-left:510px "><span style="color:white;font-size:30px;">✧ 登录 ✧</span></div>
<div class="container" style="margin-left:200px;">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputEmail3"><span style="color:white;font-size:20px;">id:</span></label>
					<div class="col-sm-8">
						<input class="form-control" id="id" type="number" id="id"/>
					</div>
				</div>
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputPassword3"><span style="color:white;font-size:20px;">姓名:</span></label>
					<div class="col-sm-8">
						<input class="form-control" id="name" type="text" name="name" />
					</div>
				</div>
								<div class="form-group">
					 <label class="col-sm-2 control-label" for="inputPassword3"><span style="color:white;font-size:20px;">密码：</span></label>
					<div class="col-sm-8">
						<input class="form-control" id="password" type="password" name="password" />
					</div>
				</div>
				<div class="form-group">
					<div style="margin-top:50px;text-align:center; ">
					<button type="button" class="btn btn-default" onclick="testLogin()">登录</button>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	</div>
	<a href="${pageContext.request.contextPath}/registView.do" style="color:white; margin-left:500px;">还没有账号？->立即注册 </a>
	</body>
	