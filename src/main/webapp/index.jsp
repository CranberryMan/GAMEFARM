<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAMEFARM</title>
<!--
<script src="res/js/jquery-3.6.0.min.js"></script>
<script src="res/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="res/css/bootstrap.min.css">
<script src="res/js/popper.min.js"></script>
-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
</style>
<body style ="background-color: #abc8ea ;font-family: 'Black Han Sans', sans-serif;">

	<%@ include file="navbar.jsp"%>
				<img src="res/img/new_banner.png" width="100%" height="auto" border=0>
				<br><br><br><br>


	<div class="container">
		<div class="row">
		<!-- 나중에 뭔가 집어넣을지도 모르는 여백 영역 -->
			<div class="col-xs-12">
			</div>
		</div>
		<div class="row">
		<!-- 나중에 뭔가 집어넣을지도 모르는 여백 영역 -->
			<div class="col-md-9"></div>
			<div class="col-md-3"></div>
		</div>

		<%@ include file="main/main.jsp"%>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>