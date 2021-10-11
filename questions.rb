class Question

  def initialize(player)
    @player = player
  end

  def ask_question
    make_question
    puts question
    puts "> "
  end

  def answer_validation (answer)
    if answer == @answer
      puts "yesssss!"
    else
      puts "whatttttt???? No!!"
    end
  end


  def make_question
    number1 = round(1..20)
    number2 = round(1..20)
    @question = "#{@player}: What does #{number1} plus #{number2} equal?"
    @answer = number1 + number2
  end



end