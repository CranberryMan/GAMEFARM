<%@ page pageEncoding="utf-8"%>
<link rel="stylesheet" href="style.css">

<h1>Dinosaur Game!</h1>
<canvas id="game" height="200" width="800"></canvas>
<p class="controls">press space bar to start</p>

<script src="js/helpers.js"></script>
<script src="js/objects/game-object.js"></script>
<script src="js/objects/cactus.js"></script>
<script src="js/objects/dinosaur.js"></script>
<script src="js/objects/background.js"></script>
<script src="js/objects/score.js"></script>
<script src="js/game.js"></script>
<script>
	new Game({
		el : document.getElementById("game")
	});
</script>