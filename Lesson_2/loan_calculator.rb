require 'yaml'
MS = YAML.load_file('loan_calculator.yml')
require 'pry'
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

prompt(MS['welcome'])

loan_ammount = ''
loop do
  prompt(MS['loan_ammount'])
  loan_ammount = gets.chomp
  if number?(loan_ammount)
    break
  else
    prompt(MS['not_valid_number'])
  end
end

interest_rate = ''
loop do
  prompt(MS['interest_rate'])
  interest_rate = gets.chomp
  if number?(interest_rate)
    break
  else
    prompt(MS['not_valid_number'])
  end
end

loan_length = ''
loop do
  prompt(MS['loan_length'])
  loan_length = gets.chomp
  if number?(loan_length)
    break
  else
    prompt(MS['not_valid_number'])
  end
end

ammount = loan_ammount.to_i
monthly_interest_rate = (interest_rate.to_f / 100) / 12
loan_duration_months = loan_length.to_i * 12

monthly_payment = monthly_payments(ammount, monthly_interest_rate, loan_duration_months)
#binding.pry
prompt("#{MS['monthly_payments']}#{monthly_payment}")
