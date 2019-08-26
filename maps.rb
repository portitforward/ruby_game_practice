WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

board0 = [" ", " ", " ", " ", " ", " ", "O", "X", "O"] #empty board
board1 = ["O", "O", "O", "O", "X", "X", "O", "O", "O"] #draw
board2 = ["X", "O", "X", "O", "X", "X", "O", "O", "X"] #top row X win

def wincheck(board)
    a = WIN_COMBINATIONS.map{|con| con.map{|x| x if board[x]=="X" } == con || con.map{|x| x if board[x]=="O" } == con}
    return a.any?{|x| x if x == true}
end

def won?(board)
    WIN_COMBINATIONS.detect{ |winner|
    board[winner[0]] == board[winner[1]] && board[winner[1]] == board[winner[2]] && board[winner[0]] != " "
  }
end  

def winner(board)
    x = WIN_COMBINATIONS.map{|con| con.map{|x| x if board[x]=="X" } == con}.any?{|x| x if x == true}
    o = WIN_COMBINATIONS.map{|con| con.map{|x| x if board[x]=="O" } == con}.any?{|x| x if x == true}
    if x == true
        return "X"
    elsif o == true
        return "O"
    else
        return nil
    end                
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

puts "board one!"
puts "____________"
puts display_board(board0)
puts winner(board0) + " has one the game!"
puts "____________"

puts "board two!"
puts "____________"
puts display_board(board1)
puts winner(board1) + " has one the game!"
puts "____________"

puts "board three!"
puts "____________"
puts display_board(board2)
puts winner(board2) + " has one the game!"
puts "____________"
 
