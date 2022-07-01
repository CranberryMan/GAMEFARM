
var Game_Over = {
 
    preload : function() {
        game.load.image('gameover', 'gamePage/snake/img/gameover.png');
    },
 
    create : function() {
 
        this.add.button(0, 0, 'gameover', this.startGame, this);
 
        game.add.text(235, 350, "LAST SCORE", { font: "bold 16px sans-serif", fill: "#000000", align: "center"});
        game.add.text(350, 348, score.toString(), { font: "bold 20px sans-serif", fill: "#fff", align: "center" });
        
        // 순위 처리 히든폼에 스코어 넣고 섭밋
        document.getElementById('userScore').value = score;
        document.scoreForm.submit();
	                
 
    },
 
    startGame: function () {
        this.state.start('Game');
 
    }
};


