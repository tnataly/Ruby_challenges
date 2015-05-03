=begin
•Create a file in your ruby_challenges folder and title it blog.rb
•Create a blog post object
•Make sure to modify the initialize method so that a user can do important things like add a title and some content to their blog post (we talked about this in the previous lesson)
•Make sure to save the time you created your blog post as an instance variable for each blog post instance.
•Collect all those blog posts in a hash (you learned about these in lesson 7), HINT: you will want to learn about the store method – Ruby 1.9.3, Ruby 2.1.5.
•Organize your blog posts by when you created them. Can you do it in ASC and DESC order?
•Create a publish method that ‘puts’ all your blog posts. Would that be a class or instance method?
•Maybe your blog posts should have authors?
•Hmm, shouldn’t you be practicing inheritance? Let’s add a page object to this blog. How is it different than a blog post? How is it similar?
=end

class Post

@@all_posts = Hash.new

def initialize(title, content, author, created_at)
	@title = title
	@content = content
	@created_at = created_at
	@author = author
	@@all_posts.store(@title, {"created_at" => @created_at, "content" => @content, "author" => @author})

end

def print_post_to_hash
	@post_hash = {@title => {"created_at" => @created_at, "content" => @content, "author" => @author}}
	return @post_hash
end

def self.publish_all
	puts "All posts are:"
	@@all_posts.sort_by { |k, v| v["created_at"]} .each do |p|
		puts p
	end
end

end

class Page < Post
	def number_of_columns=(number_of_columns)
		@number_of_columns = number_of_columns
	end
end

Post.new("First post", "The content of the first post", "Nataly","2015-04-21 16:43:43")
Post.new("Third post", "The content of the third post", "Nataly","2015-04-21 16:43:45")
Post.new("Second post", "The content of the second post", "Nataly","2015-04-21 16:43:44")
puts "Post.inspect" + Post.inspect
Post.publish_all

puts "\nThe page challenge: "
p = Page.new("Page_title", "The content of the first page", "Nataly", "2015-04-21 16:43:55")
p.number_of_columns = 5
puts p.inspect