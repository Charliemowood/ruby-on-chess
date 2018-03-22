class Board

  def position(board_setup, square_position)
    for square in board_setup do
      if square[:square] == square_position
        return square[:piece_status]
      end
    end
  end

end
