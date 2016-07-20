# Homework

# A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# Work out how many stops there are in the current west array
lines.count

# Return 'Edinburgh Park' from the array
lines[1]

# How many ways can we return 'Princes Street' from the array?
lines[4]
lines.last
lines [-1]

# Work out the index position of 'Haymarket'
lines.index('Haymarket') 

# Add 'Airport' to the start of the array
lines.unshift('Airport')
puts lines


# Add 'York Place' to the end of the array
lines << 'York Place'
lines.push'York Place'

# Remove 'Edinburgh Park' from the array using it's name
lines.delete('Edinburgh Park')

# Delete 'Edinburgh Park' from the array by index
lines.delete_at(1)

# Reverse the positions of the stops in the array
lines.reverse

 # Print out all of the stops using a for loop and a while loop
for station in lines
  puts station
end

counter = 0
while counter < lines.count
  puts lines[counter]
  counter += 1
end


# B. Given the following data structure:

#   my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?
my_hash[1]

# How would you return the string "Two"?
my_hash[:two]

# How would you return the number 2?
my_hash["two"]

# How would you add {3 => "Three"} to the hash?
my_hash[3] = "Three"

# How would you add {:four => 4} to the hash?
my_hash[:four] = 4


# C. Given the following data structure:

#   users = {
#     "Jonathan" => {
#       :twitter => "jonnyt",
#       :favourite_numbers => [12, 42, 75, 12, 5],
#       :home_town => "Stirling",
#       :pets => {
#         "fluffy" => :cat,
#         "fido" => :dog,
#         "spike" => :dog
#       }
#     },
#     "Erik" => {
#       :twitter => "eriksf",
#       :favourite_numbers => [8, 12, 24],
#       :home_town => "Linithgow",
#       :pets => {
#         "nemo" => :fish,
#         "kevin" => :fish,
#         "spike" => :dog,
#         "rupert" => :parrot
#       }
#     },
#     "Avril" => {
#       :twitter => "bridgpally",
#       :favourite_numbers => [12, 14, 85, 88],
#       :home_town => "Dunbar",
#       :pets => {
#         "colin" => :snake
#       }
#     },
#   }
# Return Jonathan's Twitter handle (i.e. the string "jonnyt")
users["Jonathan"][:twitter]
# Return Erik's hometown
users["Erik"][:home_town]
# Return the array of Erik's favorite numbers
users["Erik"][:favourite_numbers]
# Return the type of Avril's pet Colin
users["Avril"][:pets]["colin"]
# Return the smallest of Erik's favorite numbers
favourite_numbers_sorted = users["Erik"][:favourite_numbers].sort
favourite_numbers_sorted[0]

# or
users["Erik"][:favourite_numbers].sort.first

# Return an array of Avril's favorite numbers that are even
def find_even_numbers(array)
  even_numbers = []
  for number in array
    if (number % 2 == 0)
      even_numbers.push(number)
    end
  end
  puts even_numbers
end

find_even_numbers(users["Avril"][:favourite_numbers])

# Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
users["Jonathan"][:favourite_numbers].sort.uniq


# Add the number 7 to Erik's favorite numbers
users["Erik"][:favourite_numbers].push(7)

# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"


# Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog


# Add yourself to the users hash
users["Katrina"] = {twitter: "katcoutts", favourite_numbers: [3, 9, 27], home_town: "Pontefract", pets:{"michael"=>:fish, "jason" => :fish, "Artoo" => :cat, "Chewie" => :cat}}