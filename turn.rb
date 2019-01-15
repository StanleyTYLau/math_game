class Turn
  attr_reader :question

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @question = "What is #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end

  def correct?(answer)
    if @answer == answer
      true
    else
      false
    end
  end

end

