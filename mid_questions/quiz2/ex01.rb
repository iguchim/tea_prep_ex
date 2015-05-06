munsters = {
         "Herman" => { "age" => 32, "gender" => "male" },
         "Lily" => { "age" => 30, "gender" => "female" },
         "Grandpa" => { "age" => 402, "gender" => "male" },
         "Eddie" => { "age" => 10, "gender" => "male" }
}

# Figure out the total age of just the male members of the family.

total_male_age = 0
munsters.each do |key, value|
 male_family_member = value["gender"] == "male"
 total_male_age += male_family_member ? value["age"] : 0
end