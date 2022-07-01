<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>



<%
String loginID = (String)session.getAttribute("loginID");
String loginNICK = (String)session.getAttribute("loginNICK");

if(loginID == null){
	%>
	<script>
	var data = confirm("로그인을 먼저 해주세요.");
	if (data == true){
		window.history.back();
	}
	else{
		window.history.back();
	}
	</script>
	<%
}
else{
	%>
	<%@ include file="../../dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	String chat = request.getParameter("chat");
	Date date = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = df.format(date);
	String sql = "insert into 2048chat values (?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, loginNICK);
	pstmt.setString(2, chat);
	pstmt.setString(3, dateString);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	response.sendRedirect("../../2048.jsp");


}
%>