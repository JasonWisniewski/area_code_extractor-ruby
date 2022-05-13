dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  cities = somehash.keys
  puts cities
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  puts "do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.upcase
  break if answer == "N"
  
  get_city = get_city_names(dial_book)
  puts get_city
  puts "enter the city you would like to look up"
  city = gets.chomp

  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
    get_area_code(dial_book, city)
  else 
    puts "you enetered an invalid city"
  end

  

# Write your program execution code here
end