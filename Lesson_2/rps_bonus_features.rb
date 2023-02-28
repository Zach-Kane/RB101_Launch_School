require 'yaml'

MSG = YAML.load_file('rps_bonus_features.yml')

MOVES = {
  'rock' => { abv: 'r', beats: ['scissors', 'lizard'] },
  'lizard' => { abv: 'l', beats: ['spock', 'paper'] },
  'spock' => { abv: 'sp', beats: ['scissors', 'rock'] },
  'paper' => { abv: 'p', beats: ['spock', 'rock'] },
  'scissors' => { abv: 'sc', beats: ['paper', 'lizard'] }
}

PLAYER = 1
COMPUTER = 2
TIE = 3

WIN_ROUND = 3

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

def get_choice
  prompt(MSG['choice'])
  prompt("#{MOVES.keys.join(', ')} ")
  prompt(MSG['characters'])
  gets.chomp.downcase
end

def convert_input(choice_input)
  (MOVES.map { |k, v| k if v[:abv] == choice_input }).join
end

def which_choice?(choice_input)
  if choice_input.length < 3
    convert_input(choice_input)
  else
    choice_input
  end
end

def valid_choice?(choice_input)
  MOVES.key?(convert_input(choice_input)) ||
    MOVES.key?(choice_input)
end

def choice_input
  choice = ''
  loop do
    choice_input = get_choice

    choice = which_choice?(choice_input)

    valid_choice?(choice_input) ? break : prompt(MSG['not_valid'])
  end
  choice
end

def display_choices(choice, computer_choice)
  prompt("You chose => #{choice}")
  prompt("Computer chose => #{computer_choice}")
end

def winner?(player, computer)
  if MOVES[player][:beats].include?(computer)
    PLAYER
  elsif MOVES[computer][:beats].include?(player)
    COMPUTER
  else
    TIE
  end
end

def display_winner(winner)
  case winner
  when PLAYER
    prompt(MSG['win'])
  when COMPUTER
    prompt(MSG['lose'])
  when TIE
    prompt(MSG['tie'])
  end
end

def update_score(winner, score)
  case winner
  when PLAYER
    score[:player] += 1
  when COMPUTER
    score[:computer] += 1
  when TIE
    score[:tie] += 1
  end
end

def display_score(score)
  prompt("Win = #{score[:player]}")
  prompt("Lose = #{score[:computer]}")
  prompt("Tie = #{score[:tie]}")
end

def round_winner(score)
  if score[:player] == WIN_ROUND
    banner(MSG['winner'])
  else
    banner(MSG['loser'])
  end
end

def round_totals(score, round_total)
  if score[:player] == WIN_ROUND
    round_total[:player] += 1
  elsif score[:computer] == WIN_ROUND
    round_total[:computer] += 1
  end
end

def display_round_totals(round_total)
  prompt("Round Totals: You = #{round_total[:player]}" \
     " Computer = #{round_total[:computer]}")
end

def play_again?
  answer = ''
  loop do
    prompt(MSG['play_again'])
    answer = gets.chomp.downcase

    ['yes', 'y', 'no', 'n'].any?(answer) ? break : prompt(MSG['try_again'])
  end
  answer
end

round_total = { player: 0, computer: 0 }

loop do
  system('clear')

  score = { player: 0, computer: 0, tie: 0 }

  banner(MSG['welcome'])

  loop do
    choice = choice_input

    computer_choice = MOVES.keys.sample

    system('clear')

    display_choices(choice, computer_choice)

    winner = winner?(choice, computer_choice)

    display_winner(winner)

    update_score(winner, score)

    display_score(score)

    break if score[:player] == WIN_ROUND || score[:computer] == WIN_ROUND
  end

  round_winner(score)

  round_totals(score, round_total)

  display_round_totals(round_total)

  answer = play_again?

  break unless ['yes', 'y'].any?(answer)
end

prompt(MSG['thanks'])
