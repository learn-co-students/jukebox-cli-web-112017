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
  message = [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program"
  ]
  message.each do |i|
    puts i.chomp
  end
end

def list(songs)
  songs.each_with_index do |i|
    puts i.chomp
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  songs.each.with_index(1) do |i, v|
    if i == song || v.to_s == song
      puts "Playing #{i}"
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
  input = gets.chomp
  puts "Please enter a command: #{input}"
  while input
    case input
    when "list"
      list(songs)
      break
    when "play"
      play(songs)
      break
    when "help"
      help
      break
    when "exit"
      exit_jukebox
      break
    else
      puts "Please enter a command: #{input}"
    end
  end
end
