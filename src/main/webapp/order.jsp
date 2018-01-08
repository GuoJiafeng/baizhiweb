<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<!--å¼å¥å¤é¨æ ·å¼-->
		<link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
		<link rel="stylesheet" type="text/css" href="${base_path}/css/webStyle1.css"/>
	</head>
	<body>
		<!--å¯¼èªæ ä¿¡æ¯-->
		<nav>
			<div class="nav">
				<!--å·¦è¾¹æµ®å¨-->
				<div class="left_float">
					<img src="${base_path}/img/logo.png" />
					<p>
						<h2>MainRiver Soft</h2>
						<span>069 - 657 777 1</span>
					</p>
				</div>
				<!--å³è¾¹æµ®å¨-->
				<ul class="right_float" >
							<li>
						<a href="${base_path}/file/toupload">Make an Appointment</a>
					</li>
					<li>
						<a href="${base_path}/order/toorder">Pricing</a>
					</li>
					<li>
						<a href="#">How it works</a>
					</li>
					<li class="land">
						<img src="${base_path}/img/user.png" />
						<a href="${base_path}/user/tologin.do">Land</a>
					</li>
					<li>
						<input type="button" value="Need" />
						<input type="button" value="NeedBank" />
					</li>
				</ul>
			</div>
		</nav>
		<!-- åå®¹ -->
		<form action="${base_path}/order/order.do" method="post">
		<div class="section_text">
				<ul>
					<li class="select_yes2 select_sum">
						<span>What kind of software do you want to do</span>
						<select name="type">
							<option value="Web">Web</option>
							<option value="App">App</option>
						</select>
					</li>
					<li class="select_yes select_sum">
						<span>Do you have a you requirement book?</span>
						<select name="demand">
							<option value="1">YES</option>
							<option value="0">NO</option>
						</select>
					</li>
					<li class="select_sum">
						<span>The number of pages you want</span>
						<select name="number">
							<option value="1-5">1-5</option>
							<option value="5-10">5-10</option>
							<option value="10以上">10以上</option>
						</select>
					</li>
				</ul>
				
				<!--æäº¤æé®-->
				<p class="submit"><input type="submit"  name="" id="" value="" /></p>
		</div>	
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
