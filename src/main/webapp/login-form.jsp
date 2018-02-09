<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/24
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<div class="modal-header">
    <button class="close" data-dismiss="modal">&times;</button>
    <h4>${requestScope.contents[0]}/<a id="goReg" href="javascript:">${requestScope.contents[1]}</a></h4>
</div>
<div class="modal-body">
    <form role="form" action="${pageContext.request.contextPath}/user/login.do" method="post" id="log">
        <div class="form-group">
            <label for="username">${requestScope.contents[2]}</label>
            <input class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">${requestScope.contents[3]}</label>
            <input type="password" id="password" class="form-control" id="password" name="password">
        </div>
        <div class="modal-footer">
            <input type="button" id="sbmt" class="btn btn-primary" value="${requestScope.contents[4]}">
        </div>
    </form>
</div>


<script type="text/javascript">

    $(function () {

        checkLogin();

        $("#goReg").click(function () {
            hide_modal();
            show_modal();
        })

    })


    function login() {
        var username = $("#username").val();
        var password = $("#password").val();


        $.ajax({
            url: "${pageContext.request.contextPath}/user/login.do",
            type: "post",
            data: "username=" + username + "&password=" + password + "",
            dataType: "json",
            success: function (result) {
                if (result == 'loginok') {
                    alert("登录成功!");

                    if (${sessionScope.isorder==null}) {
                        location.href = "${pageContext.request.contextPath}/user/tomain.do";
                    } else {
                        location = location;
                    }

                }
                if (result == 'loginno') {
                    alert("登录失败!");
                }
            }

        })
    }


    function show_modal() {
        $('#reg-modal').modal('show');
    }


    function hide_modal() {
        $('#login-modal').modal('hide');
    }

    function checkLogin() {
        ok1 = false;
        ok2 = false;

        $("#sbmt").click(function () {
            if ($("#username").val().length >= 3 && $("#username").val().length <= 12 && $("#username").val() != '') {
                ok1 = true;
            } else {
                alert('The username should be between 3-20 words(用户名应该为3-20位之间)');
            }
            if ($("#password").val().length >= 6 && $("#password").val().length <= 20 && $("#password").val() != '') {
                ok2 = true;
            } else {
                alert('The password should be between 6-20 words(密码应该为6-20位之间)');
            }
            if (${empty token}) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/createtoken",
                    type: "get",
                });
                if (ok1 && ok2) {
                    //$("#log").submit();
                    login();
                }
            } else {
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/checktoken",
                    type: "get",
                    dataType: "json",
                    success: function (result) {
                        if (result) {
                            alert("Your operation is too frequent(您的操作过于频繁)");
                        } else {
                            if (ok1 && ok2) {
                                //$("#log").submit();
                                login();
                            }
                        }
                    }
                });
            }
        });
    }

</script>
</body>
</html>