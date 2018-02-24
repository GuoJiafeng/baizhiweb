<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/25
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mainriversoft.com</title>
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="carousel slide" data-ride="carousel" id="slideshow">
    <div class="carousel-inner">

        <ol class="carousel-indicators">
            <li data-target="#sildeshow" data-slide-to="0" class="active"></li>
            <li data-target="#sildeshow" data-slide-to="1"></li>
        </ol>

        <div class="item active" >
            <img src="${pageContext.request.contextPath}/image/banner.jpg" alt=""/>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/image/banner.jpg" alt=""/>
        </div>
        <a href="#slideshow" class="left carousel-control" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#slideshow" class="right carousel-control" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>


    </div>
</div>

<div class="container">
<div class="row" style="font-size:20px">
    <marquee width=100% direction=left align=middle> ${requestScope.contents[0]}</marquee>

</div>

</div>
<jsp:include page="foot.jsp"/>
</body>
</html>
