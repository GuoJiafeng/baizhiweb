<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/25
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="top.jsp"/>

<div class="container">

    <div class="row">
        <div class="col-md-6 col-xs-12 hidden-xs">
            <h1><br><br></h1>
            <img style="width:500px;height:300px;margin-top:40px;box-shadow:16px 12px 24px #888;max-width:100%" src="${pageContext.request.contextPath}/image/timg.jpg">
        </div>
        <div class="col-md-6 col-xs-12 visible-xs-block">
            <img style="width:500px;height:300px;margin-top:40px;box-shadow:16px 12px 24px #888;max-width:100%" src="${pageContext.request.contextPath}/image/timg.jpg">
        </div>
        <div class="col-md-6 col-xs-12">
            <h1 class="page-header" style="">${requestScope.contents[0]}</h1>
            <h4 style="text-shadow:4px 4px 4px #999">${requestScope.contents[1]}</h4>
        </div>
    </div>
</div>

<jsp:include page="foot.jsp"/>


</body>
</html>
