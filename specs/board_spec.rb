require 'minitest/autorun'
require_relative '../board'

class TestBoard < Minitest::Test

  def setup
    @board = Board.new()
  end

  def test_board_exists
    refute_nil(@board)
  end

end
