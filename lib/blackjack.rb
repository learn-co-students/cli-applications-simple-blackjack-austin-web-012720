require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer  = gets.chomp()
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  num = deal_card
  num += deal_card
  display_card_total(num)
  return num
end

def hit?(num)
  prompt_user
  ans = get_user_input
  if (ans=="h")
      num+= deal_card
      return (num)
  elsif(ans=="s")
      return (num)
  else
    invalid_command()
    hit?(num)
    
  end
  

end

def invalid_command
  puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21
      num = hit?(num)
      display_card_total(num)
  end
  end_game(num)
end
    
