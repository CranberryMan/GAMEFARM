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

</head>
<body>
	<%@ include file="navbar.jsp"%>
	<%@ include file="dbconn.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-xs-12">배너영역</div>
		</div>
		<div class="row">
			<div class="col-md-9">여기도 뭔가 들어가??</div>
			<div class="col-md-3">광고영역</div>
		</div>

		<div class="row" id="game"
			style="margin: auto; justify-content: center; align-items: center;">
			<iframe src="gamePage/minesweeper/mine.jsp" width="530" height="550"
				frameborder="0" framespacing="0" marginheight="0" marginwidth="0"
				scrolling="no"   vspace="0"></iframe>
		</div>

	</div>
	<div style="text-align: center;">여기에 게임 소개가 들어갑니다.</div>
	<div
		style="text-align: center; justify-content: center; align-items: center;">
		지뢰찾기는 랭킹 서비스를 제공하지 않습니다.</div>
	<div style="text-align: center;">
		<%
		String sql = "select * from minechat order by date asc;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
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
			action="./gamePage/minesweeper/mineChatProcess.jsp">
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