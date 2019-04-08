require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("paper", "paper")
    @game3 = Game.new("scissors", "scissors")
    @game4 = Game.new("rock", "paper")
    @game5 = Game.new("rock", "scissors")
    @game6 = Game.new("paper", "rock")
    @game7 = Game.new("paper", "scissors")
    @game8 = Game.new("scissors", "rock")
    @game9 = Game.new("scissors", "paper")
    @game10 = Game.new("rubbish", "rubbish")
    @game11 = Game.new("rubbish", "something")
  end

  def test_game1
    assert_equal("Draw!", @game1.rock_paper_scissors())
  end

  def test_game2
    assert_equal("Draw!", @game2.rock_paper_scissors())
  end

  def test_game3
    assert_equal("Draw!", @game3.rock_paper_scissors())
  end

  def test_game4
    assert_equal("Paper Wins!", @game4.rock_paper_scissors())
  end

  def test_game5
    assert_equal("Rock Wins!", @game5.rock_paper_scissors())
  end

  def test_game6
    assert_equal("Paper Wins!", @game6.rock_paper_scissors())
  end

  def test_game7
    assert_equal("Scissors Wins!", @game7.rock_paper_scissors())
  end

  def test_game8
    assert_equal("Rock Wins!", @game8.rock_paper_scissors())
  end

  def test_game9
    assert_equal("Scissors Wins!", @game9.rock_paper_scissors())
  end

  def test_game10
    assert_equal("Please use rock, scissors or paper!", @game10.rock_paper_scissors())
  end

  def test_game11
    assert_equal("Please use rock, scissors or paper!", @game11.rock_paper_scissors())
  end

end