var Game_Over = {
 
    preload : function() {
        // Load the needed image for this game screen.
        game.load.image('gameover', 'gamePage/snake/img/gameover.png');
    },
 
    create : function() {
 
        // Create button to start game like in Menu.
        this.add.button(0, 0, 'gameover', this.startGame, this);
 
        // Add text with information about the score from last game.
        game.add.text(235, 350, "LAST SCORE", { font: "bold 16px sans-serif", fill: "#000000", align: "center"});
        game.add.text(350, 348, score.toString(), { font: "bold 20px sans-serif", fill: "#fff", align: "center" });
        
         let finalScore = document.getElementById("finalScore");
	                this.deletedLines++;
	                finalScore.innerText = "" + score;
	                
 
    },
 
    startGame: function () {
 
        // Change the state back to Game.
        this.state.start('Game');
 
    }
};