<%@ page pageEncoding="utf-8"%>

<%@ page import="java.sql.*"%>

<%
Connection conn = null;
try {
	String url = "jdbc:mysql://localhost:3306/gamefarm?ServerTimeZone=Asia/Seoul";
	String user = "root";
	String pw = "1234";

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pw);
	out.println("DB연결 성공<br><br>");
} catch (SQLException e) {
	out.println("DB연결 실패<br>");
	out.println("오류 : " + e.getMessage());
} finally {

}
%>