<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/login.css"/>
    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
    <script>


        function login() {
            var username = $("#username").val;
            var password = $("#password").val;

            $.ajax({
                url: "<c:url value="/user/login"/>",
                type:"post",
                data:"username="+username+"&password="+password+"",
                dataType:"json",
                success:function (result) {

                },
                error:function (error) {

                }

            })
        }

        $(function () {
            ok1 = false;
            ok2 = false;
            $("#username").blur(function () {
                if ($(this).val().length >= 3 && $(this).val().length <= 12 && $(this).val() != '') {
                    ok1 = true;
                } else {
                    alert('The username should be between 3-20 words(用户名应该为3-20位之间)');
                }
            });
            $("#password").blur(function () {
                if ($(this).val().length >= 6 && $(this).val().length <= 20 && $(this).val() != '') {
                    ok2 = true;
                } else {
                    alert('The password should be between 6-20 words(密码应该为6-20位之间)');
                }
            });
            $("#sbmt").click(function () {
                if (${empty token}) {
                    $.ajax({
                        url: "${base_path}/user/createtoken",
                        type: "get",
                    });
                    if (ok1 && ok2) {
                        $("#log").submit();
                    } else {
                        alert("Your input is wrong, please correct and login(您的输入有误,请更正后登陆)")
                    }
                } else {
                    $.ajax({
                        url: "${base_path}/user/checktoken",
                        type: "get",
                        dataType: "json",
                        success: function (result) {
                            if (result) {
                                alert("Your operation is too frequent(您的操作过于频繁)");
                            } else {
                                if (ok1 && ok2) {
                                    $("#log").submit();
                                } else {
                                    alert("Your input is wrong, please correct and login(您的输入有误,请更正后登陆)")
                                }
                            }
                        }
                    });
                }
            });
        });
    </script>
</head>
<body><s> </s>

<jsp:include page="top.jsp"/>

<header>
    <form action="${base_path}/user/login.do" method="post" id="log">
        <div class="header">

            <div id="banner">
                <img src="${base_path}/img/banner.jpg"/>
            </div>
            <div class="login">
                <div class="login_right">
                    <ul>
                        <li class="font_login"><img src="${base_path}/img/lOG-IN.png"/></li>
                        <li class="font_login2">
                            <span>${requestScope.contents[0]}</span>
                            <a href="${base_path}/user/toreg.do"> ${requestScope.contents[1]}</a>
                        </li>
                        <li class="or"></li>
                        <li class="span_input">
                            <span>${requestScope.contents[2]}</span>
                            <input type="text" name="username" id="username" value=""/>
                        </li>
                        <li class="span_input">
                            <span class="pw">${requestScope.contents[3]}</span>
                            <input type="password" name="password" id="password" value=""/>
                        </li>
                        <li class="protocol">
                            <input type="checkbox" name="" id="" value=""/>
                            <span>${requestScope.contents[4]}</span>
                            <a href="#">${requestScope.contents[5]}</a>
                        </li>
                        <li class="submit">
                            <input type="button" name="" id="sbmt" value=""/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</header>

<!--é¡µèä¿¡æ¯-->
<jsp:include page="footer.jsp" />

</body>
</html>
