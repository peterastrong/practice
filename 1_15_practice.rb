#1 can be divided evenly by 4 

array1 = [2, 46, 57, 36, 375, 75, 99, 808, 1000, 44, 57, 37, 49 , 40, 404]
array2 = []
array1.each do |number|
  
  if number%4 == 0
    array2 << number
  end 
end 

#2Give an array of hashes, add a key/value to each hash

array3 =[
        {first_name: "peter", last_name: "strong"},
        {first_name: "joe", last_name: "smith"}      
]

array3.each do |item|
  item["email"] = "#{item[:first_name]}#{item[:last_name]}@myemail.com"
end


# p array3

#3 Given an array of names, create a new array where no names start with "b"

names = ["bill", "joe", "bob", "sean", "will", "ben", "al"]
names2 = []
names.each do |name|
  if name.start_with?("b") == true
    names2 << name 
  end 
end 

# p names2
#dryer way?
names3 = ["bill", "joe", "bob", "sean", "will", "ben", "al"]

names3.delete_if {|name| name.start_with?("b") != true }

# p names3

#4 Given the array ["Alphabet", "aardvark", "anarchy", "purple", "apple", "avalanche", "potato"], find the word with the most "a"'s

words = ["Alphabet", "aardvark", "anarchy", "purple", "apple", "avalanche", "potato"]

words.sort_by! {|word| word.count("a")}

p "The word with the most a's in this set is #{words[-1]} with #{words[-1].count("a")} a's."




