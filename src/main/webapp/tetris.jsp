<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAMEFARM</title>
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
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
</style>
</head>
<body style="background-color: #8f97bf; font-family: 'Gugi', cursive;">
	<%@ include file="navbar.jsp"%>
	<%@ include file="dbconn.jsp"%>
	<img src="res/img/new_banner.png" width="100%" height="auto" border=0>
	<!-- tetris banner 만들어서 수정할 것 -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12"></div>
		</div>
		<div class="row">
			<div class="col-md-9"></div>
			<div class="col-md-3"></div>
		</div>

		<div class="row" id="game"
			style="margin: auto; justify-content: center; align-items: center;">
			<iframe src="gamePage/tetris/tetris.jsp" width="440" height="520"
				frameborder="0" framespacing="0" marginheight="0" marginwidth="0"
				scrolling="no"   vspace="0"></iframe>
		</div>


	</div>

	<div style="text-align: center;">
		<b><조작></b><br> 방향키, 스페이스바<br><br> 제목이 왜 이럴까요?<br> 이유는
		해 보시면 압니다...!<br> 목표는 라인 <b style="color: red;">20줄</b> 클리어!<br>
		<br>
		<hr>
	</div>
	<div
		style="text-align: center; justify-content: center; align-items: center;">
		<%
		String sql = "select * from tetrisrank order by score desc limit 3;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		%>
		<br>
		<table style="margin-left: auto; margin-right: auto;" border=1>
			<thead>
				<tr>
					<th>순위</th>
					<th>유저</th>
					<th>점수</th>
				</tr>
			</thead>
			<tbody>
				<%
				int count = 1;
				while (rs.next()) {
				%>
				<tr>
					<td><%=count%></td>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getInt(2)%></td>
				</tr>
				<%
				count++;
				}
				%>
			</tbody>
		</table>
		<%

		%><br>
		<br> 랭킹은 최대 3위까지 표시됩니다. <br>
		<hr>
	</div>
	<div style="text-align: center;">
		<%
		sql = "select * from tetrischat order by date asc;";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%><table style="margin-left: auto; margin-right: auto;" border=1>
			<thead>
				<tr>
					<th>닉네임</th>
					<th>하고싶은 말</th>
				</tr>
			</thead>
			<tbody>
				<%
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%

		%><br>
		<form name="chatForm" method="post"
			action="./gamePage/tetris/tetrisChatProcess.jsp">
			<p>
				<input type="text" placeholder="하고싶은말"
					style="width: 420px; height: 40px; font-size: 20px;" name="chat">
			<p>
				<input type="submit" value="작성">
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>