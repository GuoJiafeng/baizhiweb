<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/23
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/fileinput/css/fileinput.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">


    <title>Document</title>
</head>
<body style="padding-top: 50px">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target="#responsive-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
            <a href="${pageContext.request.contextPath}/main.jsp" class="navbar-brand"><strong>MainRiverSoft</strong>.com</a>
        </div>
        <div class="collapse navbar-collapse" id="responsive-navbar">


            <%--  <form action="" class="navbar-form navbar-left">
                  <input type="text" placeholder="搜索" class="form-control">
                  <button type="submit">
                      <span class="glyphicon glyphicon-search"></span>
                  </button>
              </form>--%>

            <%--  <a href="" class="btn btn-primary btn-sm navbar-btn navbar-right hidden-xs">订阅</a>--%>
            <div class="profile navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/file/tohow"><c:if
                            test="${sessionScope.languageStatus eq '1'}">如何使用网站</c:if>
                        <c:if
                                test="${sessionScope.languageStatus eq '0'|| sessionScope.languageStatus == null}">How it works</c:if>
                        <c:if
                                test="${sessionScope.languageStatus eq '2'|| sessionScope.languageStatus == null}">Wie es funktioniert</c:if>
                    </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/order/toorder"><c:if
                            test="${sessionScope.languageStatus eq '1'}">定制软件</c:if>
                        <c:if
                                test="${sessionScope.languageStatus eq '0'|| sessionScope.languageStatus == null}">Pricing</c:if>

                        <c:if
                                test="${sessionScope.languageStatus eq '2'|| sessionScope.languageStatus == null}">Preisgestaltung</c:if></a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/file/toabout"><c:if
                            test="${sessionScope.languageStatus eq '1'}">关于我们</c:if><c:if
                            test="${sessionScope.languageStatus eq '0' || sessionScope.languageStatus == null}">About us</c:if>

                        <c:if
                                test="${sessionScope.languageStatus eq '2' || sessionScope.languageStatus == null}">Über Us</c:if></a>
                        </a>
                    </li>

                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                           aria-haspopup="true" aria-expanded="false">
                            <c:if test="${sessionScope.languageStatus eq '2' || sessionScope.languageStatus == null}">Sprache</c:if>
                            <c:if test="${sessionScope.languageStatus eq '1' || sessionScope.languageStatus == null}">语言</c:if>
                            <c:if test="${sessionScope.languageStatus eq '0' || sessionScope.languageStatus == null}">Language</c:if>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">

                            <li><a href="${pageContext.request.contextPath}/page/changeStatus?status=0">
                                <button class="usa"><img
                                        src="${pageContext.request.contextPath}/img/USA.jpg"></img></button>
                            </a></li>

                            <li><a href="${pageContext.request.contextPath}/page/changeStatus?status=1">
                                <button class="cn"><img src="${pageContext.request.contextPath}/img/CN.jpg"></img>
                                </button>
                            </a></li>

                            <li><a href="${pageContext.request.contextPath}/page/changeStatus?status=2">
                                <button class="dg"><img src="${pageContext.request.contextPath}/img/dg.jpg"></img>
                                </button>
                            </a></li>

                        </ul>


                    </li>
                    <c:if test="${sessionScope.user==null}">


                            <c:if
                                    test="${sessionScope.languageStatus eq '1'}">
                                <li><a href="" data-toggle="modal" data-target="#login-modal">登录</a></li>
                                <li><a href="" data-toggle="modal" data-target="#reg-modal">注册</a></li>
                            </c:if>
                            <c:if
                                    test="${sessionScope.languageStatus eq '0'}">
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Login</a></li>
                                <li><a href="" data-toggle="modal" data-target="#reg-modal">Register</a></li>
                            </c:if>

                            <c:if
                                    test="${sessionScope.languageStatus eq '2'}">
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Anmelden</a></li>
                                <li><a href="" data-toggle="modal" data-target="#reg-modal">Registrieren</a></li>
                            </c:if>
                        </ul>
                    </c:if>

            </div>
        </div>
    </div>
</nav>


<div class="modal fade" id="login-modal" tabindex="-1" data-remote="${pageContext.request.contextPath}/user/tologin.do">
    <div class="modal-dialog ">
        <div class="modal-content">

        </div>
    </div>

</div>


<div class="modal fade" id="reg-modal" tabindex="-1" data-remote="${pageContext.request.contextPath}/user/toreg.do">
    <div class="modal-dialog ">
        <div class="modal-content">

        </div>
    </div>

</div>


<script src="${pageContext.request.contextPath}/bootstrap/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/select/dist/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/holder.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/fileinput/js/fileinput.min.js"></script>

<script>
    /*  $(function () {
         $('#login-modal').modal({
             show:false,
             backdrop:true,
             remote:'login-form.jsp'
         })
      });*/

    $(function () {
        $('#login-modal').on('show.bs.modal', function () {
            console.log("显示对话框！")
        })
        $('#login-modal').on('shown.bs.modal', function () {
            console.log("对话框已经显示了！")
        })
        $('#login-modal').on('hide.bs.modal', function () {
            console.log("隐藏对话框！")
        })
        $('#login-modal').on('hidden.bs.modal', function () {
            console.log("对话框已经隐藏了！")
        })
        $('#login-modal').on('loaded.bs.modal', function () {
            console.log("内容已经载入完成！")
        })
    })
</script>
</body>
</html>
