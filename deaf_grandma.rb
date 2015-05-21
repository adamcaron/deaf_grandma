counter = 0
ready_to_quit = false

puts "HEY KID!"

input = gets.chomp
until ready_to_quit

  if input.empty?
    puts "WHAT?!"
    input = gets.chomp

  elsif input == "GOODBYE!"
    counter += 1
    if counter == 1
      puts "LEAVING SO SOON?"
      input = gets.chomp
    else
      ready_to_quit = true
    end

  elsif input == input.downcase || input.capitalize
    puts "SPEAK UP KID!"
    input = gets.chomp

  elsif input == input.upcase
    puts "NO, NOT SINCE 1946!"
    input = gets.chomp
  end
end

puts "LATER, SKATER!"