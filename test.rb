class ClassChangeNotifier
  def self.reload
  	sleep 1
    remove_instance_methods
    load( __FILE__ )
  end
  def self.remove_instance_methods
    instance_methods(false).each do |method|
      remove_method(method)
    end
  end

  def self.old_method
    puts "This is an old method"
  end
end
class ClassChangeNotifier

  def self.old_method
    puts "This is a new method"
  end
end


ClassChangeNotifier.old_method

ClassChangeNotifier.reload
