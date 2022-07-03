<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
canvas {
	border: 1px solid #888;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-moz-box-shadow: 10px 10px 5px #888;
	-webkit-box-shadow: 10px 10px 5px #888;
	box-shadow: 10px 10px 5px #888;
	background-color: #eee;
}
</style>
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/recshoot.js" type="text/javascript"></script>
<div style="margin: auto; justify-content: center; align-items: center; font-family: 'Gugi', cursive;">
<span id = "end">좌우 방향키를 누르면 시작합니다!</span>
	<canvas id="mainCanvas" width="500" height="700">
        </canvas>
</div>
<script>
start();
</script>

<form name="scoreForm" method="post" action="recshootRankProcess.jsp">
	<p><input type="hidden" placeholder=""
			style="width: 220px; height: 40px; font-size: 20px;" id="userScore" name="finalScore">
</form>
    <iframe name='blankifr' style='display:none;'></iframe>