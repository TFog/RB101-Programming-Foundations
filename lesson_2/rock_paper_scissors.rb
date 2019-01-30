VALID_CHOICES = %w[rock paper scissors lizard spock].freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  beats_hash = { rock: %w[scissors lizard], paper: %w[rock spock],
                 scissors: %w[paper lizard], spock: %w[scissors rock],
                 lizard: %w[paper spock] }
  x = first.to_sym

  if beats_hash[x].include?(second)
    true
  else
    false
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('you won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt('It\'s a tie!')
  end
end

player_wins = 0
computer_wins = 0

def final_winner_message(first, second)
  if first >= 5
    prompt('You\'re the grand winner!')
  elsif second >= 5
    prompt('The computer is the grand winner!')
  else
    prompt('No grand winners yet. First to 5 wins!')
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp
    break if VALID_CHOICES.include?(choice)

    prompt('That\'s not a valid choice') unless VALID_CHOICES.include?(choice)
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose #{choice}, Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_wins += 1
  else
    computer_wins += 1
  end

  final_winner_message(player_wins, computer_wins)
  prompt("The score is you: #{player_wins}. Computer: #{computer_wins}")
  break if player_wins >= 5 || computer_wins >= 5

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing')
