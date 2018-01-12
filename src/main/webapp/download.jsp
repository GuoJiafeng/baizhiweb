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
        .section_text ul li{
            position: relative;
            height: 50px;
            line-height: 50px;
        }
        .section_text ul li span{
            font-size: 20px;
        }
        .section_text ul li a{
            position: absolute;
            right:150px;
            cursor: pointer;
        }
        .section_text ul li a:hover{
             color: red;
         }
    </style>
    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
</head>
<body>

<jsp:include page="top.jsp"/>

<form action="${base_path}/order/order.do" method="post">
    <div class="section_text">
        <ul>
            <li><span>English_translation ${name}${requestScope.contens[0]}</span><a href="/file/download.do?fileName=English.pptx">下载</a></li>
            <li><span>中文流程 ${name}${requestScope.contens[1]}</span><a href="<c:url value="/file/download"/>?fileName=Chinese.pptx">下载</a></li>
        </ul>
    </div>
</form>
<div class="footer">
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>
