require 'pry'
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

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  input = input.to_i if input.to_i > 0
  valid = true

  songs.each.with_index.detect do |title, i|
    if input == i+1 || input == title
      puts "Playing #{title}"
      valid = true
      break
    else
      valid = false
    end
  end

  puts "Invalid input, please try again" if !valid
end

def list(songs)
  songs.each.with_index do |title, i|
    puts "#{i+1}. #{title}"
  end
end

def exit_jukebox
 puts "Goodbye"
end

def run(songs)
    help

    loop do

    puts "Please enter a command:"
    input = gets.chomp

    case input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
    end

  end
end
