require './questions'

class Game
  attr_accessor :current_player
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 0
  end

  def game_over? 
    # @players.select { |player| player.lives == 0}.length > 0

    loser = @players.select {|player| player.lives == 0}
    if loser.length > 0
      return true
    end
    false
  end

  def play
      question = Question.new(@players[@current_player].name)
      question.ask_question
      answer = gets.chomp.to_i
      question.answer_validation answer
  end

  def update_lives (player, result)
    if !result 
      player.lives -= 1
    end
  end

  def switch_player
    if @current_player == 0
      @current_player = 1
    else 
      @current_player = 0
    end
    puts "----- NEW TURN -----" unless game_over?
  end


  def show_lives
    puts "#{@players.first.name}: #{@players.first.lives}/3 vs #{@players.last.name}: #{@players.last.lives}/3"
  end
  
  def end_game
    winner = @players.find {|player| player.lives > 0}
    puts "----- GAME OVER! -----"
    puts "Player #{winner.name} wins with a score of #{winner.lives}/3"
    puts "Good bye!"
  end
  
  def start_game
    puts "----- GAME STARTED! -----"
    while !self.game_over? do
      result = play
      update_lives(@players[@current_player], result)
      show_lives
      switch_player
    end
    end_game
  end



end


