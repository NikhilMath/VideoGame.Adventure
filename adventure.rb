# source 'https://rubygems.org'
# require "faker"
# gem 'faker', '~> 1.6', '>= 1.6.6'

Health = 5
alive = true

def party_request
  answer = gets.chomp
  if answer == "Yes"
    puts "fantastic, you will not regret your choice, once the dark lord is killed we will happily help you get home!"
    puts ""
    adventure
  elsif answer == "No"
    puts "well you have no choice, so we are going to take you on this journey no matter what, but dont worry we will protect you!"
    puts ""
    adventure
  else
    puts "im sorry but did you mean 'Yes' or 'No'"
    party_request
  end
end

def intro
  puts "You are going through a drive through at a Burger King located in the south end of Chicago, all of the sudden you see a portal open up in front of you and you fall down it. What is happening."
  # sleep(5)
  puts ""
  puts "you slowly open your eyes and you see a tall figure in front of you..."
  # sleep(4)
  puts ""
  puts "what is going on..."
  puts ""
  # sleep(5)
  puts ""
  puts "Hello! welcome to the magical land of foon, my name is Usidor the wizard. I think you feel down a portal from your world and now you here with us. I have heard of your kind here before, you are a human. "
  puts ""
  # sleep(5)
  puts "What is your name Human?"
    name = gets.chomp
  puts ""
  puts "well hello there #{name}! nice to meet you, I am about to meet up with my party and we are going to go defeat the dark lord! Do you want to join us on this great adventure? a simple 'Yes' or 'No' will suffice"

  party_request
end

def adventure
  puts "Ok, since I am a wizard I will put a health bar on your head, when you get hit, it will go down one point, and if you go to 0 you will die. Your Health is: #{Health} points"
end

intro

  # puts "you died, you will never see your wife and daughter again.. They will think you abondoned them.. im sorry."