class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    # def self.genre_count
    #     #codereturns a hash of genres 
    #     #and the number of songs that have those genres
    #     all_genres = {}
    #     @genre||=[]
    #     all_genres << @genre
    # end

    # def self.genre_count
    #     genre_hash = {}
    #     @@genres.each do |genre_name|
    #         if genre_hash[genre_name]
    #             genre_hash[genre_name] = 2
    #         else
    #             genre_hash[genre_name] = 1
    #         end
    #     end
    #     genre_hash
    # end
    
    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre_name|
            genre_hash[genre_name] ||= 0
            genre_hash[genre_name] += 1
        end
        genre_hash
    end
 

    def self.artist_count
        #return a hash of artists 
        #and the number of songs that have those artists
        artist_hash = {}
        @@artists.each do |artist_name|
            artist_hash[artist_name] ||=0
            artist_hash[artist_name] += 1
        end
        artist_hash
    end

end