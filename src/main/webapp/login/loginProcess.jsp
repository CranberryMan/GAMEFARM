<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
int check = 0;

String sql = "select * from member where id = ?";
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs = pstmt.executeQuery();
while (rs.next()) {
	if (pw.equals(rs.getString(2))) {
        session.setAttribute("loginID", id);
		check++;
	}
}
pstmt.close();
conn.close();
if (check >= 1) {
	response.sendRedirect("../index.jsp");
} else {
	out.println("로그인실패 페이지로 리다이렉트 예정");

}
%>