def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card
  display_card_total(deal1 + deal2)
  return deal1 + deal2
end


def invalid_command
  puts "Please enter a valid command"
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 's'
    num
  elsif input == 'h'
    deal = deal_card
    display_card_total(num + deal)
    return deal + num
  else
    invalid_command
    prompt_user
    get_user_input
    num
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
total = 0  
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    # display_card_total(total)
  end
  end_game(total)
end
    
