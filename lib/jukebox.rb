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
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each_with_index do |el, idx|
    puts "#{idx + 1}. #{el}"
  end
end


def play(my_songs)
puts "Please enter a song name or number:"
song = gets.chomp
  if my_songs.include?(song)
    #system "open #{song}"
    puts "Playing #{song}"
  elsif (song.to_i <= my_songs.length && song.to_i > 0)
    song_id = my_songs[song.to_i - 1]
    #system "open #{song_id}"
    puts "Playing #{song_id}"
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


  looper = true
  while looper
    response = gets.chomp


    case response.downcase
when "list"
  list(songs)
when "play"
  play(songs)
when "help"
  help
when "exit"
  exit_jukebox
  looper = false
else
  puts "Thats not a valid repsonse!"
end
  end

end
