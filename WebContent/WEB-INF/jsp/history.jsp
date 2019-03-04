<%@ include file="head.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/7b.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h2>
					您最近看过：
				</h2>
			</div>
			<div class="row">
			<c:forEach items="${films}" var="f" >
				<div class="col-md-4">
					<div class="thumbnail">
						<img src="${pageContext.request.contextPath}${f.pic}" />
						<div class="caption">
							<h3>
								${f.name}
							</h3>
							<p>
								 ${f.intro}
							</p>
							<p>
							
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="foot.jsp"%>
