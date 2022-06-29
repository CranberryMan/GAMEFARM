<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GAMEFARM</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%@ include file="navbar.jsp"%>
	<img src ="res/img/banner_test.png" width="100%" height="auto" border=0>

	<div class="container">
		<div class="row">
			<div class="col-xs-12"> 임시 지정 영역</div>
		</div>
		<div class="row">
			<div class="col-md-9"> 임시 지정 영역 </div>
			<div class="col-md-3"> 임시 지정 영역 </div>
		</div>
	
		<div class="row" id = "game" style="justify-content : center ; align-items:center;">
			<%@ include file="gamePage/snake/snake.jsp"%>
	</div>
	
	</div>
	
	<div style = "text-align : center;">
		여기에 게임 소개가 들어갑니다.
	</div>
	<div style = "text-align : center; justify-content : center ; align-items:center; ">
	<%
		String sql = "select * from snakeRank order by score desc limit 3;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		%><table style="margin-left:auto; margin-right:auto;">
		<thead>
		<tr>
		<th>순위</th>
		<th>유저</th>
		<th>점수</th>
		</tr>
		</thead><tbody>
		<%
		int count = 1;
		while(rs.next()){%>
			<tr>
			<td><%= count %></td>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getInt(2) %></td>
			</tr>
		<% count++;}
		%></tbody></table><%
	 %>
		여기에 게임별 랭킹이 들어갑니다.
	</div>
	<div style = "text-align : center;">
		여기에 간이 덧글창이 개설됩니다.
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>