class Gameplay

  def initialize(name)
    @name = name
    @player1 = Players.new('Player 1')
    @player2 = Players.new('Player 2')
  end
  
  attr_reader :name

  # checks the score to determine if someone wins
  def score
    if @player1.dies
      winner(@player2)
    elsif @player2.dies
      winner(@player1)
    end
  end
  # Shows who's winning
  def stats
    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
  end
  # Shows who is the winner
  def winner(player)
    puts "#{player.name} wins with a score of #{player.life}/3"
    puts " ----- GAME OVER ----- "
    puts "Goodbye!"
    exit
  end
  # Turn order and repeats until GAME OVER
  def turn
    @player1.new_question
    score
    @player2.new_question
    score
    stats
    puts " ----- NEW TURN ----- "
    turn
  end

end
