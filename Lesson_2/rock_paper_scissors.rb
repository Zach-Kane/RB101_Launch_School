VALID_CHOICES = {
  1 => 'rock', 2 => 'paper', 3 => 'scissors',
  4 => 'spock', 5 => 'lizard'
}

WINNING_COMBOS = {
  'scissors' => { 'paper' => 'win', 'lizard' => 'win' },
  'paper' => { 'rock' => 'win', 'spock' => 'win' },
  'rock' => { 'lizard' => 'win', 'scissors' => 'win' },
  'lizard' => { 'spock' => 'win', 'paper' => 'win' },
  'spock' => { 'scissors' => 'win', 'rock' => 'win' }
}

def prompt(message)
  puts "=> #{message}"
end

def winner?(player, computer, winning_combos)
  if winning_combos[player].key?(computer)
    1
  elsif winning_combos[computer].key?(player)
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

def display_score(win, lose, tie)
  prompt("Win = #{win}")
  prompt("Lose = #{lose}")
  prompt("Tie = #{tie}")
end

system('clear')

loop do
  win = 0
  lose = 0
  tie = 0

  prompt("Welcome to rock, paper, scissors, spock, lizard:")

  loop do
    choice = ''

    loop do
      prompt("Please make a choice:")
      VALID_CHOICES.each_pair { |k, v| puts "#{k} #{v}" }
      input = gets.chomp.to_i
      choice = VALID_CHOICES[input]

      if VALID_CHOICES.key?(input)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES[[*1..5].sample]

    prompt("You chose => #{choice}; Computer chose => #{computer_choice}")

    winner = winner?(choice, computer_choice, WINNING_COMBOS)

    display_winner(winner)

    case winner
    when 1
      win += 1
    when 2
      lose += 1
    when 3
      tie += 1
    end

    display_score(win, lose, tie)

    break if win == 3 || lose == 3
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
