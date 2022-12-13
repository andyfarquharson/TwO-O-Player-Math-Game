class Players
  
  def initialize(name)
    @name = name
    @life = 3
  end

  attr_reader :name, :life
  # lose a life
  def lose
    @life -= 1
  end
  # end of life
  def dies
    @life === 0 
  end
  # genterates new question and checks if the response is correct
  def new_question 
    new_question = Questions.new
    new_question.question(name)
    print '> '
    @answer = gets.chomp
    if new_question.correct?(@answer.to_i)
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      lose
    end
  end
end







  


