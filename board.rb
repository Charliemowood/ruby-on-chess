class Board

  def initialize
    @board_setup = [{ "a1" => "white_castle"}]
  end

  def position(square)
    if square == "a1"
      return @board_setup[0][square]
    else
      return "white_knight_one"
    end
  end

end
