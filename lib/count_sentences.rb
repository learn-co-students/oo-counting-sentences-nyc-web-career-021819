# String
#   #sentence?
#     returns true if the string that you are calling this method on ends in a period. (FAILED - 1)
#     returns false if the string that you are calling this method on does NOT end in a period. (FAILED - 2)
#   #question?
#     returns true if the string that you are calling this method on ends in a question mark. (FAILED - 3)
#     returns false if the string that you are calling this method on does NOT end in question mark. (FAILED - 4)
#   #exclamation?
#     returns true if the string that you are calling this method on ends in an exclamation mark (FAILED - 5)
#     returns false if the string that you are calling this method on does NOT end in a exclamation mark. (FAILED - 6)
#   #count_sentences
#     returns the number of sentences in a string (FAILED - 7)
#     returns zero if there are no sentences in a string (FAILED - 8)
#     returns the number of sentences in a complex string (FAILED - 9)

require 'pry'

class String

  def sentence?
    if self[-1] == "." 
      true 
    else 
      false 
    end
  end

  def question?
    if self[-1] == "?" 
      true 
    else 
      false 
    end
  end

  def exclamation?
    if self[-1] == "!" 
      true 
    else 
      false 
    end
  end

  def count_sentences
    sent_count = 0
    self_a = self.split("")
    self_a.each_with_index do |char, n|
      if char == "." && self_a[n+1] != "."
        sent_count += 1
      elsif char == "?" && self_a[n+1] != "?"
        sent_count += 1
      elsif char == "!" && self_a[n+1] != "!"
        sent_count += 1
      end
    end
    sent_count
  end
end