
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
def run(songs)
  rsp = ''
  while rsp != 'exit'
    puts "Please enter a command: "
    rsp = gets.chomp
    case rsp
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
  end
  exit_jukebox
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  rsp = gets.chomp

  if (1..10).to_a.include?(rsp.to_i)
    puts "Playing #{songs[rsp.to_i-1]}"
  elsif songs.include?(rsp)
    puts "Playing #{rsp}"
  else
    puts "Invalid input, please try again"
  end

end

def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index+1} " + "#{val}"
  end
end

def exit_jukebox
  puts "Goodbye"
end
