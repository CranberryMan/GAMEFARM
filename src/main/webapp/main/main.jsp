<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="../dbconn.jsp"%>

<%

ArrayList name = new ArrayList<String>();
ArrayList img = new ArrayList<String>();
ArrayList desc = new ArrayList<String>();
ArrayList link = new ArrayList<String>();
%>
<%
String sql = "select * from gamelist order by soonseo desc";
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
					<a href="<%=link.get(gameCount)%>"><img src="<%=img.get(gameCount)%>" width="auto" height="300" border=0></a>
				</p>
				<p><%=desc.get(gameCount)%></p>

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
					<a href="<%=link.get(gameCount)%>"><img src="<%=img.get(gameCount)%>" width="auto" height="300" border=0></a>
				</p>
				<p><%=desc.get(gameCount)%></p>
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
