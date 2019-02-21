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
    sentence_array = self.split(/[?.!]/)
    new_sentence_array = sentence_array.reject do |sentence|
      sentence.empty?
    end
    new_sentence_array.length
  end
end
