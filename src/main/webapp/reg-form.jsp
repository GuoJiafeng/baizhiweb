<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/24
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <h4>${requestScope.contents[0]}</h4>
</div>
<div class="modal-body">
    <form role="form" action="${pageContext.request.contextPath}/user/reg.do" id="reg">

        <div class="form-group">
            <label for="username">${requestScope.contents[1]}</label>
            <input type="username" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">${requestScope.contents[2]}</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <div class="form-group">
            <label for="password">${requestScope.contents[3]}</label>
            <input type="password" class="form-control" id="repassword">
        </div>
        <div class="form-group">
            <label for="email">${requestScope.contents[4]}</label>
            <input type="email" class="form-control" id="email" name="mail">
        </div>
        <div class="form-group">
            <label for="phone">${requestScope.contents[5]}</label>
            <input type="phone" class="form-control" id="phone" name="phone">
        </div>
        <div class="modal-footer">
            <input type="button" class="btn btn-primary" id="sbmt" value="${requestScope.contents[6]}">
        </div>
    </form>
</div>


<script type="text/javascript">

    $(function () {
        checkReg();
    })


    function checkReg() {

        ok1 = false;
        ok2 = false;
        ok3 = false;
        ok4 = false;
        ok5 = false;
        $("#sbmt").click(function () {
            //验证用户名
            if ($("#username").val().length >= 3 && $("#username").val().length <= 12 && $("#username").val() != '') {
                ok1 = true;
            } else {
                alert('The username should be between 3-20 words(用户名应该为3-20位之间)');
            }
            //验证密码
            if ($("#password").val().length >= 6 && $("#password").val().length <= 20 && $("#password").val() != '') {
                ok2 = true;
            } else {
                alert('The password should be between 6-20 words(密码应该为6-20位之间)');
            }


            //验证是否一致

            if($("#password").val()==$("#repassword").val()){
                ok5 = true;
            }else {
                alert('两次密码输入的不一致！');
            }
            //验证邮箱格式
            if ($("#email").val().search(/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/) == -1) {
                alert('Please enter the correct mailbox format(请输入正确的邮箱格式)');
            } else {
                ok3 = true;
            }
            //验证手机号格式
            if ( $("#phone").val() != '') {
                ok4 = true;
            } else {
                alert('Please enter mobile phone numbers(请输入手机号)');
            }
            if (${empty token}) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/createtoken",
                    type: "get",
                });
                if (ok1 && ok2 && ok3 && ok4) {
                    $("#reg").submit();
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
                            if (ok1 && ok2 && ok3 && ok4&&ok5) {
                                $("#reg").submit();
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