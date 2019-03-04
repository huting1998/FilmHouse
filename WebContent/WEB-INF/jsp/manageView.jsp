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
	
	<%@ include file="head.jsp"%>
	
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/image/back6.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div class="row">
    <div class="col-sm-12">
        <table class="table">
            <thead>
                <tr>
                    <th>影片</th>
                    <th>时长</th>
                    <th>介绍</th>
                    <th>类型</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${films}" var="f">
               <tr>
              <td>
              <img src="${pageContext.request.contextPath}/${f.pic}" width="100px"; height="70px;"/><br>
              ${f.name}           
              </td>
              <td>
              ${f.time}
              </td>
              <td>
              ${f.intro}
              </td>
              <td>
             <c:if test="${f.type==0 }">
              经典电影
             </c:if>
             <c:if test="${f.type==1 }">
             经典电视剧
             </c:if>
              </td>
              <td>
              <a href="${pageContext.request.contextPath}/updateFilmView.do?id=${f.id}" style="color:yellow;">修改
              </a>&nbsp;&nbsp;&nbsp;
              <a style="color:green;"onclick="deleteFilm(${f.id})" >删除</a>
              </td>
               </tr>
               </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>

<script>
function deleteFilm(id) {
    if(confirm('确实要删除该商品吗?')) {
$.post("${pageContext.request.contextPath}/delete.do",{"id":id},
function(data){
            if(data =="OK"){
                alert("商品删除成功！");
                window.location.reload();
            }else{
                alert("删除商品失败！");
                window.location.reload();
            }
        });
    }
}
</script>

<%@ include file="foot.jsp"%>