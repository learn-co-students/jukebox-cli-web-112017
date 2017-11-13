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
    songs.each_with_index {|value, index| puts "#{index + 1}. #{value}"}
end


def play(songs)
    puts "Please enter a song name or number:"
    choice = gets.chomp
    if choice.to_i > 0 && choice.to_i <= songs.length
        to_play = choice.to_i - 1
        puts "Playing #{songs[to_play]}"
        elsif songs.include? (choice)
       puts "Playing #{choice}"
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
  input = gets.chomp
    if input == "help"
        help
    elsif input == "list"
        list(songs)
    elsif input == "play"
        play(songs)
    elsif input == "exit"
        exit_jukebox
        return
    else
    puts "Please enter a command:"
    input = gets.chomp
    end
end
