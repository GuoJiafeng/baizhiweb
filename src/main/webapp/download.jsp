<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>

    <link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/webStyle1.css"/>
    <style type="text/css">
        .videoC {
            height: 400px;
            width: 800px;
            border: 1px solid black;
            margin: 30px auto;
        }
        .videoC video{
            height: 100%;
            width: 100%;
        }
        .showDiv {
            width: 1000px;
            margin: 20px auto;
            height: 430px;
            border: 1px solid black;
        }

        .showLogo {
            width: 100%;
            height: 150px;
        }

        .showLogo ul {
            padding-left: 100px;
        }

        .showLogo li {

            float: left;
            display: block;
            border: 1px solid black;
            height: 150px;
            width: 200px;
            margin-left: 50px;
        }

        .showP ul {
            padding-left: 100px;
        }

        .showP li {
            float: left;
            display: block;
            border: 1px solid black;
            height: 150px;
            width: 200px;
            margin-left: 50px;
            box-sizing: border-box;
        }

        .showDiv img {
            height: 140px;
            width: 190px;
        }

        .showDiv span {
            display: block;
            text-align: center;
            margin: 5px 0px;
            font-size: 22px;
        }
    </style>
    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
</head>
<body>

<jsp:include page="top.jsp"/>
<hr>
<form action="${base_path}/order/order.do" method="post">
    <c:if test="${sessionScope.languageStatus eq '0'}">
        <div class="videoC">
            <video controls="controls" loop="loop" >
                <source src="${base_path}/video/demo.mp4" type="video/mp4">
            </video>
        </div>
    </c:if>

    <c:if test="${sessionScope.languageStatus eq '1'}">
        <div class="videoC">
            <video controls="controls" loop="loop">
                <source src="${base_path}/video/demo.mp4" type="video/mp4">
            </video>
        </div>
    </c:if>

    <c:if test="${sessionScope.languageStatus eq '2'}">
        <div class="videoC">
            <video controls="controls" loop="loop">
                <source src="${base_path}/video/demo.mp4" type="video/mp4">
            </video>
        </div>
    </c:if>
    <div class="showDiv">
        <span class="spanL">项目展示</span>
        <div class="showLogo">
            <ul>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
            </ul>
        </div>
        <span class="spanL">合作商家</span>
        <div class="showP">
            <ul>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
                <li><img src="${base_path}/img/project.png" alt="啊"></li>
            </ul>
        </div>
    </div>
</form>
<div class="footer">
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
