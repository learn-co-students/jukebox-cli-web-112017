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
  songs.each do |song|
    puts "#{songs.index(song)+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp

  list(songs).each do |song|

    if song.include?(song_name)
      puts "playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
  return
end

def run(songs)
  help

  puts "Please enter a command:"
  user_response = gets.chomp

  until user_response == "exit" do
    if user_response == "list"
      list(songs)
      user_response = gets.chomp
    elsif user_response == "play"
      play(songs)
      user_response = gets.chomp
    elsif user_response == "help"
      help
      user_response = gets.chomp
    else
      user_input = gets.chomp
      return
    end
  end
  exit_jukebox
end
