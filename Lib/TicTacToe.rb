class Board
  attr_accessor :spaces, :num_turns, :play, #:play_game
  #what goes in as attr_accessor?
  def initialize
    @spaces = {"1" => "1", "2" => "2", "3" => "3",
               "4" => "4", "5" => "5", "6" => "6",
               "7" => "7", "8" => "8", "9" => "9"}
    @player1 = "X"
    @player2 = "O"
    @num_turns = 1
    # are the 2 below correct?
    @play
    @welcome
    # @play_game

  end

  def welcome
    puts "Welcome to Tic_Tac-Toe"
    puts "Here is our game board"
    puts "The first player will be Xs and the second player will be Os."
    puts "Choose your square by typing the number of the square you want to mark.(1-9)"
  end


  def display_board
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
      player_turn(@player2)
    end
    @num_turns += 1
  end

  def player_turn(which_player)
    puts "Where would you like to move? (1-9)"
    user_choice = gets.chomp
    if @num_turns.odd?
      @spaces[user_choice] = @player1
    else
      @spaces[user_choice] = @player2
    end
  end

#work on this later.
  # def space_unavail
  #  if @spaces[user_choice] == "X"
   #   puts "That spot is already taken. Please choose an available space."
    #elsif @spaces[user_choice] == "O"
    #  puts "That spot is already taken. Please choose an available space."
    #end
  # end

  def check_for_winners
    if    @spaces['1'] == @spaces['2'] && @spaces['2'] == @spaces['3']
      true
    elsif @spaces['4'] == @spaces['5'] && @spaces['5'] == @spaces['6']
      true
    elsif @spaces['7'] == @spaces['8'] && @spaces['8'] == @spaces['9']
      true
    elsif @spaces['1'] == @spaces['4'] && @spaces['4'] == @spaces['7']
      true
    elsif @spaces['2'] == @spaces['5'] && @spaces['5'] == @spaces['8']
      true
    elsif @spaces['3'] == @spaces['6'] && @spaces['6'] == @spaces['9']
      true
    elsif @spaces['1'] == @spaces['5'] && @spaces['5'] == @spaces['9']
      true
    elsif @spaces['3'] == @spaces['5'] && @spaces['5'] == @spaces['7']
      true
    else
      false
    end
  end
#I tried to turn this into a method, what's wrong?
  def play_game
    def initialize
      @board = Board.new
      while @board.num_turns < 10
        @board.display_board
        @board.play
      if @board.check_for_winners == true
        @board.display_board
        puts "We have a winner!"
        break
      end
    end
  end

end
# thing i've tried to call start the game...
# @board = Board.new  -- when I had this it just printed a ton of empty boards
# @board.play

@board = Board.new
@board.welcome
@board.play_game

end


#I moved all of this to the play_game method. What's wrong?
# @board = Board.new
# while @board.num_turns < 10
#   @board.display_board
#   @board.play
#   if @board.check_for_winners == true
#     @board.display_board
#     puts "We have a winner!"
#     break
#   end
# end





