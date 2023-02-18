require 'yaml'
MSG = YAML.load_file('loan_calculator.yml')

def prompt(input)
  puts "=> #{input}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def monthly_payments(ammount, rate, duration)
  ammount * (rate / (1 - (1 + rate)**(-duration)))
end

system('clear')

prompt(MSG['welcome'])

loan_ammount = ''
loop do
  prompt(MSG['loan_ammount'])
  loan_ammount = gets.chomp
  if number?(loan_ammount)
    break
  else
    prompt(MSG['not_valid_number'])
  end
end

interest_rate = ''
loop do
  prompt(MSG['interest_rate'])
  interest_rate = gets.chomp
  if number?(interest_rate)
    break
  else
    prompt(MSG['not_valid_number'])
  end
end

loan_length = ''
loop do
  prompt(MSG['loan_length'])
  loan_length = gets.chomp
  if number?(loan_length)
    break
  else
    prompt(MSG['not_valid_number'])
  end
end

ammount = loan_ammount.to_i
monthly_interest_rate = (interest_rate.to_f / 100) / 12
loan_duration_months = loan_length.to_i * 12

monthly_payment = monthly_payments(ammount, monthly_interest_rate,
                                   loan_duration_months)

total_ammount = monthly_payment * loan_duration_months

prompt("#{MSG['loan_duration_months']}#{loan_duration_months}")

prompt("#{MSG['monthly_interest']}#{(monthly_interest_rate * 100).round(5)}")

prompt("#{MSG['monthly_payments']}#{monthly_payment.round(2)}")

prompt("#{MSG['total_ammount']}#{total_ammount.round(2)}")
