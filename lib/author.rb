# class Author
#     attr_accessor :name
#     attr_accessor :posts
#     @@all = []
#     @@post_counter = 0
#     def initialize(name)
#         @name = name
#         @posts = []
#         @@all << self
#     end

#     def self.all
#         @@all
#     end 

#     def posts
#         Posts.all.select {|post| post.author == self}

#     end 

#     def add_post(post_name)
#         @posts << post_name
#         post_name.author = self
#         @@post_counter += 2
#     end 

#     def add_post_by_title(post_name)
#         post = Author.new(post_name)
#         @posts << post
#         post.author = self
#         @@post_counter += 1   
#     end  

#     def self.post_count
#         @@post_counter
#     end 
# end

class Author

    @@post_counter = 0

    attr_reader :name
    attr_accessor :posts
    @@all = []

    def initialize (name)
        @name = name
        @posts = []
        @@all << self
    end

    def self.all
        @@all
    end 

    def self.post_count
        # binding.pry
        @@post_count
    end 

    def add_post(post_name)
        @posts << post_name
        post_name.author = self
        @@post_counter 
        
    end 

    def posts
         Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(post_name)
        post = Post.new(post_name)
        @posts << post
        post.author = self
        @@post_counter += 3
      end
    
    def self.post_count
        @@post_counter
    end 
end 
