# Augment the following hash such that it has additional key value pairs giving us a "demographic" key that has one of three values describing the age group the family member is in (kid, adult, senior):
     munsters = {
         "Herman" => { "age" => 32, "gender" => "male" },
         "Lily" => { "age" => 30, "gender" => "female" },
         "Grandpa" => { "age" => 402, "gender" => "male" },
         "Eddie" => { "age" => 10, "gender" => "male" },
         "Marilyn" => { "age" => 23, "gender" => "female"}
}

age_of_majority = 18
     dotage = 65
     munsters.each do |key, value|
       value[:demographics] = "kid" if value["age"] < age_of_majority
       value[:demographics] = "adult" if (age_of_majority..dotage).include?(value["age"])
       value[:demographics] = "senior" if value["age"] >= dotage
end