people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?
puts "All people, excluding children: "
people.each do |name, info|
  puts name
end

# * What are the names of all the people?
puts "All people, includng children: "
people.each do |name, info|
  if info["children"].nil?
    puts "#{name}"
  else
    puts "#{name}"
    puts "children: #{info["children"].join(", ")}"
  end
end

# * What is the phone number of Alia O'Conner PhD?
puts "Dr. Alia O'Connor's phone number is #{people["Alia O'Conner PhD"]["phone"]}"

# * How many children does Brian Heller have?
child_count= 0
if !people["Brian Heller"]["children"].nil?
  child_count += 1
end
puts "Brian Heller has #{child_count} child."

# * What company does Dr. Adela DuBuque work for?
puts "Dr. Adela DuBuque works for #{people["Dr. Adela DuBuque"]["company"]}"

# * What are the names of the people who have children?
people.each do |name, info|
  if !info["children"].nil?
    puts "#{name} has children."
  end
end

# * What are the names of the people who do not have children?
people.each do |name, info|
  if info["children"].nil?
    puts "#{name} has no children."
  end
end

# * What is Brian Heller's child's name?
puts "Brian Heller's child is #{people["Brian Heller"]["children"].join}."

# * What is Maryse Johns' first child's name?
puts "Maryse Johns' first child is #{people["Maryse Johns"]["children"][0]}"

# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
people["Dr. Adela DuBuque"]["children"]= "Tomas"
puts "Dr. DuBuque just had a baby named #{people["Dr. Adela DuBuque"]["children"]}!"
puts "==========================="



sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?
puts "The first set of data has #{sets_of_people[0].keys.size} people."

# * How many people are in the second set of people?
puts "The second set of data has #{sets_of_people[1].keys.size} people."

# * What is Ruby Hessel's phone number?
puts "Ruby Hessel's number is #{sets_of_people[0]["Ruby Hessel"]["phone"]}."

# * What are the names of Dr. Sigrid Nader's children?
puts "Dr. Nadar's children are: #{sets_of_people[1]["Dr. Sigrid Nader"]["children"].join(", ")}"

# * What is Bernard Feil's child's name?
puts "Bernard Feil's child's name is #{sets_of_people[0]["Bernard Feil"]["children"].join}."

# * What company does Casandra Kemmer work for?
puts "Casandra Kemmer works for #{sets_of_people[0]["Casandra Kemmer"]["company"]}."

# * Who are all the people in the first set that have an `m` in their Company names?
sets_of_people[0].each do |name, info|
  info["company"] = info["company"].gsub(",", "")
  info["company"] = info["company"].downcase.split('')
end

puts "'m' is included in their company names:"
sets_of_people[0].each do |name, info|
  if info["company"].include? ("m")
    puts "* #{name}"
  end
end
