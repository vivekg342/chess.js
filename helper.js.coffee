$(document).ready() ->
  # define the constants
  baseX = 0.5;
  baseY = 0.5;
  width = 50;
  margin=8;
  # get the 2D context from the "chessboard" canvas
  context = document.getElementById("chessboardCanvas").getContext("2d");
  chess = new Chess();
  drawChessboard();
  # draws a chessboard
  drawChessboard = ->
    # draws the 8 by 8 chessboard
    # k represents the Squares id in chess.js
    k=0;
    for i in [0..7]
      for j in [0..7]
        x = baseX + width * i
        y = baseY + width * j
        #draw the rectangle
        context.strokeRect(x, y, width, width);
        # fill the odd number rectangles
        context.fillRect(x, y, width, width) if ((i + j) % 2 != 0)
        drawPiece(k,i,j);


  drawPiece= (pos,i,j) ->
		piece = chess.get(chess.SQUARES[pos]);
		if(piece)
			var x = baseX + width * i+margin, y = baseY + width * j+margin;
			context.strokeRect(x, y, width-margin*2, width-margin*2);

		var pieces =['B','K','N','P','Q','R';]
		images=[];



