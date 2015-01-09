puts "Welcome to Tic_Tac-Toe"
puts "Here is our game board"
puts "You can go first! You are Xs. The computer will be 0s."
puts "Choose your square by typing the number of the square you want (1-9)"
class Board
  attr_accessor :spaces, :num_turns
  def initialize
    @spaces = {"1" => "1", "2" => "2", "3" => "3",
               "4" => "4", "5" => "5", "6" => "6",
               "7" => "7", "8" => "8", "9" => "9"}
    @player1 = "X"
    @computer = "O"
    @num_turns = 1

  end

  def displayBoard
    puts " #{@spaces['1']} | #{@spaces['2']} | #{@spaces['3']}"
    puts "------------"
    puts " #{@spaces['4']} | #{@spaces['5']} | #{@spaces['6']}"
    puts "------------"
    puts " #{@spaces['7']} | #{@spaces['8']} | #{@spaces['9']}"
  end

  def play
      if @num_turns.odd?
        player_turn(@player1)
      else
        player_turn(@computer)
      end
      @num_turns += 1
  end

  def player_turn(which_player)
    puts "Where would you like to move? (1-9)"
    user_choice = gets.chomp

    if @num_turns.odd?
      @spaces[user_choice] = @player1
    else
      @spaces[user_choice] = @computer
    end

  end



end

  @board = Board.new
  while @board.num_turns < 11
    @board.displayBoard
    @board.play
  end

# #computer AI
# comp selects random 1-9
# then check to make sure not already used
# if not change num to string and then put into spaces
#   if taken, generate another random number until avail




