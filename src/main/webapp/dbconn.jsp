<%@ page pageEncoding="utf-8"%>

<%@ page import="java.sql.*"%>

<%
Connection conn = null;
try {
	String urlLocal = "jdbc:mysql://localhost:3306/gamefarm?ServerTimeZone=Asia/Seoul";
	String url = "jdbc:mysql://121.142.150.46:3306/gamefarm?ServerTimeZone=Asia/Seoul";
	String user = "root";
	String pw = "1234";

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pw);
} catch (SQLException e) {
	out.println("오류 : " + e.getMessage());
} finally {

}
%>