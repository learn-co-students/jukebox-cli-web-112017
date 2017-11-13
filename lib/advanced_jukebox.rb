#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
 "Go Go GO" => "/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/01.mp3",
 "LiberTeens" => '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/lindsaydavis/Development/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
    puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end



def list(my_songs)
  my_songs.keys.each_with_index do |key, index|
      puts "#{index + 1}. #{key}"
      end
end


def play(my_songs)
  puts "Please enter a song name:"
  choice = gets.chomp
  if my_songs.has_key?(choice)
      puts "Now playing #{choice}"
      system 'open ' << my_songs[choice]
  else
     puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
    help
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
        help
        elsif input == "list"
        list(my_songs)
        elsif input == "play"
        play(my_songs)
        elsif input == "exit"
        exit_jukebox
        return
        else
        puts "Please enter a command:"
        input = gets.chomp
    end
end
