<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	function check(){
    var name = document.getElementById("name").value;
    var file = document.getElementById("file").value;
    if(name==""){
        alert("填写上传人");
        return false;
    }
    if(file.length==0||file==""){
        alert("请选择上传文件");
        return false;
    }
    return true;
}
</script>
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back6.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div style="margin-top:30px "></div>
	<div style="margin-left:500px "><span style="color:white;font-size:30px;">✧ 文件上传 ✧</span></div>
	<div class="container" style="margin-left:250px;" >
	<div class="row clearfix">
		<div class="col-md-6 column">
			<form role="form"action="${pageContext.request.contextPath }/fileUpload.do"
    method="post" enctype="multipart/form-data" onsubmit="return check()">
				<div class="form-group">
					 <label for="exampleInputEmail1"><span style="color:white">上传人：</span></label>
					 <input class="form-control" id="name" type="text"  name="name"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputFile"><span style="color:white">请选择文件：</span></label>
					 <input id="file" type="file" multiple="multiple" name="uploadfile"/>
				</div>
				<div class="form-group">
					<div style="margin-top:50px;text-align:center; ">
					<button type="submit" class="btn btn-default" >上传</button>
					</div>
				</div>
				</div>

				 
				 	

			</form>
		</div>
	</div>
</div></body>