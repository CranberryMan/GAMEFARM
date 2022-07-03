<%@ page pageEncoding="utf-8"%>
<!--
<nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom sticky-top">
	<a class="navbar-brand" href="#">GAMEFARM</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="#collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#">Home</a></li>
			<li class="nav-item active"><a class="nav-link" href="#">Introduce</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Game </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Puzzle</a> <a class="dropdown-item"
						href="#">Others</a>
				</div></li>
			<li class="nav-item active"><a class="nav-link" href="#">Ranking</a></li>
		</ul>
	</div>
</nav>
 -->
 <%
    String loginID = (String)session.getAttribute("loginID");
 	String loginNICK = (String)session.getAttribute("loginNICK");
    boolean login = loginID == null ? false : true;
%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');

.navbar-default {
  background-color: #e74c3c;
}
</style>
 <!-- 이게 진짜 나븨바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom sticky-top" style="font-family: 'Black Han Sans', sans-serif; background-color:#e74c3c;">
  <div class="container">
    <div class="navbar-brand"><a href="./index.jsp"><img src="./res/img/logo.png"></a></div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
      <%
      if(login == false){
    	  %><li class="nav-item active"><a class="nav-link" href="./login.jsp">LOGIN</a></li><%
      }
      else{
    	  %>
    	  <li class="nav-item active"><a class="nav-link" href="./logout.jsp"><%= loginNICK %> LOGOUT</a></li>
    	  <%
      }
      %>
      <%
      if(login == false){
    	  %><li class="nav-item active"><a class="nav-link" href="./join.jsp">Gaip</a></li><%
      }
      %>	

			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Game </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="./snake.jsp">Snake</a>
					<a class="dropdown-item" href="./tetris.jsp">Tetris</a>
					<a class="dropdown-item" href="./2048.jsp">2048</a>
					<a class="dropdown-item" href="./recshoot.jsp">Death and Horror</a>
					<a class="dropdown-item" href="./minesweeper.jsp">Mine</a>
					<a class="dropdown-item" href="#">Others</a>
				</div></li>
			<li class="nav-item active"><a class="nav-link" href="./introduce.jsp">Introduce</a></li>
      </ul>
    </div>
  </div>
</nav>
