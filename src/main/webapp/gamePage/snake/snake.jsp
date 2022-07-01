<%@ page pageEncoding="utf-8"%>
<script type="text/javascript"
	src="gamePage/snake/js/phaser.min.js?<%=System.currentTimeMillis()%>"></script>
<script type="text/javascript"
	src="gamePage/snake/js/menu.js?<%=System.currentTimeMillis()%>"></script>
<script type="text/javascript"
	src="gamePage/snake/js/game.js?<%=System.currentTimeMillis()%>"></script>
<script type="text/javascript"
	src="gamePage/snake/js/game_over.js?<%=System.currentTimeMillis()%>"></script>
<script type="text/javascript"
	src="gamePage/snake/js/main.js?<%=System.currentTimeMillis()%>"></script>


<!-- 이 폼에 점수를 넣고 점수 처리하는 곳으로 보냄. 페이지 이동을 없게 하려고 임의이 보이지 않는 iframe을 만들어서 거기에다가 보내서 처리 -->
<form name="scoreForm" method="post" action="./gamePage/snake/snakeRankProcess.jsp" target="blankifr">
	<p><input type="hidden" placeholder=""
			style="width: 220px; height: 40px; font-size: 20px;" id="userScore" name="finalScore">
</form>
    <iframe name='blankifr' style='display:none;'></iframe>
<!-- 이 finalscore가 랭크에 들어갑니다. 지금은 보이는데 나중에 눈에 안보이게 수정할 예정 // 안보이게 수정완료-->