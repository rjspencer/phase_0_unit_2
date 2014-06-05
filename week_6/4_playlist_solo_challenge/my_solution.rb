# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode

display song and artist when playing


# Initial Solution

class Song
	attr_reader :name, :artist

	def initialize ( name, artist )
		@name = name
		@artist = artist
	end

	def play

	end
end

class Playlist
	def initialize ( *songs ) # expects multiple
		@songs = []
		songs.map { |song| @songs << song }
	end

	def add ( *songs ) # expects multiple
		songs.map { |song| @songs << song }
	end

	def num_of_tracks
		@songs.length
	end

	def remove ( *songs )
		@songs - [songs]
	end

	def includes?( song )
		@songs.include?(song)
	end

	def play_all
		@songs.each { |song| song.play }
	end

	def display
		@songs.each { |song| p "Title: #{song.name} - Artist: #{song.artist}" }
	end
end
 
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 