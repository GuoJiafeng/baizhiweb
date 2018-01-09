<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>
    <!--å¼å¥å¤é¨æ ·å¼-->
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
<!--å¯¼èªæ ä¿¡æ¯-->
<jsp:include page="top.jsp"/>
<!-- åå®¹ -->
<form action="${base_path}/user/reg.do" method="post" id="reg">
    <section>
        <!--æ é¢-->
        <p class="sing_head"><img src="${base_path}/img/sign_up.png"/></p>
        <p class="sing_bottom_text">
				<span>
					Already have an account?
				</span>
            <a href="${base_path}/user/tologin.do"> Log In</a>
        </p>
        <!--æé®2-->
        <p class="button_f_in">
            <a class="button_f" href="#"></a>
            <a class="button_in" href="#"></a>
        </p>
        <!--åå²çº¿-->
        <p class="sign_or"></p>
        <ul>
            <li class="section_input">
                <span>USERNAME</span><br/>
                <input type="text" name="username" id="username" value=""/>
            </li>
            <li class="section_input">
                <span>PASSWORD</span><br/>
                <input type="password" name="password" id="password" value=""/>
            </li>
            <li class="section_input">
                <span>EMAIL</span><br/>
                <input type="" name="email" id="email" value=""/>
            </li>
            <li class="section_input">
                <span>PHONE</span><br/>
                <input type="" name="phone" id="phone" value=""/>
            </li>
            <li class="section_input_submit">
                <input type="button" name="" id="sbmt" value=""/>
            </li>
        </ul>

    </section>
</form>
<!--é¡µèä¿¡æ¯-->
<footer>

    <div id="middle_footer">
        <ul class="out">
            <li>
                <p><a href="#">Guudjob Worldwide SL</a></p>
                <p><a href="#">Plaza Carlos Trias Bertrain,</a></p>
                <p><a href="#">7</a></p>
                <p><a href="#">Madrid,Esparia</a></p>
                <p>
                    <img src="${base_path}/img/face.png"/>
                    <img src="${base_path}/img/wic.png"/>
                    <img src="${base_path}/img/wifi.png"/>
                </p>
                <br/>
                <p><a href="#">Esparnol | English</a></p>

            </li>
            <li>
                <p><a href="#">
                    GuuBjob</a>
                </p>
                <p><a href="#">Sorbre Guudjob</a></p>
                <p><a href="#">Equipo</a></p>
                <p><a href="#">Prensa & Noticias</a></p>
                <p><a href="#">Agradecimientos</a></p>
                <p><a href="#">Contacto</a></p>
                <p><a href="#">Privacidad</a></p>
                <p><a href="#">Embajadores</a></p>
            </li>
            <li>
                <p><a href="#">
                    GuuBjob APP</a>
                </p>
                <p><a href="#">Reconocimiento Laboral</a></p>
                <p><a href="#">Reputacion Profesional</a></p>
                <p><a href="#">Blog</a></p>
                <p><a href="#">Presonal Branding</a></p>
                <p><a href="#">Academy</a></p>
                <p><a href="#">ios & Android</a></p>
                <p><a href="#">Video Tutoriales</a></p>

            </li>
            <li>
                <p><a href="#">
                    EMPRESAS</a>
                </p>
                <p><a href="#">Soluciones</a></p>
                <p><a href="#">Reconocimeento Cliente</a></p>
                <p><a href="#">Reconocimeento Intemo</a></p>
                <p><a href="#">CX Academy</a></p>
                <p><a href="#">Logos y pegatinas</a></p>
            </li>
        </ul>
    </div>
    <div id="bottom_footer">
        Registration:000000000
    </div>
</footer>

</body>
</html>
