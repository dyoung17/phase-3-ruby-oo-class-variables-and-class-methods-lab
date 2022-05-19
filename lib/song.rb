class Song
    attr_accessor :name, :artist, :genre
    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize(name, artist, genre)
       @name = name
       @artist = artist
       @genre = genre
       @@count += 1
       @@artists << artist
       @@genres << genre
    end
    def name(name='hit me baby one more time')
        return name
    end
    def artist(artist='Brittany Spears')
        @artist=artist
    end
    def genre(genre='pop')
        @genre=genre
    end
    def self.count
        @@count
    end
    def self.artists
        artistArray=@@artists.uniq
    end
    def self.genres
        genreArray=@@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end

