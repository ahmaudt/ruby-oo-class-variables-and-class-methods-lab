class Song

    attr_accessor :name, :artist, :genre, :artists, :genres, :count

    @@count = 0
    @@artists = []
    @@genres = []
    @@songs = []

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@artists << @artist
        @@genres << @genre
        @@songs << @name
        @@count+=1
    end

    def self.count # must be self.count to refer to itself the Class, not the instance
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # count genre number of occurances in array
        # output number of occurances as value of genre like so genre => number_of_occurances
        @@genres.each_with_object(Hash.new(0)) { |song,genre_tally| genre_tally[song] += 1 }
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) { |song,artist_tally| artist_tally[song] += 1 }
    end
end