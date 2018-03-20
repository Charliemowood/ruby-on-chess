require 'minitest/autorun'
require_relative '../board'

class TestBoard < Minitest::Test

  def setup
    @board = Board.new()
  end

  def test_board_exists
    refute_nil(@board)
  end

  def test_board_has_castle_at_a_one
    assert_equal(@board.position("a1"), "white_castle")
  end



end
