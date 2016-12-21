class WordReplacer
  attr_accessor :name, :gender, :date

  def initialize(content)
    @content = content
  end

  def replace_name(new_name)
    @content.gsub!('NAME', new_name)
  end

  def replace_gender(new_gender)
    @content.gsub!('GENDER', new_gender)
  end

  def replace_date(new_date)
    @content.gsub!('DATE', new_date)
  end

  def content
    @content
  end

end

w = WordReplacer.new("hello NAME, are you a GENDER? on DATE")
w.replace_name("Enoch Ko")
w.replace_gender("Male")
w.replace_date("yesterday")
puts w.content
