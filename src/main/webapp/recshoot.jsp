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
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
</style>
</head>
<body style ="background-color: #968789 ; font-family: 'Gugi', cursive;">
	<%@ include file="dbconn.jsp"%>
	<%@ include file="navbar.jsp"%>
	<img src ="res/img/new_banner.png" width="100%" height="auto" border=0>
	<br><br>
	<div class="container">
		<div class="row">
			<div class="col-xs-12"></div>
		</div>
		<div class="row">
			<div class="col-md-9"></div>
			<div class="col-md-3"></div>
		</div>
	
		<div class="row" id = "game" style= "margin:auto; justify-content : center ; align-items:center;">
			<iframe src="gamePage/recshoot/recshoot.jsp" width="530" height="760" frameborder="0" framespacing="0" marginheight="0" marginwidth="0" scrolling="no"  vspace="0" ></iframe>
	
	</div>
	
	</div>
	
	<div style = "text-align : center;">
<b style="color:red"><조작법></b><br>
X 공격<br>
Z 폭탄(고유스킬)<br>
<-, -> 화살표 방향키로 좌우 움직일 수 있습니다.<br>
<br>
<b style="color:red"><아이템 설명></b><br>
각 아이템은 적을 섬멸할 때마다 랜덤으로 등장하며 고유 아이콘이 있습니다.<br>
<br>
무기류 : Firefox, Flutter, Vue 가 있고 각 무기마다 고유 폭탄스킬을 가지고 있습니다.<br>
1. Firefox : 플레이어가 움직일 수 있는 모든 라인에서 투사체가 발사되고 투사체와 충돌하는 적은 HP와 관계없이 즉사합니다.<br>
2. Flutter : 움직이면서 투사체를 발사합니다. 빠른 속도를 가지고 있고 7초간 유지됩니다.<br>
3. Vue : 플레이어의 위치에 하나의 터렛을 설치합니다. 터렛은 일정한 속도로 10초간 투사체를 발사합니다.<br>
<br>
스탯류 : Javascript, Bootstrap, Typescript<br>
1. Javascript : 체력을 회복합니다.<br>
2. Bootstrap : 공격력이 증가합니다.<br>
3. Typescript : 폭탄의 개수가 증가합니다.<br><hr>	</div>
	<div style = "text-align : center; justify-content : center ; align-items:center; ">
	<%
		String sql = "select * from recshootrank order by score desc limit 3;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		%><table style="margin-left:auto; margin-right:auto;" border=1>
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
	 %><br><br>
	 랭킹은 최대 3위까지 표시됩니다.
	 <br><hr>
	</div>
	<div style = "text-align : center;">
		<%
		sql = "select * from recshootchat order by date asc;";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%><table style="margin-left:auto; margin-right:auto;" border=1>
		<thead>
		<tr>
		<th>닉네임</th>
		<th>하고싶은 말</th>
		</tr>
		</thead><tbody>
		<%
		while(rs.next()){%>
			<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			</tr>
		<%}
		%></tbody></table><%
	 %><br>
	 <form name="chatForm" method="post" action="./gamePage/recshoot/recshootChatProcess.jsp">
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