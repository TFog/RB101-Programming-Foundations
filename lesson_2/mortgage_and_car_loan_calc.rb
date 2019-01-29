require 'yaml'
MESSAGES = YAML.load_file('mac_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /^[0-9]*(?:\.[0-9]*)?$/.match(num)
end

loan_amount = '' # No commas or money signs please

month_intrest_rate = '' # APR converted into months. represented as a percentage

duration_in_months = '' # Duration of loan in months

apr = '' # the APR as given from the bank.

# gets the amount of money was lent
loop do
  prompt(MESSAGES['loan_request'])
  loan_amount = gets.chomp
  break if valid_number?(loan_amount)

  prompt(MESSAGES['loan_error'])
end

loop do
  prompt(MESSAGES['apr_request'])
  apr = gets.chomp
  if valid_number?(apr)
    month_intrest_rate = (apr.to_f / 12) / 100
    break
  end
  prompt(MESSAGES['apr_error'])
end

loop do
  prompt(MESSAGES['duration_request'])
  p 'Years:'
  duration_years = gets.chomp
  p 'Months:'
  duration_months = gets.chomp
  if valid_number?(duration_years) && valid_number?(duration_months)
    duration_in_months = duration_years.to_f * 12 + duration_months.to_f
    break
  end
  prompt(MESSAGES['duration_error'])
end

month_payment = loan_amount.to_f * (month_intrest_rate.to_f / (1 - (1 + month_intrest_rate.to_f)**(-duration_in_months.to_f)))
puts "Monthly payment is $#{month_payment.round(2)} a month."
