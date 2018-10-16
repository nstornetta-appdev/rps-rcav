class GameController < ApplicationController
    
    def computer_move
        move_array = ["rock", "paper", "scissors"]
        computer_rand = rand(3)
        return move_array[computer_rand] 
    end
    
    def win_status(user_move, computer_move)
        if user_move == computer_move
            return "tied"
        elsif (user_move == "rock" && computer_move == "scissors")
            return "won"
        elsif (user_move == "paper" && computer_move == "rock")
            return "won"
        elsif (user_move == "scissors" && computer_move == "paper")
            return "won"
        elsif (user_move == "rock" && computer_move == "paper")
            return "lost"
        elsif (user_move == "paper" && computer_move == "scissors")
            return "lost"
        elsif (user_move == "scissors" && computer_move == "rock")
            return "lost"
        end
    end
    
    def user_plays_rock
        @computer_move = computer_move()
        @win_status = win_status("rock", @computer_move)
        render("move_templates/rock.html.erb")
    end
    
    def user_plays_paper
        @computer_move = computer_move()
        @win_status = win_status("paper", @computer_move
        )
        render("move_templates/paper.html.erb")
    end
    
    def user_plays_scissors
        @computer_move = computer_move()
        @win_status = win_status("scissors", @computer_move)
        render("move_templates/scissors.html.erb")
    end
    
end