<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<%
String loginID = (String)session.getAttribute("loginID");
if(loginID == null){
	
}
else{
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
	} finally {
	}
	request.setCharacterEncoding("utf-8");
	String score = request.getParameter("finalScore");
	int intScore = Integer.parseInt(score);
	String sql = "insert into snakerank values (?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, loginID);
	pstmt.setInt(2, intScore);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
}
%>