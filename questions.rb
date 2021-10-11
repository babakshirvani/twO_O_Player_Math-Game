class Question

  

  def make_question
    number1 = round(1..20)
    number2 = round(1..20)
    @question = "#{name}: What does #{number1} plus #{number2} equal?"
    @answer = number1 + number2
  end



end