<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAMEFARM</title>
<script src="res/js/jquery-3.6.0.min.js"></script>
<script src="res/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="res/css/bootstrap.min.css">
<script src="res/js/popper.min.js"></script>

</head>
<body>
	<%@ include file="navbar.jsp"%>


	<div class="container">
		<div class="row">
			<div class="col-xs-12">배너영역</div>
		</div>
		<div class="row">
			<div class="col-md-9">여기도 뭔가 들어가??</div>
			<div class="col-md-3">광고영역</div>
		</div>
	
		<div class="row">
	<%@ include file="join/joinForm.jsp"%>
	</div>
	
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>