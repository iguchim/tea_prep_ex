# Create a hash that expresses the frequency with which each letter occurs in this string:
#     statement = "The Flintstones Rock"
# ex:
#     { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
result = {}
letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
letters.each do |letter|
  count = statement.scan(letter.to_s).count
  result[letter] = count if count > 0
end
