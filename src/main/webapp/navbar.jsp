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
 
 <!-- 이게 진짜 나븨바 -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom sticky-top">
  <div class="container">
    <div class="navbar-brand"><a href="./index.jsp"><img src="./res/img/logo.png"></a></div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="./join.jsp">Gaip</a></li>
			<li class="nav-item active"><a class="nav-link" href="#">Introduce</a></li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Game </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="./snake.jsp">Snake</a>
					<a class="dropdown-item" href="./tetris.jsp">Tetris</a>
					<a class="dropdown-item" href="./dinorun.jsp">DinoRun</a>
					<a class="dropdown-item" href="./minesweeper.jsp">Mine</a>
					<a class="dropdown-item" href="#">Others</a>
				</div></li>
			<li class="nav-item active"><a class="nav-link" href="#">Ranking</a></li>
      </ul>
    </div>
  </div>
</nav>
