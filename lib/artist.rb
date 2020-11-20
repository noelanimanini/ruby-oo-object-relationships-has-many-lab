require_relative '../lib/song'
require 'pry'

class Artist

    @@song_count = 0

    attr_reader :name
    attr_accessor :songs
    @@all = []

    def initialize (name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end 

    def self.song_count
        # binding.pry
        @@song_count
    end 

    def add_song(song_name)
        @songs << song_name
        song_name.artist = self
        @@song_count += 2
        
    end 

    def songs
         Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        @songs << song
        song.artist = self
        @@song_count += 1
      end
    # binding.pry
    # def self.song_count
    #     @songs.count
    # end
end 
