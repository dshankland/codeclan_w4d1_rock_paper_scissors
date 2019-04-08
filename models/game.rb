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
    return "Rock Wins!" if @hand1 == "rock" && @hand2 == "scissors"
    return "Rock Wins!" if @hand1 == "scissors" && @hand2 == "rock"
    return "Paper Wins!" if @hand1 == "rock" && @hand2 == "paper"
    return "Paper Wins!" if @hand1 == "paper" && @hand2 == "rock"
    return "Scissors Wins!" if @hand1 == "paper" && @hand2 == "scissors"
    return "Scissors Wins!" if @hand1 == "scissors" && @hand2 == "paper"
  end

end