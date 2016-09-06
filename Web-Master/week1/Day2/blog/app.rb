require 'colorize'

class Blog
    def initialize
        @posts = []
    end

    def add_post(post)
        @posts.push(post)
    end
    
  def publish_page(page_number)
        start_post = (page_number - 1) * 3
        end_post = 0
        if start_post + 2 < @posts.length - 1
            end_post = start_post + 2
        else
            end_post = @posts.length - 1
        end
        @posts.sort! {|post1, post2| post2.date <=> post1.date}
        (start_post..end_post).each do |i|
            @posts[i].post_printer
        end
        if page_number == 1
            puts "*1* 2"
        elsif page_number == self.number_of_pages
            puts "#{page_number - 1} *#{page_number}*"
        else
            puts "#{page_number - 1} *#{page_number}* #{page_number + 1}"
        end
    end

    def number_of_pages
        (@posts.length / 3.0).ceil
    end
end



class Post
    attr_accessor :title, :date, :text
    def initialize(title, date,text)
        @title = title
        @date = date
        @text = text
    end
    def post_printer
        puts @title
        puts "**************"
        puts @text
        puts "----------------"
    end
end

class SponsoredPost < Post
    def post_printer
        puts "******#{@title}******"
        puts "**************"
        puts @text
        puts "----------------"
    end
end



blog = Blog.new

text1 = "This is text number 1".colorize(:yellow)

text2 = "This is text number 2".colorize(:yellow)

text3 = "This is text number 3".colorize(:yellow)

text4 = "This is text number 4.".colorize(:blue)

text5 = "This is text number 5".colorize(:blue)

text6 = "This is text number 6".colorize(:blue)

text7 = "This is text number 7".colorize(:white)

text8 = "This is text number 8".colorize(:white)

post1 = Post.new("Title 1", "2016-03-22", text1)

post2 = SponsoredPost.new("Title 2", "2016-04-29", text2)

post3 = Post.new("Title 3", "2016-01-05", text3)

post4 = Post.new("Title 4", "2015-06-30", text4)

post5 = Post.new("Title 5", "2014-01-28", text5)

post6 = SponsoredPost.new("Title 6", "2016-03-27", text6)

post7 = Post.new("Title 7", "2013-010-28", text7)

post8 = Post.new("Title 8", "2016-4-21", text8)


blog.add_post(post1)
blog.add_post(post3)
blog.add_post(post2)
blog.add_post(post5)
blog.add_post(post4)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)

page = 1
while (page != "q")
    blog.publish_page(page)
    puts "There are #{blog.number_of_pages} pages. Would you like to publish the next page(n) or the previous(p) page or quit(q)?"
    input = gets.chomp
    if input == "n"
        page += 1
    elsif input == "p"
        page -= 1
    else page = "q"
    end
end
