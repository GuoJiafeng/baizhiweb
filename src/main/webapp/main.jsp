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
		<style type="text/css">
			.footer{
				position: relative;
				top: 90%;
				width: 100%;
			}
		</style>
	</head>
	<body>
		<!--导航栏信息-->
		<jsp:include page="top.jsp"/>
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
							<p>We Build Your${requestScope.contens[0]}</p>
							<p>WebSite and APP${requestScope.contens[1]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Transparent${requestScope.contens[2]}</p>
							<p>Pricing${requestScope.contens[3]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Hign quality${requestScope.contens[4]}</p>
							<p>consepts,designs${requestScope.contens[5]}</p>
							<p>and code${requestScope.contens[6]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Personal project${requestScope.contens[0]}</p>
							<p>manager${requestScope.contens[0]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>Online tikect${requestScope.contens[0]}</p>
							<p>system${requestScope.contens[0]}</p>
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
							We build Your Website and App${requestScope.contens[0]}
						</div>
						<hr />
					</div>
					<div id="firstSec_bottom">
						<h2>What do you need?${requestScope.contens[0]}</h2>
						<div>
							<div class="left_float">
								<div class="websit_top">
									<img src="${base_path}/img/website.png" />
								</div>
								<div class="websit_bottom">
									Website${requestScope.contens[0]}
								</div>
							</div>
							<div class="right_float">
								<div class="app_top">
									<img src="${base_path}/img/app.png" />
								</div>
								<div class="app_bottom">
									App${requestScope.contens[0]}
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
							We can do if for you${requestScope.contens[0]}
						</div>
						<hr />
					</div>
					<div id="secondSec_middle">
						<div class="left_float">
							<div class="shade">
								Our excellent team${requestScope.contens[0]}
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								Excellent service${requestScope.contens[0]}
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								Metting what you want${requestScope.contens[0]}
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
							The service you have to have${requestScope.contens[0]}
						</div>
						<hr />
					</div>
					<ul class="out_ul">
						<li>
							<ul class="in_ul">
								<li></li>
								<li>Efficient${requestScope.contens[0]}</li>
								<li>Commucation${requestScope.contens[0]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A perfect${requestScope.contens[0]}</li>
								<li>Demostration${requestScope.contens[0]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A Pleasant${requestScope.contens[0]}</li>
								<li>Metting${requestScope.contens[0]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>A Largin Number${requestScope.contens[0]}</li>
								<li>Of Partners${requestScope.contens[0]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>Poineer${requestScope.contens[0]}</li>
								<li>Of EnterPrise${requestScope.contens[0]}</li>
							</ul>
						</li>
					</ul>
				</div>
				<div style="height: 892px;box-sizing:border-box;padding-top: 50px;" class="fourthSec">
					<div id="play">
						<h1>how it works${requestScope.contens[0]}</h1>
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
									<p>Traditional${requestScope.contens[0]}</p>
									<p>Way${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li ></li>
							</ul>
						</li>
						<li>
							<ul class="col_ul mode">
								<li>
									<p>General${requestScope.contens[0]} </p>
									<p>Mode${requestScope.contens[0]}</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res dui">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
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
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li class="res">
									<h3>Technical Resources${requestScope.contens[0]}</h3>
									<p>Professional Apihub manages tools${requestScope.contens[0]}</p>
									<p>through the implement tation${requestScope.contens[0]}</p>
								</li>
								<li ></li>
							</ul>
							
						</li>
					</ul>
				</div>
			</div>
		</section>
		<div class="footer">
	<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
