<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%
Connection conn = null;
try {
	String url = "jdbc:mysql://localhost:3306/gamefarm?ServerTimeZone=Asia/Seoul";
	String user = "root";
	String pw = "1234";

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pw);
} catch (SQLException e) {
	out.println("DB연결 실패<br>");
	out.println("오류 : " + e.getMessage());
} finally {}
ArrayList name = new ArrayList<String>();
ArrayList img = new ArrayList<String>();
ArrayList desc = new ArrayList<String>();
ArrayList link = new ArrayList<String>();
%>
<%
String sql = "select * from gamelist";
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
int gameCount = 0;
while (rs.next()) {
	name.add(rs.getString(1));
	img.add(rs.getString(2));
	desc.add(rs.getString(3));
	link.add(rs.getString(4));
	gameCount++;
}
conn.close();
int line = gameCount / 3;
int nameoji = gameCount % 3;
%>
<%
gameCount = 0;
for (int i = 0; i < line; i++) {
%><div class="row">
	<div class="col-xs-12">
		<div class="row">
			<%
			for (int j = 0; j < 3; j++) {
			%>
			<div class="col-md-4">
				<h2><%=name.get(gameCount)%></h2>
				<p>
					<a href="<%=link.get(gameCount)%>"><img src="<%=img.get(gameCount)%>" width="380" height="300"></a>
				</p>
				<p><%=desc.get(gameCount)%></p>
				<p>
					<a class="btn" href="<%=link.get(gameCount)%>"> <%=name.get(gameCount)%>»
					</a>
				</p>
			</div>
			<%
			gameCount++;
			}
			%>
		</div>
	</div>
</div>
<%
}
if (nameoji >= 1) {
%><div class="row">
	<div class="col-xs-12">
		<div class="row">
			<%
			for (int j = 0; j < nameoji; j++) {
			%>
			<div class="col-md-4">
				<h2><%=name.get(gameCount)%></h2>
				<p>
					<a href="<%=link.get(gameCount)%>"><img src="<%=img.get(gameCount)%>" width="380" height="300"></a>
				</p>
				<p><%=desc.get(gameCount)%></p>
				<p>
					<a class="btn" href="<%=link.get(gameCount)%>"> <%=name.get(gameCount)%>»
					</a>
				</p>
			</div>
			<%
			gameCount++;
			}
			%>
		</div>
	</div>
</div>
<%
}
%>
<!-- 

<div class="row">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-md-4">
						<h2>게임1</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임1 »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>게임2</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임2 »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>게임3</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임3 »</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-md-4">
						<h2>게임4</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임4 »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>게임5</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임5 »</a>
						</p>
					</div>
					<div class="col-md-4">
						<h2>게임6</h2>
						<p>게임이미지</p>
						<p>게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명게임설명</p>
						<p>
							<a class="btn" href="#">게임6 »</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

 -->
