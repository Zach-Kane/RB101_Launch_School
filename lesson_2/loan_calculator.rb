# Loan Calculator

require 'yaml'
MESSAGES = YAML.load_file('loan_calculator.yml')

def prompt(input)
  puts "=> #{input}"
end

def float?(input)
  input.to_f.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def monthly_payment(ammount, rate, duration)
  ammount * (rate / (1 - (1 + rate)**(-duration)))
end

system('clear')

prompt(MESSAGES['greeting'])

loop do
  loan = ''
  interest_rate = ''
  loan_duration = ''

  loop do
    prompt(MESSAGES['loan_ammount'])
    loan = gets.chomp

    if number?(loan)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['interest_rate'])
    interest_rate = gets.chomp

    if number?(interest_rate)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration = gets.chomp

    if integer?(loan_duration)
      break
    else
      prompt(MESSAGES['not_valid_number'])
    end
  end

  loan_ammount = loan.to_f

  monthly_rate = (interest_rate.to_f / 100) / 12.0

  duration_in_months = loan_duration.to_i * 12

  monthly_payment = monthly_payment(loan_ammount, monthly_rate, duration_in_months)

  prompt("#{MESSAGES['duration_months']} #{duration_in_months}")

  prompt("#{MESSAGES['monthly_rate']} #{(monthly_rate * 100).round(3)}")

  prompt("#{MESSAGES['payment']} #{monthly_payment.round(2)}")

  prompt(MESSAGES['go_again?'])
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end
