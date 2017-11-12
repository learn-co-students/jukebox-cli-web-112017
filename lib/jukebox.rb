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
  help_string = "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  puts help_string
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{array[index + 1]}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  array.each_with_index do |song, index|
    if selection == song || selection == (index + 1).to_s
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  jukebox_on = true

  while jukebox_on == true do
  usr_command = gets.chomp
    case usr_command
    when "help"
      help
    when "list"
      list
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      jukebox_on = false
    else
      puts "Let's go, Steve Aoki"
    end
  end
end
