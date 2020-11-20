require 'pry'
class Post
	attr_reader :title, :author
    @@all = [] 
        def initialize (title)
        # binding.pry
        @title = title
        @author 
        @@all << self
        end 
    
        def self.all
            @@all
        end
    
        def author=(author)
            @author=author
            Author.all << self
        end 

        def author_name
            @author.name if @author
        end 

end 
