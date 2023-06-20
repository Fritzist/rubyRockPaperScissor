def checkWin(player_choice, computer_choice)
    if player_choice == computer_choice
        puts "Draw"
    elsif player_choice == "scissor"
        if computer_choice == "rock"
            puts "You lose!"
        elsif computer_choice == "paper"
            puts "You win!"
        end
    elsif player_choice == "rock"
        if computer_choice == "paper"
            puts "You lose!"
        elsif computer_choice == "scissor"
            puts "You win!"
        end
    elsif player_choice == "paper"
        if computer_choice == "scissor"
            puts "You lose!"
        elsif computer_choice == "rock"
            puts "You win!"
        end
    end
end

def compChoose()
    choices = ["rock", "paper", "scissor"]
    comChoice = choices[rand(3)]
    return comChoice
end

puts "Welcome to 'Rock, Paper, Scissor'!"

while true
  puts "You choose"
    player_choice = gets.chomp().downcase()

    if player_choice != "rock" && player_choice != "paper" && player_choice != "scissor"
        puts "Invalid choice! Please try again."
        next
    end 

    computer_choice = compChoose()
    puts "Computer choose: " + computer_choice

    result = checkWin(player_choice, computer_choice)

    puts result

    puts "Play again? (y/n)"
    playAgain = gets.chomp().downcase()

    if playAgain != "y"
        puts "Thanks for playing"
        break
    end
end
