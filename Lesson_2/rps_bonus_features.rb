require 'yaml'

MSG = YAML.load_file('rps_bonus_features.yml')

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

def banner(text)
  top_bottom = "+-#{'-' * text.length}-+"
  sides = "|#{' ' * text.length}  |"

  puts top_bottom
  puts sides
  puts "| #{text} |"
  puts sides
  puts top_bottom
end

def convert_input(valid_choices, choice_input)
  valid_choices.select { |name| name.start_with?(choice_input) }.join
end

def valid_choice(choice, choice_input)
  VALID_CHOICES.any?(choice) && choice_input.length > 1
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
    prompt(MSG['win'])
  when 2
    prompt(MSG['lose'])
  when 3
    prompt(MSG['tie'])
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

def round_winner(score)
  if score[0] == 3
    banner(MSG['winner'])
  else
    banner(MSG['loser'])
  end
end

def round_totals(score, round_total)
  if score[0] == 3
    round_total[0] += 1
  elsif score[1] == 3
    round_total[1] += 1
  end
end

def display_round_totals(round_total)
  prompt("Round Totals: You = #{round_total[0]} Computer = #{round_total[1]}")
end

round_total = [0, 0]

loop do
  system('clear')

  score = [0, 0, 0]

  banner(MSG['welcome'])

  loop do
    choice = ''

    loop do
      prompt(MSG['choice'])
      prompt("#{VALID_CHOICES.join(', ')} ")
      prompt(MSG['characters'])
      choice_input = gets.chomp.downcase

      choice = convert_input(VALID_CHOICES, choice_input)

      valid_choice(choice, choice_input) ? break : prompt(MSG['not_valid'])
    end

    computer_choice = VALID_CHOICES.sample

    system('clear')

    prompt("You chose => #{choice}")
    prompt("Computer chose => #{computer_choice}")

    winner = winner?(choice, computer_choice, WINNING_COMBOS)

    display_winner(winner)

    update_score(winner, score)

    display_score(score)

    break if score[0] == 3 || score[1] == 3
  end

  round_winner(score)

  round_totals(score, round_total)

  display_round_totals(round_total)

  prompt(MSG['play_again'])
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt(MSG['thanks'])
