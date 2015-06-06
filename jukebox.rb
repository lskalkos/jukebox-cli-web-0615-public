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

# Your code here

def help #help method
  puts "list                ... to list the songs in your playlist"
  puts "play [name/index]   ... to play a song"
  puts "help                ... to see available commands"
  puts "exit                ... to exit the program"
end

def list(songs) #list method
  songs.each{|song| puts song}
end

def play(songs)
  puts "What song would you like to listen to? Please input the song number or title:"

  song = gets.chomp


  if song == song.to_i.to_s && song.to_i <= songs.length #if the entry is a number that could refer to a song in the array do this
    #look up by index
    puts songs[song.to_i-1]

  elsif songs.include?(song) #otherwise if the entry is a title of a song in the array do this
    #look up by title
    index = songs.index(song)
    puts songs[index]

  else #otherwise something is wrong and we need to try again
    puts "Invalid input, please try again"
    play(songs)

  end
end

def run(songs)
  puts "Please enter a command:"

  command = gets.downcase.strip

  while command != "exit"

    case command
      when "help"
        #help method
        help
      when "list"
        #list method
        list(songs)
      when "play"
        #play method
        play(songs)
    end

    command = gets.downcase.strip
  end

  puts "Goodbye"

end