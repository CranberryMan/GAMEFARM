<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>title</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid" style="min-height: calc(100vh - 136px);">
		<div style="margin: 10px;">
			<!-- Javascript가 필요없이 data-toggle에 collapse href에 대상 id을 설정합니다. -->
			<button data-toggle="collapse" href="#collapseExample"
				aria-expanded="false" aria-controls="collapseExample">Click</button>
		</div>
		<!-- collapse 대상 태그는 class를 collapse로 설정합니다. -->
		<div class="collapse" id="collapseExample">
			<div class="well">hello world</div>
		</div>
	</div>
</body>
</html>
