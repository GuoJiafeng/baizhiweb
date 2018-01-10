<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/signStyle.css"/>
    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
    <script>
        function check() {
            ok1 = false;
            ok2 = false;
            ok3 = false;
            ok4 = false;
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
            $("#email").blur(function () {
                if ($(this).val().search(/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/) == -1) {
                    alert('Please enter the correct mailbox format(请输入正确的邮箱格式)');
                } else {
                    ok3 = true;
                }
            });
            $("#phone").blur(function () {
                if ($(this).val().length = 11) {
                    ok4 = true;
                } else {
                    alert('Please enter 11 mobile phone numbers(请输入11位手机号)');
                }
            });
        }
        $(function () {

            check();


            $("#sbmt").click(function () {
                if (${empty token}) {
                    $.ajax({
                        url: "${base_path}/user/createtoken",
                        type: "get",
                    });
                    if (ok1 && ok2 && ok3 && ok4) {
                        $("#reg").submit();
                    } else {
                        alert("Your input is incorrect. Please correct it and submit it(您的输入有误,请更正后提交)")
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
                                if (ok1 && ok2 && ok3 && ok4) {
                                    $("#reg").submit();
                                } else {
                                    alert("Your input is incorrect. Please correct it and submit it(您的输入有误,请更正后提交)")
                                }
                            }
                        }
                    });
                }
            });
        });
    </script>
</head>
<body>
<jsp:include page="top.jsp"/>
<form action="${base_path}/user/reg.do" method="post" id="reg">
    <section>
        <!--æ é¢-->
        <p class="sing_head"><img src="${base_path}/img/sign_up.png"/></p>
        <p class="sing_bottom_text">
				<span>
					${requestScope.contents[0]}
				</span>
            <a href="${base_path}/user/tologin.do"> ${requestScope.contents[1]}</a>
        </p>
        <!--åå²çº¿-->
        <p class="sign_or"></p>
        <ul>
            <li class="section_input">
                <span>${requestScope.contents[2]}</span><br/>
                <input type="text" name="username" id="username" value=""/>
            </li>
            <li class="section_input">
                <span>${requestScope.contents[3]}</span><br/>
                <input type="password" name="password" id="password" value=""/>
            </li>
            <li class="section_input">
                <span>${requestScope.contents[4]}</span><br/>
                <input type="" name="email" id="email" value=""/>
            </li>
            <li class="section_input">
                <span>${requestScope.contents[5]}</span><br/>
                <input type="" name="phone" id="phone" value=""/>
            </li>
            <li class="section_input_submit">
                <input type="button" name="" id="sbmt" value=""/>
            </li>
        </ul>

    </section>
</form>
<jsp:include page="footer.jsp"/>

</body>
</html>
