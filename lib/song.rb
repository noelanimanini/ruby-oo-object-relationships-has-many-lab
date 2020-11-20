require_relative '../lib/artist'
require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize (name)
        @name = name 
        @artist 
        @@all << self
    end

    # def name
    #     self.title
    # end 

    def self.all
        @@all
    end

    def artist_name
        @artist.name if @artist
    end 

    def artist=(artist)
        @artist=artist
        Artist.all << self
        #binding.pry
    end 
end 



