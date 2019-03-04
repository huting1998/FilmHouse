<%@page pageEncoding="UTF-8"%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
	<%@ include file="head.jsp"%>
<body style="background-color:rgba(0,0,0,0.8)">
<div style="width:800px; height:800px;" >
<p style="color:white;" align="center">上传文件成功！</p>
<a href="${pageContext.request.contextPath}/index.do">返回首页>></a>
</div>
</body>
<%@ include file="foot.jsp"%>