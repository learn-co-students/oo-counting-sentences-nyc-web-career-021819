require 'pry'

class String

  def sentence?
     self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(/(?<=[?.!])/)
    counter = 0
    array.each do |sentence|
      if sentence != (".") && sentence != ("?") && sentence != ("!")
        counter += 1
      end
    end
    return counter
  end
end
