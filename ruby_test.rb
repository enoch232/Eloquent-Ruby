def with_log(description)
  puts "starting #{description}"
  yield
  puts "completed #{description}"
end

with_log("run hello world"){puts "hello world"}

require 'benchmark'
def measure_time(description)
  puts "Starting #{description}"
  result = nil
  time = Benchmark.measure{result = yield block_given? || "Hello"}
  puts "Completed #{description} in #{time}"
  result
end

# measure_time("say hello world") do
#  10000000.times do
#  	4 * 3 + 2
#  end
# end
measure_time("cool")


def save_block(&block)
  puts "save block"
  array = []
  array[0] = block
  array[0].call 
end

def block_to_call
  puts "block to call"
  yield
end

block_to_call { puts "hello world"}
save_block{block_to_call}




class Document
  attr_accessor :title, :content_to_call
  def initialize(title, &block)
  	@title = title
  	@content_to_call = block
  end
  def content
  	@content = @content_to_call.call
  	@content
  end
end

doc = Document.new("First title") do 
  "this is cool"
end
puts doc.title
puts doc.content_to_call.call


anonymous = lambda { |argu |puts argu}


def method_to_call(&block)
  puts "inside method_to_call"
  block.call
end
method_to_call {anonymous.call("hello")}


def method_to_call(&block)
  block.call
  big_array = nil
end

big_array = [1,2,3,4]

method_to_call {puts big_array[3]}
method_to_call {puts big_array[3]}

def it(description, &block)
  puts "running #{description}"
  block.call
end


it "run hello world" do
  puts "hello world"
end

class SimpleBaseClass
  def self.inherited( new_subclass )
    puts "Hey #{new_subclass} is now a subclass of #{self}!"
  end
end

class ChildClassOne < SimpleBaseClass
end

  def self.extended(klass)
  	puts "its included in #{klass}"
  end

  def self.say_hello
  	puts "hello world!"
  end
end

class Hello
  extend HelloModule
  # HelloModule::include("Hi	")
end

class ParentClass
  # def text
  # 	puts "this is parent's text"
  # end
end

class ChildClass < ParentClass
  def content
  	puts "this is Child's content"
  end
  def method_missing(method_name, *arguments)
    puts "there is no #{method_name} with arguments of #{arguments.join(", ")} in ChildClass"
  end

end

c = ChildClass.new
c.text 3 ,4 