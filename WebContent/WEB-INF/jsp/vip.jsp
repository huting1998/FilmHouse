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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style> 
a{
 color:yellow;
 font-size:20px;
margin-left:800px;
}
a:hover{
 color:white;
 text-decoration:none; 
}


</style>
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back5.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
	                        <h1 style="color:white;" align="center">VIP尊贵特权</h1>
	                        <c:if test="${login.vip==1}">
	                      <h3 style="color:white"> 您已经是我们的会员啦。无须开通</h3>
	                             <a href="">点击查看vip会员特权</a>
	                        </c:if>
	                        <c:if test="${login.vip==0||login.vip==null }">
	                          <a href="" >您目前还不是我们的会员,点击开通会员</a>
	                        <div style="background-color:rgba(0,0,0,0.1);color:white; width:700px;margin-left:300px;">
	                         <h3  align="center">  File-House VIP特权</h3><br>
	  
	                         <span style="font-size:15px;">
1) 每月送福利<br>
所有的文库VIP用户在有效期内都可以享受每月由百度文库发放的文档下载特权，用来下载财富值文档（不包含付费文档），每次下载消耗您一个特权机会，同一篇文档只需要消耗一次特权即可，其中通用下载特权可下载全站财富值文档，教育下载特权可下载教育专区内财富值文档。下载特权自VIP资格生效起每31天发放一次，每次发放次数由您购买的VIP类型决定。<br>
2) 免费专区<br>
所有的文库VIP用户有效期内都可以直接下载VIP免费专区中的文档， 无需扣除下载特权或财富值。<br>
3) 购买打折<br>
所有的文库VIP用户在购买精选的付费文档时都可享受所有付费内容8折优惠，省上加省，优惠不断；参与折扣的付费文档均会在阅读页标识出折扣价格。<br>
4) 免费电影<br>
所有的文库VIP用户都可免费阅读会员免费区内的千册精品图书期刊等，教育VIP用户可额外免费阅读教育VIP专享图书。<br>
5) 精彩VIP活动<br>
活动多多优惠多多，常来就行。<br>
6) 财富值加倍<br>
所有的文库VIP用户上传的财富值标价不为0的文档在前100次被其他用户下载时，为VIP用户增加的财富值为标价的两倍。<br>
7) 高级搜索<br>
所有的文库VIP用户可以在搜索时使用专有高级功能：一键只搜索0下载券文档；下载券不够用不再有压力！<br>
8) 点亮身份<br>
当您成为本站VIP后，您的专有身份标示将被点亮。<br>

	   </span>                     
	                        </div>
	                      
	                        </c:if>
	                       
	</body>