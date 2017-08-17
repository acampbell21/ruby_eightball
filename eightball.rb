#This is my magic eightball
require 'pry'
@responses = ['it is certain', 'without a doubt', 'yes certainly',
              'better not tell you now', 'cannot predict now',
               'concentrate and ask again', 'dont count on it',
               'my sources say no', 'Outlook not so good']
@questions = ['Will I have a good day?',
              'Will I be the best coder there ever was?']

def menu
  puts '---Welcome to the Eight Ball---'
  puts '1) Ask the eightball a question'
  puts '2) Type QUIT to exit the eightball'
  puts '3) Type 3 to enter a random question'
  choice = gets.chomp
  menu_options(choice)
end

def menu_options(choice)
  case choice
    when '1'
      ask_eightball
    when '2'
      puts 'So be it'
    when 'QUIT'
      puts 'The eightball has feelings too!'
      exit
    when '3'
      puts @questions.sample
      puts @responses.last
    when 'easter eggs' #This menu reveals the easter eggs
      puts 'Type reveal to show list of commands'
      puts 'Type add_answer to add a response'
      menu
    when 'reveal'
      puts "These are the answers"
      unique = @responses.uniq
      puts unique
      menu
    when 'add answer'
      add_answer

  end
end

def add_answer
  puts 'What answer would you like to add'
  input = gets.chomp
  @responses << input
  menu
end

def ask_eightball
    puts "What is your question"
    input = gets.chomp
  case input
    when 'add answer'
      add_answer
    when 'reveal'
      puts "These are the answers"
      unique = @responses.uniq
      puts unique
  end
  @responses.uniq
  menu
end

menu
