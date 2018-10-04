def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return Random.rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_cards)
  # code hit? here
  
  prompt_user
  answer = get_user_input

  if answer == "s"
    current_cards
  elsif answer == "h"
    new_card = deal_card
    current_cards += new_card
  else invalid_command
    invalid_command
  end
  return current_cards
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  card_total = initial_round
  until card_total > 21
    answer = hit?(card_total)
    display_card_total()
  end 
  end_game(card_total)
end
    
