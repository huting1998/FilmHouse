<%@ include file="head.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/7b.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<div class="carousel slide" id="carousel-170938">
				<ol class="carousel-indicators">
					<li class="active" data-target="#carousel-170938" data-slide-to="0">
					</li>
					<li data-target="#carousel-170938" data-slide-to="1">
					</li>
					<li data-target="#carousel-170938" data-slide-to="2">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="image/lunbo1.jpg"/>
						<div class="carousel-caption">
							<h4>
								大型古装喜剧节目
							</h4>	
<p>
								欢喜密探
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/lunbo3.jpg" />
						<div class="carousel-caption">
							<h4>
								大型古装喜剧节目							</h4>
							<p>
								武林外传
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="image/back1.png" />
						<div class="carousel-caption">
							<h4>
								欧美大片
							</h4>
							<p>
								温暖的尸体
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-170938" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-170938" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
				</div><img src="${pageContext.request.contextPath}/image/home.png" width="750px" height="200px" />
		</div>
		<div class="col-md-4 column">
			<c:if test="${! empty movies }">
		<div><span style="color:white;font-size:15px;" >经典电影推荐</span></div>
			<span style="color:white">
			<c:forEach items="${movies}" var="m" >
			<a href="#">
		    <div style="width:125px;height:185px; float:left">
		     <img  class="img-rounded" src="${pageContext.request.contextPath}${m.pic}"width="110px" height="110px"/><br>
		   <span style="color:#fff">✶${m.name}✶</span><br>
		   <span style="margin-left:10px;color:#fff">  ${m.time}</span><br>
		   	   <span style="margin-left:20px;color:#fff">  ${m.intro}</span>
		    </div></a>
			</c:forEach>
			</span>
			</c:if>

<c:if test="${! empty search }">
		<div><span style="color:white;font-size:15px;" >您要找的是不是：</span></div>
			<span style="color:white">
			<c:forEach items="${search}" var="s" >
			<a href="#">
		    <div style="width:130px;height:185px; float:left">
		     <img  class="img-rounded" src="${pageContext.request.contextPath}${s.pic}"width="110px" height="110px"/><br>
		   <span style="color:#fff">✶${s.name}✶</span><br>
		   <span style="margin-left:10px;color:#fff">  ${s.time}</span><br>
		   	   <span style="margin-left:20px;color:#fff">  ${s.intro}</span>
		    </div></a>
			</c:forEach>
			</span>
			</c:if>

<c:if test="${! empty tvs }">
		<div><span style="color:white;font-size:15px;" >经典电视剧推荐</span></div>
			<span style="color:white">
			<c:forEach items="${tvs}" var="t" >
			<a href="#">
		    <div style="width:130px;height:185px; float:left">
		     <img  class="img-rounded" src="${pageContext.request.contextPath}${t.pic}"width="110px" height="110px"/><br>
		   <span style="margin-left:30px;">  ${t.name}</span><br>
		   <span style="margin-left:30px;">  ${t.time}</span><br>
		   	   <span style="margin-left:7px;">  ${t.intro}</span>
		    </div></a>
			</c:forEach>
			</span>
			</c:if>

<c:if test="${! empty cs }">
		<div><span style="color:white;font-size:15px;" >经典动漫推荐</span></div>
			<span style="color:white">
			<c:forEach items="${cs}" var="c" >
			<a href="">
		    <div style="width:130px;height:185px; float:left">
		     <img  class="img-rounded" src="${pageContext.request.contextPath}${c.pic}"width="110px" height="110px"/><br>
		   <span style="margin-left:30px;">  ${c.name}</span><br>
		   <span style="margin-left:30px;">  ${c.time}</span><br>
		   	   <span style="margin-left:7px;">  ${c.intro}</span>
		    </div></a>
			</c:forEach>
			</span>
			</c:if>

		<c:if test="${! empty vp }">
		<div><span style="color:white;font-size:15px;" >经典VIP推荐</span></div>
			<span style="color:white">
			<c:forEach items="${vp}" var="v" >
			<a href="${pageContext.request.contextPath}/VipWatch.do">
		    <div style="width:130px;height:185px; float:left">
		     <img  class="img-rounded" src="${pageContext.request.contextPath}${v.pic}"width="110px" height="110px"/><br>
		   <span style="margin-left:30px;">  ${v.name}</span><br>
		   <span style="margin-left:30px;">  ${v.time}</span><br>
		   	   <span style="margin-left:7px;">  ${v.intro}</span>
		    </div></a>
			</c:forEach>
			</span>
			</c:if>
		</div>
	</div>
</div>
</body>
<%@ include file="foot.jsp"%>
