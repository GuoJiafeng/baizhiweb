<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<!--引入外部样式-->
		<link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
		
	</head>
	<body>
		<!--导航栏信息-->
		<nav>
			<div class="nav">
				<!--左边浮动-->
				<div class="left_float">
					<img src="${base_path}/img/logo.png" />
					<p>
						<h2>MainRiver Soft</h2>
						<span>069 - 657 777 1</span>
					</p>
				</div>
				<!--右边浮动-->
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
		<!-- 顶部内容 -->
		<header>
			<div class="header">
				<!--轮播图-->
				<div id="carousel">
					<img src="${base_path}/img/banner.jpg" />
				</div>
				<!--相关概要-->
				<ul class="schema ">
					<li>
						<div class="describe">
							<p>We Build Your</p>
							<p>WebSite and APP</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Transparent</p>
							<p>Pricing</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Hign quality</p>
							<p>consepts,designs</p>
							<p>and code</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Personal project</p>
							<p>manager</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Online tikect</p>
							<p>system</p>
						</div>
						<div class="show_img"></div>
					</li>
				</ul>
			</div>
			
		</header>
		<!--页面内容-->
		<section>
			<div class="section">
				<div class="firstSec">
					<div id="firstSec_top">
						<hr />
						<div>
							We build Your Website and App
						</div>
						<hr />
					</div>
					<div id="firstSec_bottom">
						<h2>What do you need?</h2>
						<div>
							<div class="left_float">
								<div class="websit_top">
									<img src="${base_path}/img/website.png" />
								</div>
								<div class="websit_bottom">
									Website
								</div>
							</div>
							<div class="right_float">
								<div class="app_top">
									<img src="${base_path}/img/app.png" />
								</div>
								<div class="app_bottom">
									App
								</div>
							</div>
						</div>
						<input type="button" value="Post Your Job"/>
					</div>
				</div>
				<div class="secondSec">
					<div id="secondSec_top">
						<hr />
						<div>
							We can do if for you
						</div>
						<hr />
					</div>
					<div id="secondSec_middle">
						<div class="left_float">
							<div class="shade">
								Our excellent team
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								Excellent service
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								Metting what you want
							</div>
						</div>
					</div>
					<div id="secondSec_bottom">
						<input type="button" value="Post Your Job"/>
					</div>
					
					
				</div>
				<div class="thirdSec">
					<div id="thirdSec_top">
						<hr />
						<div>
							The service you have to have
						</div>
						<hr />
					</div>
					<ul class="out_ul">
						<li>
							<ul class="in_ul">
								<li></li>
								<li>Efficient</li>
								<li>Commucation</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A perfect</li>
								<li>Demostration</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A Pleasant</li>
								<li>Metting</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A Largin Number</li>
								<li>Of Partners</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>Poineer</li>
								<li>Of EnterPrise</li>
							</ul>
						</li>
					</ul>
				</div>
				<div style="height: 892px;box-sizing:border-box;padding-top: 50px;" class="fourthSec">
					<div id="play">
						<h1>how it works</h1>
						<img src="${base_path}/img/bofang_big.png" />
						<div>
							<img src="${base_path}/img/bofang_little.png" />
							<b>0:00</b>
							<span></span>
						</div>
					</div>
				</div>
				<div class="fifthSec">
					<ul class="row_ul">
						<li>
							<ul class="col_ul">
								<li>
									<p>Traditional</p>
									<p>Way</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li ></li>
							</ul>
						</li>
						<li>
							<ul class="col_ul mode">
								<li>
									<p>General </p>
									<p>Mode</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li ></li>
							</ul>
						</li>
						<li>
							<ul class="col_ul ourWay">
								<li>
									<p>Our Way</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li class="res">
									<h3>Technical Resources</h3>
									<p>Professional Apihub manages tools</p>
									<p>through the implement tation</p>
								</li>
								<li ></li>
							</ul>
							
						</li>
					</ul>
				</div>
			</div>
		</section>
		<footer>
			<div id="top_footer">
				<ul class="top_footer_img">
					<li>
						<img src="${base_path}/img/foot_pic1.png" />
					</li>
					<li>
						<img src="${base_path}/img/foot_pic2.png" />
					</li>
					<li>
						<img src="${base_path}/img/foot_pic3.png" />
					</li>
					<li>
						<img src="${base_path}/img/foot_pic4.png" />
					</li>
					<li>
						<img src="${base_path}/img/foot_pic5.png" />
					</li>
				</ul>
				<div class="top_footer_num">
					<div>1</div>
					<hr />
					<div>2</div>
					<hr />
					<div>3</div>
					<hr />
					<div>4</div>
					<hr />
					<div>5</div>
				</div>
			</div>
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
