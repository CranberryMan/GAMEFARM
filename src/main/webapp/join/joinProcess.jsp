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
} catch (SQLException e) {
	out.println("DB연결 실패<br>");
	out.println("오류 : " + e.getMessage());
} finally {
}
%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	int check = 0;
	
	String sql = "select * from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		check++;
		out.println("아이디중복");
	}
	
	if(check == 0){
		sql = "INSERT INTO member(`id`, `pw`, `name`) VALUES (?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, nick);
		if(pstmt.executeUpdate() == 1){
			pstmt.close();
			conn.close();
			response.sendRedirect("../index.jsp");
		}
		else{
			out.println("쿼리오류");
			pstmt.close();
			conn.close();
		}
		pstmt.close();
		conn.close();
		out.println("가입실패");
	}
%>