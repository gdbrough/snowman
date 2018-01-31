require('minitest/autorun')
require('minitest/rg')

require_relative('../player.rb')

class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new('Ed', 6)
    @player2 = Player.new('Graeme', 6)
  end

  def test_player1_has_name
    assert_equal('Ed', @player1.name)
  end

  def test_player1_has_lives
    assert_equal(6, @player1.lives)
  end

end
