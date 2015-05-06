# Augment the following hash such that it has additional key value pairs that can act as a "sort index" which will allow us to quickly re-arrange a list of our family members as either sorted by name-length or sorted by their original order as shown here:
munsters = {
   "Herman" => { "age" => 32, "gender" => "male" },
   "Lily" => { "age" => 30, "gender" => "female" },
   "Grandpa" => { "age" => 402, "gender" => "male" },
   "Eddie" => { "age" => 10, "gender" => "male" }
}

index = 0
 munsters = munsters.each{ |key, value| value[:original_order] = index; index += 1 }
 munsters = munsters.each{ |key, value| value[:length_order] = key.length }
