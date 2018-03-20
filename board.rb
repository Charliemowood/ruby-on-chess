class Board

  def initialize
    @board_setup = [{ "a1" => "white_castle"}]
  end

  def position(square)
    return @board_setup[0][square]
  end

end
