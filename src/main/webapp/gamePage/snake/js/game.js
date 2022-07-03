var snake, apple, squareSize, score, speed,
	updateDelay, direction, new_direction,
	addNew, cursors, scoreTextValue, speedTextValue,
	textStyle_Key, textStyle_Value;

var Game = {
	preload: function() {
		// 뱀의 몸통과 사과 이미지 두개를 preload 해놓는다.
		game.load.image('snake', 'gamePage/snake/img/snake.png');
		game.load.image('apple', 'gamePage/snake/img/apple.png');
	},

	create: function() {
		snake = [];                     // sanke.png 를 얼마나 표시할지를 나타낼 변수
		apple = {};                     // 사과
		squareSize = 15;                // 사과/뱀의 1 블럭 사이즈
		score = 0;                      // Game score.
		speed = 0;                      // Game speed.
		updateDelay = 0;                // 키 입력시 얼만큼의 delay 후 방향을 변경할 지
		direction = 'right';            // 시작시 뱀의 방향
		new_direction = null;           // 키 입력시 변경될 뱀의 방향
		addNew = false;                 // 뱀이 사과를 먹었을 때, 새로운 사과를 놓을지 여부

		// 기본 Phaser 컨트롤러를 keyboard input 으로 받겠다고 명시
		cursors = game.input.keyboard.createCursorKeys();
		game.stage.backgroundColor = '#000000';


		for (var i = 0; i < 10; i++) {
			snake[i] = game.add.sprite(150 + i * squareSize, 150, 'snake');  // Parameters are (X coordinate, Y coordinate, image)	
		}

		// 첫 사과 배치
		this.generateApple();

		// 상단의 텍스트 (점수, 속도)
		textStyle_Key = { font: "bold 14px sans-serif", fill: "#46c0f9", align: "center" };
		textStyle_Value = { font: "bold 18px sans-serif", fill: "#fff", align: "center" };

		// Score.
		game.add.text(30, 20, "SCORE", textStyle_Key);
		scoreTextValue = game.add.text(90, 18, score.toString(), textStyle_Value);

		// Speed.
		game.add.text(500, 20, "SPEED", textStyle_Key);
		speedTextValue = game.add.text(558, 18, speed.toString(), textStyle_Value);

	},


	update: function() {
		//    키 입력 처리
		if (cursors.right.isDown && direction != 'left') {
			new_direction = 'right';
		} else if (cursors.left.isDown && direction != 'right') {
			new_direction = 'left';
		} else if (cursors.up.isDown && direction != 'down') {
			new_direction = 'up';
		} else if (cursors.down.isDown && direction != 'up') {
			new_direction = 'down';
		}

		speed = Math.min(10, Math.floor(score / 5));

		speedTextValue.text = '' + speed;

		updateDelay++;

		if (updateDelay % (10 - speed) == 0) {
			var firstCell = snake[snake.length - 1],
				lastCell = snake.shift(),
				oldLastCellx = lastCell.x,
				oldLastCelly = lastCell.y;

			if (new_direction) {
				direction = new_direction;
				new_direction = null;
			}



			if (direction == 'right') {
				lastCell.x = firstCell.x + 15;
				lastCell.y = firstCell.y;
			} else if (direction == 'left') {
				lastCell.x = firstCell.x - 15;
				lastCell.y = firstCell.y;
			} else if (direction == 'up') {
				lastCell.x = firstCell.x;
				lastCell.y = firstCell.y - 15;
			} else if (direction == 'down') {
				lastCell.x = firstCell.x;
				lastCell.y = firstCell.y + 15;
			}


			snake.push(lastCell);
			firstCell = lastCell;

			if (addNew) {
				snake.unshift(game.add.sprite(oldLastCellx, oldLastCelly, 'snake'));
				addNew = false;
			}

			this.appleCollision();

			this.selfCollision(firstCell);

			this.wallCollision(firstCell);
		}
	},

	generateApple: function() {
		var randomX = Math.floor(Math.random() * 40) * squareSize,
			randomY = Math.floor(Math.random() * 30) * squareSize;

		apple = game.add.sprite(randomX, randomY, 'apple');
	},

	appleCollision: function() {

		for (var i = 0; i < snake.length; i++) {
			if (snake[i].x == apple.x && snake[i].y == apple.y) {
				addNew = true;

				apple.destroy();

				this.generateApple();
				score++;

				scoreTextValue.text = score.toString();

			}
		}

	},

	selfCollision: function(head) {
		for (var i = 0; i < snake.length - 1; i++) {
			if (head.x == snake[i].x && head.y == snake[i].y) {
				game.state.start('Game_Over');
			}
		}
	},

	wallCollision: function(head) {
		if (head.x >= 600 || head.x < 0 || head.y >= 450 || head.y < 0) {
			game.state.start('Game_Over');
		}
	}
};