<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/25
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>How it works?</title>
</head>
<body>
<jsp:include page="top.jsp"/>


<div class="container">
    <div class="row ">

        <div class="embed-responsive embed-responsive-16by9">
            <video controls="controls" loop="loop">
                <%--英语--%>
                <c:if
                        test="${sessionScope.languageStatus eq '0'}">
                    <source src="${pageContext.request.contextPath }/video/cn.mp4" type="video/mp4">
                </c:if>
                <%--中文--%>
                <c:if
                        test="${sessionScope.languageStatus eq '1'}">
                    <source src="${pageContext.request.contextPath }/video/cn.mp4" type="video/mp4">
                </c:if>
                <%--德语--%>
                <c:if
                        test="${sessionScope.languageStatus eq '2'}">
                    <source src="${pageContext.request.contextPath }/video/cn.mp4" type="video/mp4">
                </c:if>

            </video>
        </div>
    </div>

    <div class="row ">
        <div class="col-md-12">
            <h1 class="page-header" style="text-align: center;">${requestScope.contents[0]}</h1>
        </div>
    </div>

    <div class="container">
        <div class="row ">
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/alibaba.jpg"
                                                  alt="阿里巴巴"></div>
            <div class="col-md-4 col-sm-4 "><img style="width: 200px;height: 150px;"
                                                 src="${pageContext.request.contextPath }/img/baidu.jpg" alt="百度">
            </div>
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/tengxun.jpg"
                                                  alt="腾讯"></div>
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/xiaomi.jpg"
                                                  alt="小米"></div>
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/ximenzi.jpg"
                                                  alt="西门子"></div>
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/huawei.jpg"
                                                  alt="华为"></div>

        </div>
    </div>
    <div class="row ">
        <div class="col-md-12">
            <h1 class="page-header" style="text-align: center;">${requestScope.contents[1]}</h1>
        </div>
    </div>

    <div class="container">
        <div class="row ">
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/project01.jpg"
                                                  alt="阿里巴巴"></div>
            <div class="col-md-4 col-sm-4 "><img style="width: 200px;height: 150px;"
                                                 src="${pageContext.request.contextPath }/img/project02.jpg" alt="百度">
            </div>
            <div class="col-md-4  col-sm-4 "><img style="width: 200px;height: 150px;"
                                                  src="${pageContext.request.contextPath }/img/project03.png"
                                                  alt="腾讯"></div>


        </div>
    </div>
</div>
<div style="padding-top: 80px;">
    <jsp:include page="foot.jsp"/>
</div>


</body>
</html>
