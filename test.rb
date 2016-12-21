class WordReplacer
  attr_accessor :name, :gender, :date

  def initialize(content)
    @content = content
  end

  # def replace_name(new_name)
  #   @content.gsub!('NAME', new_name)
  # end

  # def replace_gender(new_gender)
  #   @content.gsub!('GENDER', new_gender)
  # end

  # def replace_date(new_date)
  #   @content.gsub!('DATE', new_date)
  # end

  def replace_word(old_word, new_word)
    @content.gsub!(old_word, new_word)
  end

  def content
    @content
  end

  def method_missing(name, *args)
    name = name.to_s
    puts "method_missing applied."
    if name =~ /^replace_\w+/
      method_name = name.split('_')
      replace_word(method_name[1].upcase, args.first)
    else
      return
    end
  end


end

w = WordReplacer.new("hello NAME, are you a GENDER? on DATE")
w.replace_name("Enoch Ko")
w.replace_gender("Male")
w.replace_date("Yesterday")
puts w.content
