class Board
  attr_accessor :spaces, :num_turns
  def initialize
    @spaces = {"1" => "1", "2" => "2", "3" => "3",
               "4" => "4", "5" => "5", "6" => "6",
               "7" => "7", "8" => "8", "9" => "9"}
    @player1 = "X"
    @player2 = "O"
    @num_turns = 1
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

  def play_game
      while @num_turns < 10
        display_board
        play
      if check_for_winners == true
        display_board
        puts "We have a winner!"
        break
      end
  end
end

@board = Board.new
@board.welcome
@board.play_game
end






