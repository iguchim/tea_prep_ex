# Once you have that, use it to word-by-word reverse the following string:
# statement = "Herman Munster is a BIG BIG man."
# should become: "namreH retsnuM si a GIB GIB nam."

class String
  def map_words!
   punctuation = self.match(/\p{Punct}$/)[0] || ''
   words = self.split(/\W/)
   words.map! { |word| yield word }
   self.replace(words.join(' ') + punctuation)
  end
end

   statement.map_words! { |word| word.reverse }
