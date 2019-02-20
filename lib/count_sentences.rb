require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"

  end

  def count_sentences
    i=0
    self.split.each do |string|
      if string.include?("?") || string.include?(".") || string.include?("!")
        i+=1
      end
    end
    i
  end
end