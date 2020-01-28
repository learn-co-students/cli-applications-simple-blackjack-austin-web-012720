def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here

  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
   gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total

end

def hit?(number)
  # code hit? here
  prompt_user
  value = get_user_input
  if value == 'h'
    return number += deal_card
  elsif value == 's'
    return number
  else
    invalid_command
    hit?(number)
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome

  initial_value = initial_round
  total = 0
  #puts intial_value
  while initial_value <= 21 do
    
    initial_value = hit?(initial_value)
    display_card_total(initial_value)


  end
end_game(initial_value)
end
