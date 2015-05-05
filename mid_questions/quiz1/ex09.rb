# One of the more frequent issues we run into when designing an application is a shortage of screen real-estate. We often find it necessary to show an abbreviated form of a long text field. Following tradition, this is typically done by chopping off the end of the string and punctuating it with an "ellipsis" (also known as a "three dot", "..." ).
# Add a method to the Ruby String class that will take an input parameter and apply this form of shortening and return a shortened string with an ellipsis (but only when the string is too long to start with.)
# Once you have that done, use it to print out a table of this list of characters with no field larger than 32 characters in width.

characters = [
       { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume
       { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and som
       { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal frie
       { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providin
       ]

class String
  def short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      result = result[0, length - 1]
      result += "..."
    end
result
end
end