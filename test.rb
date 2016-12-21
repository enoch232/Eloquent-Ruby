class WordDocument
  attr_accessor :title, :author

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def content
    @content
  end

  def +(other)
    return self.content + other.content
  end

end

class String
  remove_method :+

end

first = WordDocument.new("First post","Enoch Ko", "This is a first post. ")
second = WordDocument.new("Second post", "Jaemin Ko", "This is a second post. ")

puts first + second

puts "Hello" + " World"