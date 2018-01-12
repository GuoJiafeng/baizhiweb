<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath}"></c:set>
	     <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
			*{
				margin: 0;
				top: 0;
			}
			.logo{
				box-sizing: border-box;
				padding-left: 100px;
			}
			.logoImg{
				position: relative;
				top:15px;
				float: left;
			}
			.logoInfo{
				float: left;
				margin-left:10px ;
			}
			.logoInfo b{
				display: block;
				position: absolute;
				font-size: 18px;
				top:16px;
			}
			.logoInfo span{
				display: block;
				font-size: 16px;
				position: absolute;
				top:40px;
			}
			.Navbar ul{
				float: right;
			}
			.Navbar ul li{
				float: left;
				display: block;
				list-style: none;
				padding-right: 26px;
			}
			.Navbar ul li a{
				color: #a7a6a6;
				font-size: 20px;
				line-height: 80px;
				cursor: pointer;
				font-weight: bold;
			}
			.Navbar ul li a:hover{
				color: #e4393c;
			}
			.xsGlc span{
				display: block;
				float: left;
				position: relative;
				top:15px;
				left: 25px;
				cursor: pointer;
			}
			.imgU{
				position: relative;
				top:-5px;
				left:-5px;
			}
			.usa{
				background-image: url(${base_path}/img/USA.png);
				background-repeat: no-repeat;
				height: 26px;
				width: 36px;
				border: none;
				outline: none;
			}
			.cn{
				background-image: url(${base_path}/img/CN.png);
				background-repeat: no-repeat;
				height: 26px;
				width: 36px;
				border: none;
				outline: none;
			}
			.switch{
				box-sizing: border-box;
				padding-top: 25px;
			}
			.xsUl{
				padding-top: 10px;
				padding-left: 20px;
				font-size: 16px;
				cursor: pointer;
			}
		</style>
	</head>
	<body>
		<div>
			<div class="row">
			<!--  图标盒子 -->
     		 <div class="logo col-sm-4">
     		 	<div class="logoImg hidden-xs">
     		 		<img src="${base_path}/img/login.png" alt="商标">
     		 	</div>
     		 	<div class="logoInfo visible-lg">
     		 		<p>
						<b>MainRiver Soft  ${ requestScope.contens[1] }</b>
						<span>069 - 657 777 1</span>
					</p>
     		 	</div>
     		 </div>
     		 <!--  导航栏盒子 -->
		     <div class="Navbar col-sm-6 col-xs-6 hidden-xs">
		     	<ul>
                    <li><a href="${base_path}/file/toupload"><c:if test="${sessionScope.languageStatus eq '1'}">提交需求文档</c:if><c:if test="${sessionScope.languageStatus eq '0' || sessionScope.languageStatus == null}">Make an Appointment</c:if></a></li>
                    <li><a href="${base_path}/order/toorder"><c:if test="${sessionScope.languageStatus eq '1'}">定制软件内容</c:if><c:if test="${sessionScope.languageStatus eq '0'|| sessionScope.languageStatus == null}">Pricing</c:if></a></li>
		     		<li><a href="${base_path}/download.jsp"><c:if test="${sessionScope.languageStatus eq '1'}">工作流程</c:if><c:if test="${sessionScope.languageStatus eq '0'|| sessionScope.languageStatus == null}">How it works</c:if></a></li>
					<c:if test="${sessionScope.user==null}"><li style="padding-right: 0px;"><img class="imgU" src="${base_path}/img/user.png" alt="touxiang" /><a href="${base_path}/user/tologin"><c:if test="${sessionScope.languageStatus eq '1'}">登录</c:if><c:if test="${sessionScope.languageStatus eq '0'|| sessionScope.languageStatus == null}">Land</a></c:if></li></c:if>
					<c:if test="${sessionScope.user!=null}">Hello ${sessionScope.user.username}</c:if>
		     	</ul>
		     </div>
		     <!-- 自适应手机导航  -->
		     <div class="xsGlc col-xs-6 visible-xs" id="xsGlc">
		     	<a style="font-size: 40px;">
		     		<span class="glyphicon glyphicon-th-list"></span>
		     		<span>Menu</span>
		     	</a>
		     </div>
		     
		     <!-- 中英文切换个盒子 -->
		     <div class="switch col-sm-2 hidden-xs">
				<a href="${base_path}/page/changeStatus"><button class="usa"></button></a>
				 <a href="${base_path}/page/changeStatus"><button class="cn"></button></a>
		     </div>
		    </div> 
		    <!-- 手机端导航 -->
  		 	<div class="row" id="xsUlD">
	   		 	<div class="xsUl visible-xs" id="xsUl">
			     	<ul class="nav nav-pills nav-stacked">
			     		<li><a href="${base_path}/file/toupload">Make an Appointment ${ 2 }</a></li>
			     		<li><a href="${base_path}/order/toorder">Pricing ${ 3 }</a></li>
			     		<li><a href="${base_path}/download.jsp">How it works ${ 4 }</a></li>
			     		<li style="padding-right: 0px;"><a>Land</a></li>
			     	</ul>
			     </div>
   			</div>
		</div>
		<script type="text/javascript">
			var flag=true;
			$("#xsUlD").hide();
			$("#xsGlc").click(function(){
				if(flag){
					$("#xsUlD").slideDown(500);
					flag=false;
				}else{
					$("#xsUlD").slideUp(500);
					flag=true;
				}
			});			
		</script>

