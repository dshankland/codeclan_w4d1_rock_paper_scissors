class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def rock_paper_scissors()
    valid = ["rock", "paper", "scissors"]
    return "Please use rock, scissors or paper!" if !(valid.include? @hand1)
    return "Please use rock, scissors or paper!" if !(valid.include? @hand2)
    return "Draw!" if @hand1 == @hand2
    return "Player1 wins with Rock!" if @hand1 == "rock" && @hand2 == "scissors"
    return "Player2 wins with Rock!" if @hand1 == "scissors" && @hand2 == "rock"
    return "Player2 wins with Paper!" if @hand1 == "rock" && @hand2 == "paper"
    return "Player1 wins with Paper!" if @hand1 == "paper" && @hand2 == "rock"
    return "Player2 wins with Scissors!" if @hand1 == "paper" && @hand2 == "scissors"
    return "Player1 wins with Scissors!" if @hand1 == "scissors" && @hand2 == "paper"
  end

end