
class MethodBuilder
  def self.new_class_method(method_name)
    code_to_evaluate = %Q{
      def self.#{method_name}
        puts "Hello world!"
      end
    }
    class_eval(code_to_evaluate)
  end
  
  def self.new_instance_method(method_name)
    define_method(method_name) do 
      puts "hi"
    end
  end
end

MethodBuilder.new_class_method(:say_hello_world)

MethodBuilder.say_hello_world


MethodBuilder.new_instance_method(:say_hi)
m = MethodBuilder.new
m.say_hi