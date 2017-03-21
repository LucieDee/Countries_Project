require_relative("countries_data")
require_relative("country_functions")

puts "Welcome to the countries appliction"
while true
  puts "What would you like to do?"

  puts "Options:"
  puts "  q: exit"
  puts "  1: see list of countries"
  puts "  2: Choose a random country by continent!"


  choice = gets.chomp
  case choice
  when "q"
    puts "See you later"
    break
  when "1"
    puts "Country Names:"
    puts country_names(COUNTRIES)
  when "2"
    puts "Choose one continent! 1: Asia, 2: Europe, 3: Africa, 4: Oceania, 5: Americas"
    continent_choice = gets.chomp()
    if continent_choice == "1"
      puts get_random_country(COUNTRIES, "Asia")
    elsif continent_choice == "2"
      puts get_random_country(COUNTRIES, "Europe")
    elsif continent_choice == "3"
      puts get_random_country(COUNTRIES, "Africa")
    elsif continent_choice == "4"
      puts get_random_country(COUNTRIES, "Oceania")
    elsif continent_choice == "5"
      puts get_random_country(COUNTRIES, "Americas")
    end
  end
  puts "\n\n"


# elsif choice == "4"




end
