songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |string, index|
    puts (index + 1).to_s + ". " + string
  end
end

def play(array)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if array.any? {|string| string.include?(response)}
    array.each do |string|
      puts "Playing #{string}" if string.include?(response)
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  response = gets.chomp
  while response != "exit"
    case response
    when "help"
      help
    when "list"
      list(array)
    when "play"
      play(array)
    else
      puts "I'm sorry thats not a valid command"
    end
    response = gets.chomp
  end
  exit_jukebox
end
