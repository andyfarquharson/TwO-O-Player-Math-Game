class Questions

  def initialize
    @num1 = rand(0..20)
    @num2 = rand(0..20)
    @ans = @num1 + @num2
  end
  
  def question(name)
    puts "#{name}: What does #{@num1} + #{@num2} equal?"
  end
  # checks if input is correct
  def correct?(input)
    @ans === input
  end

end

  
