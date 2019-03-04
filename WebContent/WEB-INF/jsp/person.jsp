<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   function modify(){
	   var id=$("#id").val();
		var name = $("#name").val();
		var password = $("#password").val();
		var sex=$("#sex").val();
		var age=$("#age").val();
		$.ajax({
			url : "${pageContext.request.contextPath }/modify.do",
			type : "post", 
			// data表示发送的数据
		data :JSON.stringify({
			"id":id,
			"name":name,
			"password":password,
			"sex":sex,
			"age":age
			}),
			// 定义发送请求的数据格式为JSON字符串
			contentType : "application/json;charset=UTF-8",
			//定义回调响应的数据格式为JSON字符串,该属性可以省略
			dataType : "json",
			//成功响应的结果
			success : function(data){
				if(data){					
					alert("修改成功");
					  location.href="${pageContext.request.contextPath }/index.do";
					}else	{
						alert("修改失败！");
			}
			},
			
		});
   }

</script>	
	
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back2.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

	<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-6 column" >
		<div style="text-align:center; "><span style="color:white;font-size:30px;">✧ 个人中心 ✧</span></div>
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1"><span style="color:white;font-size:20px;">id:</span></label><input type="text" class="form-control" id="id" value="${user.id }"/>
				</div>
				
				<div class="form-group">
					 <label for="exampleInputEmail1"><span style="color:white;font-size:20px;">姓名:</span></label><input type="text" class="form-control" id="name" value="${user.name }" />
				</div>
				
				<div class="form-group">
					 <label for="exampleInputPassword1"><span style="color:white;font-size:20px;">密码:</span></label><input type="password" class="form-control" id="password" value="${user.password}"  />
				</div>
				
					<div class="form-group" >
					 <label class="col-sm-2 control-label" for="exampleInputEmail1"><span style="color:white;font-size:20px;">性别：</span></label>
					<div class="col-sm-8">
						<c:if test="${user.sex==1}">
						<input   type="radio" name="sex" value="1" checked /><span style="color:white;">男</span>
						<input   type="radio" name="sex" value="0" /><span style="color:white;">女</span>
						</c:if>
						<c:if test="${user.sex==0}">
						<input   type="radio" name="sex" value="1"  /><span style="color:white;">男</span>
						<input   type="radio" name="sex" value="0" checked /><span style="color:white;">女</span>
						</c:if>
					</div>
				</div>
				<div style="margin-top:80px;text-align:center; ">
				<button type="submit" class="btn btn-default" onclick="modify()">确认修改</button>
				<button type="reset" class="btn btn-default" >取消</button></div>
			</form>
		</div>
		<div class=" col-md-2 column ">
		</div>
	</div>
</div>
	

	</body>