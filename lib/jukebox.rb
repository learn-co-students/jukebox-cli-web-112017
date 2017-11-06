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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)

  songs.each_with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

def play(songs)

  puts "Please enter a song name or number:"
  user_input = gets.chomp

  if user_input.to_i.to_s == user_input && user_input.to_i <= songs.length
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif  songs.index(user_input) != nil
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

help
puts "Please enter a command:"
user_input = gets.chomp

until user_input == "exit"
  if user_input == "list"
    list
  elsif user_input == "play"
    play(songs)
  elsif user_input == "help"
    help
  end
  puts "Please enter a command:"
  user_input = gets.chomp
end
exit_jukebox

end
