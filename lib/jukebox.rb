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

def play(array)
  chosen_song = nil
  puts "Please enter a song name or number:"
  answer = gets.chomp

  array.each.with_index(1) do |song, index|
    if answer == song || answer.to_i == index
      chosen_song = song
      puts "Playing #{array[index-1]}"
    end
  end
  if chosen_song == nil
    puts "Invalid input, please try again"
  end
end

def list(array)
  array.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  loop do
    response = gets.chomp
    if response == "list"
      list(array)
    elsif response == "play"
      play(array)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
