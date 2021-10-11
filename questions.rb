class Question
  attr_reader :question, :answer
  def initialize(player)
    @player = player
  end

  def ask_question
    make_question
    puts @question
    puts "> "
  end

  def answer_validation (answer)
    if answer === @answer
      puts "Yesssss! You are correct."
      true
    else
      puts "whatttttt???? No!!"
      false
    end
  end


  def make_question
    number_1 = rand(1..20)
    number_2 = rand(1..20)
    @question = "#{@player}: What does #{number_1} plus #{number_2} equal?"
    @answer = number_1 + number_2
  end

end