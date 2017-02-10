#1 array method #keep_if{|item| block } 
#what is %w => %w(foo bar) is a shortcut for ["foo", "bar"]
p 1
p a2 = %w[this is an array of strings] # quicker way to write this  
 
# what is =~? => known as match operator, 

#see also #select ? 

# if no block, Enumerator is returned 


a1 = ["word1", "word2", "word3", "word4", "word5", "another", "one", "two", "bbb"]

p 2
p a1.keep_if{|item| item =~ /word/ }  # +> the first 5 elements that have word

# if you want the opposite use #reject
p 3
a2 = ["word1", "word2", "word3", "word4", "word5", "another", "one", "two", "bbb"]
p a2.reject{|item| item =~ /word/} 
p 4
a3 = ["word1", "word2", "word3", "word4", "word5", "another", "one", "two", "bbb"]
p a3.delete_if{|item| item =~ /word/ } 

