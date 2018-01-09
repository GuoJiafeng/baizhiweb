<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="base_path" value="${pageContext.request.contextPath}"></c:set>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
		<link rel="stylesheet" type="text/css" href="${base_path}/css/login.css"/>
		<script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
		<script>
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
                    if(${empty token}){
                        $.ajax({
                            url:"${base_path}/user/createtoken",
                            type:"get",
                        });
                        if (ok1 && ok2) {
                            $("#log").submit();
                        } else {
                            alert("Your input is wrong, please correct and login(您的输入有误,请更正后登陆)")
                        }
                    }else {
                        $.ajax({
                            url:"${base_path}/user/checktoken",
                            type:"get",
                            dataType:"json",
                            success:function(result){
                                if(result){
                                    alert("Your operation is too frequent(您的操作过于频繁)");
                                }else {
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
	<body><s>	</s>
		<!--å¯¼èªæ ä¿¡æ¯-->
	<jsp:include page="top.jsp"/>
		<!-- é¡¶é¨åå®¹ -->
		<header>
		<form action="${base_path}/user/login.do" method="post" id="log">
			<div class="header">
				<!--è½®æ­å¾-->
				<div id="banner">
					<img src="${base_path}/img/banner.jpg" />
				</div>
				<div class="login">
					<div class="login_right">
						<ul>
							<li class="font_login"><img src="${base_path}/img/lOG-IN.png" /></li>
							<li class="font_login2">
								<span>Do not have an account?</span>
								<a href="${base_path}/user/toreg.do"> Sign Up</a>
							</li>
							<li class="f_in">
								<a class="f_left" href="">
									<img src="${base_path}/img/f-botton.png" />
								</a>
								<a class="in_right" href="">
									<img src="${base_path}/img/in-botton.png" />
								</a>
							</li>
							<li class="or"></li>
							<li class="span_input">
								<span>USERNAME</span>
								<input type="text" name="username" id="username" value="" />
							</li>
							<li class="span_input">
								<span class="pw">PASSWORD</span>
								<input type="password" name="password" id="password" value="" />
							</li>
							<li class="protocol">
								<input type="checkbox" name="" id="" value="" />
								<span>REMEMBER ME</span>
								<a href="#">Forgot password?</a>
							</li>
							<li class="submit">
								<input type="button" name="" id="sbmt" value="" />
							</li>
						</ul>
					</div>
				</div>
			</div>
			</form>
		</header>	
			
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
							<img src="${base_path}/img/face.png" />
							<img src="${base_path}/img/wic.png" />
							<img src="${base_path}/img/wifi.png" />
						</p>
						<br />
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
						<p>	<a href="#">ios & Android</a></p>
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
