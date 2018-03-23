require 'minitest/autorun'
require_relative '../board'

class TestBoard < Minitest::Test

  def setup
    @board = Board.new()
    @board_setup = [{square: "a1", piece_status: "white_castle_one"},
      {square: "b1", piece_status: "white_knight_one"},
      {square: "c1", piece_status: "white_bishop_one"},
      {square: "d1", piece_status: "white_king"},
      {square: "e1", piece_status: "white_queen"},
      {square: "f1", piece_status: "white_bishop_two"},
      {square: "g1", piece_status: "white_knight_two"},
      {square: "h1", piece_status: "white_rook_two"},
      {square: "a2", piece_status: "white_pawn_one"},
      {square: "b2", piece_status: "white_pawn_two"},
      {square: "c2", piece_status: "white_pawn_three"},
      {square: "d2", piece_status: "white_pawn_four"},
      {square: "e2", piece_status: "white_pawn_five"},
      {square: "f2", piece_status: "white_pawn_six"},
      {square: "g2", piece_status: "white_pawn_seven"},
      {square: "h2 ", piece_status: "white_pawn_eight"},
      {square: "a3", piece_status: nil},
      {square: "b3", piece_status: nil},
      {square: "c3", piece_status: nil},
      {square: "d3", piece_status: nil},
      {square: "e3", piece_status: nil},
      {square: "f3", piece_status: nil},
      {square: "g3", piece_status: nil},
      {square: "h3", piece_status: nil},
      {square: "a4", piece_status: nil},
      {square: "b4", piece_status: nil},
      {square: "c4", piece_status: nil},
      {square: "d4", piece_status: nil},
      {square: "e4", piece_status: nil},
      {square: "f4", piece_status: nil},
      {square: "g4", piece_status: nil},
      {square: "h4", piece_status: nil},
      {square: "a5", piece_status: nil},
      {square: "b5", piece_status: nil},
      {square: "c5", piece_status: nil},
      {square: "d5", piece_status: nil},
      {square: "e5", piece_status: nil},
      {square: "f5", piece_status: nil},
      {square: "g5", piece_status: nil},
      {square: "h5", piece_status: nil},
      {square: "a6", piece_status: nil},
      {square: "b6", piece_status: nil},
      {square: "c6", piece_status: nil},
      {square: "d6", piece_status: nil},
      {square: "e6", piece_status: nil},
      {square: "f6", piece_status: nil},
      {square: "g6", piece_status: nil},
      {square: "h6", piece_status: nil},
      {square: "a7", piece_status: "black_pawn_one"},
      {square: "b7", piece_status: "black_pawn_two"},
      {square: "c7", piece_status: "black_pawn_three"},
      {square: "d7", piece_status: "black_pawn_four"},
      {square: "e7", piece_status: "black_pawn_five"},
      {square: "f7", piece_status: "black_pawn_six"},
      {square: "g7", piece_status: "black_pawn_seven"},
      {square: "h7", piece_status: "black_pawn_eight"},
      {square: "a8", piece_status: "black_rook_one"},
      {square: "b8", piece_status: "black_knight_one"},
      {square: "c8", piece_status: "black_bishop_one"},
      {square: "d8", piece_status: "black_king"},
      {square: "e8", piece_status: "black_queen"},
      {square: "f8", piece_status: "black_bishop_two"},
      {square: "g8", piece_status: "black_knight_two"},
      {square: "h8", piece_status: "black_rook_two"}
    ]
  end

  def test_board_exists
    refute_nil(@board)
  end

  def test_board_has_castle_at_a1
    assert_equal(@board.position(@board_setup, "a1"), "white_castle_one")
  end

  def test_board_has_knight_at_a2
    assert_equal(@board.position(@board_setup, "b1"), "white_knight_one")
  end

  def test_board_has_bishop_at_at_a3
    assert_equal(@board.position(@board_setup, "c1"), "white_bishop_one")
  end

  def test_board_has_bishop_at_at_a4
    assert_equal(@board.position(@board_setup, "d1"), "white_king")
  end

end
