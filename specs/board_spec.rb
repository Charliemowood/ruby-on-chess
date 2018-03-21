require 'minitest/autorun'
require_relative '../board'

class TestBoard < Minitest::Test

  def setup
    @board = Board.new()
  end

  def test_board_exists
    refute_nil(@board)
  end

  def test_board_has_castle_at_a1
    assert_equal(@board.position("a1"), "white_castle")
  end

  def test_board_has_knight_at_a2
    assert_equal(@board.position("a2"), "white_knight_one")
  end

end
