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
							<p>${requestScope.contents[0]}</p>
							<p>${requestScope.contents[1]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>${requestScope.contents[2]}</p>
							<p>${requestScope.contents[3]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>${requestScope.contents[4]}</p>
							<p>${requestScope.contents[5]}</p>
							<p>${requestScope.contents[6]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>${requestScope.contents[7]}</p>
							<p>${requestScope.contents[8]}</p>
						</div>
						<div class="show_img"></div>
					</li>
					<li>
						<div class="describe">
							<p>${requestScope.contents[9]}</p>
							<p>${requestScope.contents[10]}</p>
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
							${requestScope.contents[11]}
						</div>
						<hr />
					</div>
					<div id="firstSec_bottom">
						<h2>${requestScope.contents[12]}</h2>
						<div>
							<div class="left_float">
								<div class="websit_top">
									<img src="${base_path}/img/website.png" />
								</div>
								<div class="websit_bottom">
									${requestScope.contents[13]}
								</div>
							</div>
							<div class="right_float">
								<div class="app_top">
									<img src="${base_path}/img/app.png" />
								</div>
								<div class="app_bottom">
									${requestScope.contents[14]}
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
							${requestScope.contents[15]}
						</div>
						<hr />
					</div>
					<div id="secondSec_middle">
						<div class="left_float">
							<div class="shade">
								${requestScope.contents[16]}
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								${requestScope.contents[17]}
							</div>
						</div>
						<div class="left_float">
							<div class="shade">
								${requestScope.contents[18]}
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
							${requestScope.contents[19]}
						</div>
						<hr />
					</div>
					<ul class="out_ul">
						<li>
							<ul class="in_ul">
								<li></li>
								<li>${requestScope.contents[20]}</li>
								<li>${requestScope.contents[21]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>${requestScope.contents[22]}</li>
								<li>${requestScope.contents[23]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>${requestScope.contents[24]}</li>
								<li>${requestScope.contents[25]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>${requestScope.contents[26]}</li>
								<li>${requestScope.contents[27]}</li>
							</ul>
						</li>
						<li>
							<ul class="in_ul">
								<li></li>
								<li>${requestScope.contents[28]}</li>
								<li>${requestScope.contents[29]}</li>
							</ul>
						</li>
					</ul>
				</div>
				<div style="height: 892px;box-sizing:border-box;padding-top: 50px;" class="fourthSec">
					<div id="play">
						<h1>${requestScope.contents[30]}</h1>
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
									<p>${requestScope.contents[31]}</p>
									<p>${requestScope.contents[32]}</p>
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
									<p>${requestScope.contents[33]} </p>
									<p>${requestScope.contents[34]}</p>
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
									<p>${requestScope.contents[35]}</p>
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
		<div class="footer">
	<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
