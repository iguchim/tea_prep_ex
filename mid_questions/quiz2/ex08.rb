# In a previous exercise we created a monkey patch for the Ruby String class which could be used to get a shortened version of the string. That solution uncerimoniously lopped off the end of the string at a specific character count. That works, but it can be ugly when it cuts a word down the middle.
# Write a new patch called pretty_short_version which will return a string that ends on a word boundary and is never longer than the length parameter.
# If the first word is too long, the solution should fall back to just shortening the first word. Don't forget to leave room for and append the ellipsis at the end.

class String
  def pretty_short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
     length -= 1   # leave room for ellipsis
     words = result.split
     result = words.shift
     result = result[0, length] if result.length > length
     result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
     result += "..."
    end
    result 
  end
end