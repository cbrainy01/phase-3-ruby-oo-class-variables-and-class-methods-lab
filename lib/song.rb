require "pry"

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

         @@artists << artist
         @@genres << genre
        @@count += 1
    end

    # class method
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        final_hash = {}
        @@genres.each do |genre|
            if final_hash[genre] == nil
                final_hash[genre] = 1
            else final_hash[genre] += 1
            end
        end
        final_hash
    end
  
    def self.artist_count
        final_hash = {}
        @@artists.each do |artist|
            if final_hash[artist] == nil
                final_hash[artist] = 1
            else final_hash[artist] += 1
            end
        end
        final_hash
    end


end