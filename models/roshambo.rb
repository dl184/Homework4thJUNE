class Roshambo

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end



  def check_win(player1, player2)
    if player1 == player2
      return "draw"
    elsif player1 == "rock" && player2 == "paper"
      return "paper wins"
    elsif player1 == "rock" && player2 == "siscors"
      return "rock wins"
    elsif player1 == "paper" && player2 == "siscors"
      return "paper wins"
    elsif player1 == "paper" && player2 == "rock"
      return "paper wins"
    elsif player1 == "siscors" && player2 == "paper"
      return "siscors wins"
    elsif player1 == "siscors" && player2 == "rock"
      return "rock wins"
    end
  end

end
