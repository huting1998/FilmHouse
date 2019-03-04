<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <title>MOVIE</title>
  <!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">

<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carousel.css" > -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" >

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/js/common.js"></script> -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">

	<nav class="navbar navbar-default" role="navigation">
<div class="navbar-header">
<img alt="#"  src="${pageContext.request.contextPath}/image/logo.png" width="70px" height="70px"> 
	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">MOVIE</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<form class="navbar-form navbar-left" method="post" action="${pageContext.request.contextPath}/searchVideos.do">
						<div class="form-group">
							<input class="form-control" id="search" type="text"  name="name"/>
						</div> <button class="btn btn-default" type="submit">搜全网</button>
					</form>
<ul class="nav navbar-nav navbar-right">
<li>
<ol class="breadcrumb text-center" id="info">
<c:if test="${ empty login }">
<a href="${pageContext.request.contextPath}/loginView.do">登录</a>|
<a href="${pageContext.request.contextPath}/registView.do">注册</a>&nbsp;&nbsp;&nbsp;</c:if>
<c:if test="${! empty login && login.identity==0}">
<span style="color:gray">${login.name} ,您好！</span>
<a href="watch_view.do">观看历史</a>&nbsp;&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/userView.do">个人中心</a>&nbsp;&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/logOut.do">退出</a>&nbsp;&nbsp;&nbsp;
</c:if>
<c:if test="${! empty login && login.identity==1}">
<span style="color:gray">${login.name} ,您好！</span>
<a href="${pageContext.request.contextPath}/manageFilmView.do">影片管理</a>
 <a id="modal-new" href="#modal-container-new" role="button" class="btn" data-toggle="modal">新剧添加</a>
<a href="watch_view.do">观看历史</a>&nbsp;&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/userView.do">个人中心</a>&nbsp;&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/logOut.do">退出</a>&nbsp;&nbsp;&nbsp;
</c:if>
</ol>	</li>
	<li>
		 <a href="${pageContext.request.contextPath}/vipView.do">开通VIP</a>							
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/uploadView.do">上传</a>
	</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
</div>
 <div class="row">
                <div class="col-md-12">
                <form method="post" action="${pageContext.request.contextPath}/addFilm.do" enctype="multipart/form-data">
                    <div class="modal fade" id="modal-container-new" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="myModalLabel">
                                        影片添加
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                        <form role="form" id="new_book_form">
                                                <div class="form-group">
                                                     
                                                    <label for="book_name">
                                                     剧名：
                                                    </label>
                                                    <input type="text" class="form-control" name="name" id="name" />
                                                </div>
                                                                                                 <div class="form-group">
                                                    <label for="book_publish">
                                                       图片：
                                                    </label>
                                                    <input type="file" class="form-control" name="file" id="file"/>
                                                    </div>
                                                 <div class="form-group">
                                                    <label for="book_publish">
                                                       时长：
                                                    </label>
                                                    <input type="text" class="form-control" name="time" id="time" />
                                                    </div>
                                                <div class="form-group">
                                                    <label for="book_desc">
                                                        描述：
                                                    </label>
                                                    <textarea name="intro" class="form-control" id="intro"></textarea> 
                                                </div>
                                               
                                                    <div class="form-group">

                                                    <label for="task_count">
                                                      类型：
                                                    </label>
                                                	<select name=”type” style="width:100px ; height:30px;" id="type" value="${film.type}" id="type" >
					<option value ="0" ${film.type ==0? "selected='selected'":""}>经典电影</option>
                  <option value ="1" ${film.type ==1? " selected='selected'":""}>经典电视</option>
                  </select>
                                                 </div>
                                          </form>
                                          </div>
                                <div class="modal-footer">
            
                                    <input type="submit" class="btn btn-primary" value="确认提交" >
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        取消
                                    </button>
                                </div>
                            </div>
            
                        </div>
            
                    </div>
           </form>
                </div>
        </div>

