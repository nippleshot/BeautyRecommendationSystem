<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<!--
	Intensify by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->

<html>
<head>
<title>Beauty</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="/resources/templated-intensify/assets/css/main.css" />

<style type="text/css">

.centered {
  position: relative;
  display: inline-block;
 
  width: 50%;
}
    </style>

</head>
<body class="subpage">

	<!-- Header -->
	<header id="header">
		<nav class="left">
			<a href="#menu"><span>Menu</span></a>
		</nav>
		<a href="/" class="logo">Beauty</a>
		<nav class="right">
			<c:if test="${login.email eq null}">
				<a href="/user/login" class="button alt">Log in</a>
			</c:if>
			<c:if test="${login.email ne null}">
				<a href="/user/logout" class="button alt">Log out</a>
				<a href="/user/read?email=${login.email}" class="button alt">내 정보 수정</a>
			</c:if>
		</nav>
	</header>

	<!-- Menu -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/">Home</a></li>
			<li><a href="/usprod/list">세안 제품 목록</a></li>
			<li><a href="/productSuggest/infoInput">세안 제품 추천</a></li>
			<li><a href="/methodSuggest/suggest">세안법 추천</a></li>
		</ul>

	</nav>

	<!-- Main -->
	<section id="main" class="wrapper">
			<div class="inner">
				<div class="inner">
				<div class="align-center">
					<h2>세안 제품 추천</h2>
					<p>
					<hr>
					피부 타입과 피부 고민에 따른 <br />나만의 맞춤형 세안 제품을 추천 받으세요
					<hr>
					</p>
					</div>
				</div>
				<div class="inner">
				<form method="post">
					<div class="align-center">
						<h4>피부정보 입력</h4>
						
						
						<div class="centered">
							<label>나이</label> 
						<select id="age" name="age">
		                <option value = "10"> 10대        </option>
		                <option value = "20"> 20대        </option>
		                <option value = "30"> 30대        </option>
		                <option value = "40"> 40대        </option>
		                <option value = "50"> 50대        </option>
		            	</select>
							</div>
						<div>
							<h3></h3>
						</div>
						<div class="centered">
							<label>피부 타입</label> 
						<select name="skinType" id="skinType">
						<option value="DR">건성</option>
						<option value="NE">중성</option>
						<option value="OI">지성</option>
						<option value="CO">복합성</option>
						<option value="SE">민감성</option>
						</select>
						</div>
						<br><br>
						
						<div class="align-center">
						<label>성별</label>
						<fieldset>
						<input type="radio" name="gender" value="U1" id="U1" checked="checked"><label for="U1">여성</label> 
						&nbsp; &nbsp; &nbsp;<input type="radio" name="gender" value="U2" id="U2"><label for="U2">남성</label> 
						</fieldset>
						</div>
						
					</div>
					<br>
				<div class="align-center">
					<div class="box-footer" align="center">
						<button type="submit" class="button small">제품 추천 받기</button>
					</div>
					</div>

				</form>
			</div>
			</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<h2>Get In Touch</h2>
			<ul class="actions">
				<li><span class="icon fa-phone"></span> <a href="#">(000)
						000-0000</a></li>
				<li><span class="icon fa-envelope"></span> <a href="#">information@untitled.tld</a></li>
				<li><span class="icon fa-map-marker"></span> 123 Somewhere
					Road, Nashville, TN 00000</li>
			</ul>
		</div>
		<div class="copyright">
			&copy; Untitled. Design <a href="https://templated.co">TEMPLATED</a>.
			Images <a href="https://unsplash.com">Unsplash</a>.
		</div>
	</footer>

	<!-- Scripts -->
	<script src="/resources/templated-intensify/assets/js/jquery.min.js"></script>
	<script
		src="/resources/templated-intensify/assets/js/jquery.scrolly.min.js"></script>
	<script src="/resources/templated-intensify/assets/js/skel.min.js"></script>
	<script src="/resources/templated-intensify/assets/js/util.js"></script>
	<script src="/resources/templated-intensify/assets/js/main.js"></script>


</body>
</html>