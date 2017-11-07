#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/Users/devinencalada/Documents/Flatiron/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  keys_array = my_songs.keys
  keys_array.each_with_index do |string, index|
    puts (index + 1).to_s + ". " + string
  end
end


def play(my_songs)
  song_names = my_songs.keys
  puts "Please enter a song name"
  response = gets.chomp
  if song_names.include?(response)
    path = my_songs[response]
    system "open #{path}"
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
