require('minitest/autorun')
require('minitest/rg')

require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../hiddenword.rb')

class GameTest < MiniTest::Test

  def setup
    @player1 = Player.new("Ed", 6)
    @hiddenword = HiddenWord.new("snowman")
    @game = Game.new(@player1,@hiddenword)
  end

end
