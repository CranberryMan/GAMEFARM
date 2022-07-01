<%@ page pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<%
String loginID = (String)session.getAttribute("loginID");
String loginNICK = (String)session.getAttribute("loginNICK");

if(loginID == null){
	
}
else{
	%>
	<%@ include file="../../dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	String score = request.getParameter("finalScore");
	int intScore = Integer.parseInt(score);
	String sql = "insert into recshootrank values (?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, loginNICK);
	pstmt.setInt(2, intScore);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
}
%>