require 'minitest/autorun'
require_relative'../models/roshambo'

class TestRoshambo < Minitest::Test

  def setup
    @game = Roshambo.new()
  end

  def test_rock_beats_siscors()
    assert_equal("rock wins", @game.check_win("rock", "siscors"))
  end

  def test_paper_beats_rock
    assert_equal("paper wins", @game.check_win("paper", "rock"))
  end

  def test_siscors_beats_paper
    assert_equal("siscors wins", @game.check_win("siscors", "paper"))
  end

  def test_draw
    assert_equal("draw", @game.check_win("rock", "rock"))
  end

end
