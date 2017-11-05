#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace Users/eric
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/eric/jukebox-cli-web-112017/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each do |key, value|
    puts key
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Enter a song Name"
  rsp = gets.chomp
  if my_songs.keys.include?(rsp)
    puts "Now playing #{rsp}"
    open my_songs[rsp]
  else
    puts "Invalid choice"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  rsp = ''
  while rsp != 'exit'
    puts "Please enter a command: "
    rsp = gets.chomp
    case rsp
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "help"
        help
    end
  end
  exit_jukebox
end
