VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

WINNING_COMBOS = {
  'scissors' => ['paper', 'lizard'],
  'paper' => ['rock', 'spock'],
  'rock' => ['lizard', 'scissors'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  puts "=> #{message}"
end

def convert_input(valid_choices, input)
  choice = valid_choices.select { |name| name.start_with?(input) }
  choice.join
end

def winner?(player, computer, winning_combos)
  if winning_combos[player].include?(computer)
    1
  elsif winning_combos[computer].include?(player)
    2
  else
    3
  end
end

def display_winner(winner)
  case winner
  when 1
    prompt("You won!")
  when 2
    prompt("You lose!")
  when 3
    prompt("It's a tie!")
  end
end

def update_score(winner, score)
  case winner
  when 1
    score[0] += 1
  when 2
    score[1] += 1
  when 3
    score[2] += 1
  end
end

def display_score(score)
  prompt("Win = #{score[0]}")
  prompt("Lose = #{score[1]}")
  prompt("Tie = #{score[2]}")
end

loop do
  system('clear')
  score = [0, 0, 0]

  prompt("Welcome to rock, paper, scissors, spock, lizard:")

  loop do
    choice = ''

    loop do
      prompt("Please make a choice:")
      prompt("Enter the fist two charaters if you prefer:")
      prompt("#{VALID_CHOICES.join(', ')}")
      input = gets.chomp
      choice = convert_input(VALID_CHOICES, input)

      if VALID_CHOICES.any?(choice) && input.length > 1
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose => #{choice}; Computer chose => #{computer_choice}")

    winner = winner?(choice, computer_choice, WINNING_COMBOS)

    display_winner(winner)

    update_score(winner, score)

    display_score(score)

    break if score[0] == 3 || score[1] == 3
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
