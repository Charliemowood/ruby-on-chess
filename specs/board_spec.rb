require 'minitest/autorun'
require_relative '../board'

class TestBoard < Minitest::Test

  def setup
    @board = Board.new()
    @board_setup = [{square: "a1", piece_status: "white_castle_one"}, {square: "a2", piece_status:
      "white_knight_one"}, {square: "a3", piece_status: "white_bishop_one"}, square: "a4", piece_status: "white_king"]
  end

  def test_board_exists
    refute_nil(@board)
  end

  def test_board_has_castle_at_a1
    assert_equal(@board.position(@board_setup, "a1"), "white_castle_one")
  end

  def test_board_has_knight_at_a2
    assert_equal(@board.position(@board_setup, "a2"), "white_knight_one")
  end

  def test_board_has_bishop_at_at_a3
    assert_equal(@board.position(@board_setup, "a3"), "white_bishop_one")
  end

  def test_board_has_bishop_at_at_a4
    assert_equal(@board.position(@board_setup, "a4"), "white_king")
  end

end
