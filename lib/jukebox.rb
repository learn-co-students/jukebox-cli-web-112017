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
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_answer = gets.chomp

  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
    if user_answer == (index + 1) || user_answer == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
  end
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  help_answer = gets.chomp

  if help_answer == "exit"
   exit_jukebox
 elsif help_answer == "help"
   help
 elsif help_answer == "list"
   list(songs)
 else
   play(songs)
  end
end
