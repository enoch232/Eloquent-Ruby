class Checker
  def self.check_version
    if RUBY_VERSION >= '2.3'
  	  puts "THIS IS NEW!"
    else
      puts "THIS IS OLD!"
    end
  end
  self.check_version
end