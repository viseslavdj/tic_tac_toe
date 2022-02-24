class Game
  def initialize
    @positions = ["p1","p2","p3","p4","p5","p6","p7","p8","p9"]
    @p1 = "1"
    @p2 = "2"
    @p3 = "3"
    @p4 = "4"
    @p5 = "5"
    @p6 = "6"
    @p7 = "7"
    @p8 = "8"
    @p9 = "9" 
    @finish = false
  end

  attr_accessor :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9

  def draw_board
    puts "#{@p1}|#{@p2}|#{@p3}"
    puts "-----"
    puts "#{@p4}|#{@p5}|#{@p6}"
    puts "-----"
    puts "#{@p7}|#{@p8}|#{@p9}"
  end

  def play(position, player)
    case position
    when "p1"
      @p1 = player
      @positions.delete("p1")
    when "p2"
      @p2 = player
      @positions.delete("p2")
    when "p3"
      @p3 = player
      @positions.delete("p3")
    when "p4"
      @p4 = player
      @positions.delete("p4")
    when "p5"
      @p5 = player
      @positions.delete("p5")
    when "p6"
      @p6 = player
      @positions.delete("p6")
    when "p7"
      @p7 = player
      @positions.delete("p7")
    when "p8"
      @p8 = player
      @positions.delete("p8")
    when "p9"
      @p9 = player
      @positions.delete("p9")
    end
  end

  def who_is_the_winner?
    if @p1 == "x" && @p2 == "x" && @p3 == "x"
      puts "X is winner"
      @finish = true
    elsif @p1 == "x" && @p4 == "x" && @p7 == "x"
      puts "X is winner"
      @finish = true
    elsif @p1 == "x" && @p5 == "x" && @p9 == "x"
      puts "X is winner"
      @finish = true
    elsif @p2 == "x" && @p5 == "x" && @p8 == "x"
      puts "X is winner"
      @finish = true
    elsif @p3 == "x" && @p6 == "x" && @p9 == "x"
      puts "X is winner"
      @finish = true
    elsif @p3 == "x" && @p5 == "x" && @p7 == "x"
      puts "X is winner"
      @finish = true
    elsif @p4 == "x" && @p5 == "x" && @p6 == "x"
      puts "X is winner"
      @finish = true
    elsif @p7 == "x" && @p8 == "x" && @p9 == "x"
      puts "X is winner"
      @finish = true
    elsif @p1 == "o" && @p2 == "o" && @p3 == "o"
      puts "O is winner"
      @finish = true
    elsif @p1 == "o" && @p4 == "o" && @p7 == "o"
      puts "O is winner"
      @finish = true
    elsif @p1 == "o" && @p5 == "o" && @p9 == "o"
      puts "O is winner"
      @finish = true
    elsif @p2 == "o" && @p5 == "o" && @p8 == "o"
      puts "O is winner"
      @finish = true
    elsif @p3 == "o" && @p6 == "o" && @p9 == "o"
      puts "O is winner"
      @finish = true
    elsif @p3 == "o" && @p5 == "o" && @p7 == "o"
      puts "O is winner"
      @finish = true
    elsif @p4 == "o" && @p5 == "o" && @p6 == "o"
      puts "O is winner"
      @finish = true
    elsif @p7 == "o" && @p8 == "o" && @p9 == "o"
      puts "O is winner"
      @finish = true
    end
  end

  def reset
    
  end

  attr_reader :positions
  attr_reader :finish

end
/ main code /
new_game = Game.new()
new_game.draw_board

while new_game.finish == false
  puts "Player X: Choose position #{new_game.positions}"
  move = gets.chomp
  while (!new_game.positions.include?(move))
    puts "Player X:Choose correct position #{new_game.positions}"
    move = gets.chomp
  end
  new_game.play(move, "x")
  new_game.draw_board
  new_game.who_is_the_winner?
  if new_game.finish == true
    break
  end
  if new_game.positions.length == 0 && new_game.finish == false
    puts "There is no winner"
    break
  end
  if new_game.positions == false
    break
  end
  puts "Player 0: Choose position #{new_game.positions}"
  move = gets.chomp
  while (!new_game.positions.include?(move))
    puts "Player 0: Choose correct position #{new_game.positions}"
    move = gets.chomp
  end
  new_game.play(move, "o")
  new_game.draw_board
  new_game.who_is_the_winner?

end