
class Game

  def initialize
    @player1_turn = true
    @player1 = Player.new
    @player2 = Player.new
    @game_over = false
  end

  def play
    # while game is not over
    while (!@game_over) do

      player_turn = @player1_turn ? "Player 1" : "Player 2"
      current_turn = Turn.new
      
      puts "#{player_turn}: #{current_turn.question}?"
      answer = $stdin.gets.chomp.to_i

      if current_turn.correct?(answer)
        reply = "CORRECT"
      else
        reply = "WRONG"
        if @player1_turn
          @player1.incorrect
        else
          @player2.incorrect
        end
      end

      puts "Your Answer: #{answer} is #{reply}"
      puts "P1: #{@player1.health}/3 vs P2: #{@player2.health}/3"
      
      @player1_turn = !@player1_turn
      @game_over = @player1.lose? || @player2.lose?
      
      if !@game_over
        puts "----- NEW TURN -----"
      else
        puts "----- GAME OVER -----"
      end
      
    end
  end


end
