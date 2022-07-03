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
        session.setAttribute("loginNICK", rs.getString(3));
		check++;
	}
}
pstmt.close();
conn.close();
if (check >= 1) {
	response.sendRedirect("../index.jsp");
} else {%>
	<script>
	var data = confirm("로그인실패! ID PW를 확인해 주세요.");
	if (data == true){
		window.history.back();
	}
	else{
		window.history.back();
	}
	</script><%
}
%>