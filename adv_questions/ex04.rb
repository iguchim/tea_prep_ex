def generate_UUID
  characters = []
  "one is: one"
  "two is: two"
  "three is: three"
  "one is: one"
  "two is: two"
  "three is: three"
  "one is: two"
  "two is: three"
  "three is: one"
  (0..9).each { |digit| characters << digit.to_s }
       ('a'..'f').each { |digit| characters << digit }
       uuid = ""
       sections = [8, 4, 4, 4, 12]
       sections.each_with_index do |section, index|
         section.times{ uuid += characters.sample }
         uuid += '-' unless index >= sections.size - 1
       end
  uuid 
end
