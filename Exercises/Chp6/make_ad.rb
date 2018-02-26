
#We'll call this method below, to find adjeties within each review
def find_adjective(string) #Break the string into an array of words
  words = string.split(" ") #Find the index of hte word "is"
  index = words.find_index("is") #Return the word following "is"
  words[index +1 ]
end

#Create this variable outside the block
lines = [] #Open the file and automatically close it when we're done
File.open("reviews.txt") do |review_file| #Open the file and automatically close it when we're done
  lines = review_file.readlines # Read every line in the file into an array
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") } #Find lines that include the movie name.
reviews = relevant_lines.reject { |line| line.include?("--") } #Exclude reivewer bylines

adjectives = reviews.map do |review| #Process each review
  adjective = find_adjective(review) #Find the adjective
  "'#{adjective.capitalize}'" #Return the adjective, capitalized and surroneded by quotes
end

puts "The critics agress, Truncated is:"
puts adjectives